require 'json'
require 'novacast-sdk-core/model_serializer'

module NovacastSDK
  class BaseModel
    def self.api_model_module
      NovacastSDK
    end

    #
    # Class Methods
    #

    def self.model_properties
      {}
    end

    def self.serializer=(serializer_klass)
      raise ArgumentError, 'serializer class must be child class of Novacast::ModelSerializer' unless serializer_klass < NovacastSDK::ModelSerializer
      @serializer_klass = serializer_klass
    end

    def self.serializer
      @serializer_klass
    end

    #
    # Instance
    #

    # Creates a new SDK model
    # @param obj the object to create the model from
    # @param [Hash] opts options
    # @option opts [Class] :serializer the serializer class
    def initialize(obj, opts = {})
      self.inst_serializer = opts[:serializer] if opts[:serializer]
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
      obj = _to_serializer obj

      self.class.model_properties.each_pair do |key, definition|
        type      = definition[:type]
        base_name = definition[:base_name]

        prop_value = obj.send base_name

        if type =~ /^Array\[(.*)\]/i
          if prop_value.is_a?(Array)
            self.send "#{base_name}=", prop_value.map{ |v| _deserialize($1, v) }
          elsif prop_value.respond_to?(:each)
            # property is not an array, but responds to :each
            arr_values = []
            prop_value.each { |v| arr_values << _deserialize($1, v) }
            self.send "#{base_name}=", arr_values
          else
            raise "property value is not an array for '#{base_name}'"
          end
        elsif !prop_value.nil?
          self.send "#{base_name}=", _deserialize(type, prop_value)
        else
          # property not found on object
        end
      end
    end

    def _to_serializer(obj)
      klass = NovacastSDK::ModelSerializer

      # There are three places that a serializer can be specified, and they are resolved with the priority below (from top to bottom):
      # 1. :serializer option when instantiating the model (i.e. NovacastSDK::BaseModel#new)
      # 2. A subclass with the name 'ModelSerializer' within the target object's class
      # 3. Setting the serializer on the model class (i.e. NovacastSDK::BaseModel::serializer=)
      if @inst_serializer
        klass = @inst_serializer
      elsif obj.class.const_defined?(:ModelSerializer) && (serializer = obj.class.const_get(:ModelSerializer)) < NovacastSDK::ModelSerializer
        klass = serializer
      elsif (serializer = self.class.serializer)
        klass = serializer
      end

      klass.new(obj)
    end

    def _deserialize(type, value)
      case type.to_sym
        when :DateTime
          if value.is_a?(DateTime)
            value
          elsif value.is_a?(Integer) || value.respond_to?(:to_i)
            Time.at(value.to_i).to_datetime
          elsif value.is_a?(String)
            DateTime.parse(value)
          else
            raise "cannot deserialize '#{value}' into a DateTime property"
          end
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
          model = self.class.api_model_module.const_get(type)
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

    private

    def inst_serializer=(klass)
      raise ArgumentError, 'serializer class must be child class of Novacast::ModelSerializer' unless klass < NovacastSDK::ModelSerializer
      @inst_serializer = klass
    end
  end
end