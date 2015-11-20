require 'json'

module NovacastSDK
  class BaseModel
    def self.api_model_module
      NovacastSDK
    end

    def self.model_properties
      {}
    end

    def initialize(obj)
      build_object obj
    end

    #
    # Serialization
    #

    def to_json(opts = {})
      to_hash.to_json
    end

    def to_hash
      hash = {}
      self.class.model_properties.each_pair do |key, definition|
        value = self.send(definition[:base_name])
        next if value.nil?

        if value.is_a?(Array)
          hash[key] = value.compact.map{ |v| _to_hash(v) }
        else
          hash[key] = _to_hash(value)
        end
      end
      hash
    end

    def to_s
      to_hash.to_s
    end

    def self.from_json(json)
      hash = JSON.parse json
      self.new hash
    end

    private

    def build_object(obj)
      is_hash = obj.is_a?(Hash)

      self.class.model_properties.each_pair do |key, definition|
        type      = definition[:type]
        base_name = definition[:base_name]

        prop_value = is_hash ? (obj[base_name.to_sym] || obj[base_name]) : obj.send(base_name)

        if type =~ /^Array\[(.*)\]/i
          if prop_value.is_a?(Array)
            self.send "#{base_name}=", prop_value.map{ |v| _deserialize($1, v) }
          else
            # property is not an array
          end
        elsif !prop_value.nil?
          self.send "#{base_name}=", _deserialize(type, prop_value)
        else
          # property not found on object
        end
      end
    end

    def _deserialize(type, value)
      case type.to_sym
        when :DateTime
          value.is_a?(DateTime) ? value : DateTime.parse(value)
        when :Date
          value.is_a?(Date) ? value : Date.parse(value)
        when :String
          value.to_s
        when :Integer
          value.to_i
        when :Float
          value.to_f
        when :BOOLEAN
          if value === true || value =~ /^(true|t|yes|y|1)$/i
            true
          else
            false
          end
        else # model
          model = self.class.api_model_module.const_get(type).new
          model.new value
      end
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end