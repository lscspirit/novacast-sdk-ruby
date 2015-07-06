module Novacast
  module API
    module EventV1
      module Resources
        class Event < Novacast::SDK::JsonRepresentation
          property :uid
          property :name
        end

        class EventContent < Novacast::SDK::JsonRepresentation
          property :type
          property :value
        end

        class PageRuntime < Novacast::SDK::JsonRepresentation
          property :runtime
        end
      end
    end
  end
end