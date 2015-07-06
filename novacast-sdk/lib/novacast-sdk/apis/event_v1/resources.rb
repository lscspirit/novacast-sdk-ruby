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

        class EventSession < Novacast::SDK::JsonRepresentation
          property :uid
          property :label

          property :event_uid,  exec_context: :decorator
          property :event_name, exec_context: :decorator

          def event_uid
            represented.event.uid
          end

          def event_uid=(val)
            if represented.event
              represented.event.uid = val
            else
              represented.event_uid = val
            end
          end

          def event_name
            represented.event.name
          end

          def event_name=(val)
            if represented.event
              represented.event.name = val
            else
              represented.event_name = val
            end
          end
        end

        class Slide < Novacast::SDK::JsonRepresentation
          property :uid
          property :page
          property :url
          property :thumb_url
        end
      end
    end
  end
end