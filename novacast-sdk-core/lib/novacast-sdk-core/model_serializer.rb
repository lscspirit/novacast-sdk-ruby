module NovacastSDK
  # Class for serializing a object's attributes
  #
  # @example
  #   user = Account.new name: 'John', email: 'john@email.com'
  #   user.name  #=> 'John'
  #   user.email #=> 'john@email.com'
  #
  #   serializer = ModelSerializer.new user
  #   serializer.name  #=> 'John'
  #   serializer.email #=> 'john@email.com'
  #
  #   serializer = ModelSerializer.new user, name: 'Jane'
  #   serializer.name  #=> 'Jane'
  #   serializer.email #=> 'john@email.com'
  class ModelSerializer
    def initialize(obj, opts = {})
      @opts    = opts       # this options is used by child class
      @model   = obj
      @is_hash = obj.is_a?(Hash)
    end

    def method_missing(method, *args, &block)
      if @opts && @opts.has_key?(method)
        @opts[method]
      elsif @is_hash && _indifferent_hash_has_key?(method)
        _indifferent_hash_get method
      elsif @model.respond_to? method
        @model.send method, *args, &block
      else
        raise RuntimeError, "invalid attribute '#{method}' on model"
      end
    end

    def respond_to_missing?(method, *)
      if @is_hash && _indifferent_hash_has_key?(method)
        # returns true if the hash has the key
        true
      elsif @model.respond_to? method
        # the model has the property
        true
      elsif
        false
      end
    end

    def [](attr)
      self.send attr
    end

    private

    def _indifferent_hash_has_key?(key)
      @model.has_key?(key.to_sym) || @model.has_key?(key.to_s)
    end

    def _indifferent_hash_get(key)
      @model[key.to_sym] || @model[key.to_s]
    end
  end
end