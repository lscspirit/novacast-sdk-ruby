module NovacastSDK
  module Utils
    # Determines if the target object match the specification of the provider type
    #
    # @param target [*] target to check against
    # @param type_name [String] name of the expected type
    #
    # @yield [String] block to lookup model properties
    # @yieldparam  [String] name of the model
    # @yieldreturn [Hash]   a hash that describe the model properties
    #
    # @return [Symbol, Object, nil] nil if type matches; otherwise a structure describing the error
    def self.type_check(target, type_name, &block)
      type_name = type_name.to_sym

      case type_name
        when :DateTime, :Date, :String, :Integer, :Float, :BOOLEAN
          primitive_check(target, type_name) ? nil : :invalid_type
        when /^Array\[(.*)\]/i
          if target.is_a?(Array)
            has_error = false
            diff_results = target.map do |i|
              diff = type_check(i, $1, &block)
              has_error = true unless diff.nil?
              diff
            end
            has_error ? diff_results : nil
          else
            :invalid_type
          end
        else
          model_check target, type_name, &block
      end
    end

    private

    # Checks the value of primitive types
    #
    # @param value [*] target value to check
    # @param expected_type [Symbol] expected type
    # @return [Boolean] whether the target is of the expected type
    def self.primitive_check(target, expected_type)
      result = case expected_type
                 when :DateTime
                   DateTime.parse target rescue false
                 when :Date
                   Data.parse target rescue false
                 when :String
                   target.is_a?(String)
                 when :Integer
                   Integer(target) rescue false
                 when :Float
                   Float(target) rescue false
                 when :BOOLEAN
                   !!target == target || target =~ /^(true|t|yes|y|1)$/i
                 else
                   false
               end

      !!result
    end

    # Checks all properties of a model type
    #
    # @param target [*] target object to check
    # @param model_name [String] name of the expected model
    #
    # @yield [String] block to lookup model properties
    # @yieldparam  [String] name of the model
    # @yieldreturn [Hash]   a hash that describe the model properties
    #
    # @return [Hash] a hash that describe the diff
    def self.model_check(target, model_name, &block)
      return :invalid_type unless target.is_a? Hash

      # diff result
      diff  = {}

      # gets the model properties through the provided block
      model_props = yield model_name
      raise "Model properties is nil for '#{model_name}'" if model_props.nil?

      target.each do |param, value|
        diff[param.to_sym] = { value: value }
      end

      # loop through all model properties
      model_props.each do |key, definition|
        key_sym = key.to_sym

        if (val_entry = diff[key_sym])
          # property value exists in the target object
          # check the value type
          prop_type = definition[:type].to_sym
          value     = val_entry[:value]

          result = type_check(value, prop_type, &block)
          if result.nil?
            diff.delete key_sym
          else
            diff[key_sym] = { state: :invalid, diff: result }
          end
        elsif !definition[:required]
          diff.delete key_sym
        else
          diff[key_sym] = { state: :not_found }
        end
      end

      diff.each do |key, entry|
        diff[key] = case entry[:state]
                      when :not_found
                        :missing
                      when :invalid
                        entry[:diff]
                      else
                        :not_allowed
                    end
      end

      diff.empty? ? nil : diff
    end
  end
end