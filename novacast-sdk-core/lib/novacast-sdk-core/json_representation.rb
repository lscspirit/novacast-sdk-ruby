require 'representable/json'
require 'representable/json/hash'
require 'representable/json/collection'
require 'representable/hash'
require 'representable/coercion'

module Novacast
  module SDK
    class JsonRepresentation < Representable::Decorator
      include Representable::JSON
      include Representable::Hash
      include Representable::Hash::AllowSymbols
      include Representable::Coercion

      # Overrides Representable::Decorator constructor to allow Hash to be
      # automatically converted to OpenStruct object
      def initialize(represented)
        if represented.is_a?(::Hash)
          super OpenStruct.new(represented)
        else
          super
        end
      end
    end
  end
end