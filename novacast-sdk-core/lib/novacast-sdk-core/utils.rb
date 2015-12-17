module NovacastSDK
  module Utils
    # Determines if the target object match the specification of the provider type
    #
    # @param target [*] target to check against
    # @param type_name [String] name of the expected type
    #
    # @yield [String] block to lookup model class
    # @yieldparam  [String] name of the model
    # @yieldreturn [Class]  the model class
    #
    # @return [Symbol, Object, nil] nil if type matches; otherwise a structure describing the error
    def self.type_check(target, type_name, &block)
      type_name_sym = type_name.to_sym

      case type_name_sym
        when :DateTime, :Date, :String, :Integer, :Float, :BOOLEAN
          primitive_check(target, type_name_sym) ? nil : :invalid_type
        when :Object
          target.nil? ? :invalid_type : nil
        when /^Array\[(.*)\]$/i
          if target.respond_to?(:each)
            has_error = false
            diff_results = []
            target.each do |i|
              diff = type_check(i, $1, &block)
              has_error = true unless diff.nil?
              diff_results << diff
            end
            has_error ? diff_results : nil
          else
            :invalid_type
          end
        when /^Hash\[(.*)(?: ?, ?)(.*)\]$/i
          if target.respond_to?(:each_pair)
            has_error = false
            diff_results = {}
            target.each_pair do |k, v|
              key_diff = type_check(k, $1, &block)
              val_diff = type_check(v, $2, &block)

              if key_diff || val_diff
                has_error = true
                diff_results[k] = { key: key_diff, value: val_diff }
              else
                diff_results[k] = nil
              end
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
    # @yield [String] block to lookup model class
    # @yieldparam  [String] name of the model
    # @yieldreturn [Class]  the model class
    #
    # @return [Hash] a hash that describe the diff
    def self.model_check(target, model_name, &block)
      # diff result
      diff  = {}

      # gets the model class and properties through the provided block
      model_klass = yield model_name.to_s
      raise "Invalid model class for '#{model_name}'" unless model_klass.is_a?(Class) && model_klass < NovacastSDK::BaseModel
      model_props = model_klass.model_properties
      raise "Model properties is nil for '#{model_name}'" if model_props.nil?

      if target.is_a? model_klass
        return target.validate
      elsif !target.is_a?(Hash)
        return :invalid_type
      end

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