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

    def validate
      model_module = self.class.api_model_module
      NovacastSDK::Utils.type_check self.to_hash, self.class.name do |model_name|
        model_module.const_get(model_name)
      end
    end

    def valid?
      diff = self.validate
      diff.nil?
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

        if prop_value.nil?
          # property not found on object; do nothing
        elsif type =~ /^Array\[(.*)\]$/i
          #
          # this property if of the Array type
          #
          if prop_value.is_a?(Array)
            self.send "#{base_name}=", prop_value.map{ |v| self.class._deserialize($1, v) }
          elsif prop_value.respond_to?(:each)
            # property is not an array, but responds to :each
            arr_values = []
            prop_value.each { |v| arr_values << self.class._deserialize($1, v) }
            self.send "#{base_name}=", arr_values
          else
            raise "property value is not an array for '#{base_name}'"
          end
        elsif type =~ /^Hash\[(.*)(?: ?, ?)(.*)\]$/i
          #
          # this property if of the Hash type
          #
          if prop_value.respond_to?(:each_pair)
            hash_values = {}
            prop_value.each_pair do |key, val|
              h_key = self.class._deserialize($1, key)
              h_val = self.class._deserialize($2, val)
              hash_values[h_key] = h_val
            end
            self.send "#{base_name}=", hash_values
          else
            raise "property value is not a Hash for '#{base_name}'"
          end
        else
          #
          # Other property types
          #
          self.send "#{base_name}=", self.class._deserialize(type, prop_value)
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

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    def inst_serializer=(klass)
      raise ArgumentError, 'serializer class must be child class of Novacast::ModelSerializer' unless klass < NovacastSDK::ModelSerializer
      @inst_serializer = klass
    end

    def self._deserialize(type, value)
      return nil if value.nil?

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
        when :Object
          value
        else # model
          model = api_model_module.const_get(type)
          model.new value
      end
    end
  end
end