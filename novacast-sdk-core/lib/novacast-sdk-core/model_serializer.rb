module NovacastSDK
  class ModelSerializer
    def initialize(obj)
      @model   = obj
      @is_hash = obj.is_a?(Hash)
    end

    def method_missing(method, *args, &block)
      if @is_hash
        _indifferent_hash_get method
      elsif self.respond_to? method
        self.send method, *args, &block
      elsif @model.respond_to? method
        @model.send method, *args, &block
      else
        super
      end
    end

    private

    def _indifferent_hash_get(prop)
      @model[prop.to_sym] || @model[prop.to_s]
    end
  end
end