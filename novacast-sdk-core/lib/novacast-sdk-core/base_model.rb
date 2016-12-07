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

    def self.from_json(json)
      hash = JSON.parse json
      self.new hash
    end

    def self.normalize_type(value, type)
      return nil if value.nil?

      if type =~ /^Array\[(.*)\]$/i
        #
        # Array type
        #

        if value.respond_to?(:each)
          arr_vals = []
          value.each { |v| arr_vals << normalize_type(v, $1) }
          return arr_vals
        else
          raise TypeError, 'cannot normalize value into an array'
        end
      elsif type =~ /^Hash\[String(?: ?, ?)(.*)\]$/i
        #
        # Hash type
        #

        if value.respond_to?(:each_pair)
          hash_val = {}
          value.each_pair { |key, val| hash_val[key.to_s] = normalize_type(val, $1) }
          return hash_val
        else
          raise TypeError, 'cannot normalize value into a Hash'
        end
      else
        #
        # Other types
        #

        begin
          return case type.to_sym
                   when :DateTime
                     if value.is_a?(DateTime)
                       value
                     elsif value.is_a?(Integer) || value.respond_to?(:to_i)
                       Time.at(value.to_i).to_datetime
                     else
                       DateTime.parse(value)
                     end
                   when :Date
                     value.is_a?(Date) ? value : Date.parse(value)
                   when :String
                     value.to_s
                   when :Integer
                     Integer(value)
                   when :Float
                     Float(value)
                   when :BOOLEAN
                     if value === true || value =~ /^(true|t|yes|y|1)$/i
                       true
                     elsif value === false || value =~ /^(false|f|no|n|0)$/i
                       false
                     else
                       raise 'invalid boolean value'
                     end
                   when :Object
                     value
                   when :File
                     value.to_s
                   when :Byte
                     value
                   else # model
                     model = api_model_module.const_get(type)
                     model.new value
                 end
        rescue => ex
          raise TypeError, "cannot normalize value into a #{type}: #{ex.message}"
        end
      end
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

      opts_dup = opts.dup
      opts_dup.delete(:serializer)

      build_object obj, opts_dup
    end

    def validate
      model_module = self.class.api_model_module
      NovacastSDK::Utils.type_check self.to_h, self.class.name do |model_name|
        model_module.const_get(model_name)
      end
    end

    def valid?
      diff = self.validate
      diff.nil?
    end

    #
    # Accessor
    #

    def [](attr)
      if self.class.model_properties.any? { |k, prop| prop[:base_name] == attr.to_s }
        self.send attr
      else
        raise UnknownProperty, "Unknown property '#{attr}'"
      end
    end

    #
    # Serialization
    #

    def to_json(opts = {})
      to_h.to_json
    end

    def to_h
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
      to_h.to_s
    end

    private

    def build_object(obj, opts = {})
      obj = _to_serializer obj, opts

      self.class.model_properties.each_pair do |key, definition|
        type      = definition[:type]
        base_name = definition[:base_name]
        required  = definition[:required]

        prop_value = nil
        found = false

        methods = [base_name]
        methods << "#{base_name}?" if type.to_sym == :BOOLEAN

        methods.each do |method|
          if obj.respond_to? method
            prop_value = obj.send method
            found = true
            break
          end
        end

        if found
          self.send "#{base_name}=", self.class.normalize_type(prop_value, type)
        else
          # raises error if the required property is not found in the source object
          raise NovacastSDK::Errors::InvalidArgument, "#{base_name} is missing in the object being serialized" if required
        end
      end
    end

    def _to_serializer(obj, opts = {})
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

      klass.new(obj, opts)
    end

    # Method to output non-array value in the form of hash
    # For object, use to_h. Otherwise, just return the value
    def _to_hash(value)
      if value.respond_to? :to_h
        value.to_h
      else
        value
      end
    end

    def inst_serializer=(klass)
      raise ArgumentError, 'serializer class must be child class of Novacast::ModelSerializer' unless klass < NovacastSDK::ModelSerializer
      @inst_serializer = klass
    end

    #
    # Errors
    #

    class UnknownProperty < StandardError; end
  end
end