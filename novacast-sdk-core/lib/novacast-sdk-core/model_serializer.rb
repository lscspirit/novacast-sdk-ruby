module NovacastSDK
  class ModelSerializer
    def initialize(obj)
      @model   = obj
      @is_hash = obj.is_a?(Hash)
    end

    def method_missing(method, *args, &block)
      if @is_hash
        _indifferent_hash_get method
      elsif @model.respond_to? method
        @model.send method, *args, &block
      else
        super
      end
    end

    def respond_to_missing?(method, *)
      if @is_hash
        # always return true for hash because if the key does not exists,
        # we will simply return nil
        true
      elsif @model.respond_to? method
        # the model has the property
        true
      elsif
        super
      end
    end

    private

    def _indifferent_hash_get(prop)
      @model[prop.to_sym] || @model[prop.to_s]
    end
  end
end