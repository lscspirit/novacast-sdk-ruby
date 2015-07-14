module Novacast
  module API
    module EventV1
      module Resources
        #
        # Channel Resources
        #

        class Channel < Novacast::SDK::JsonRepresentation
          property :uid
          property :name
        end

        #
        # Event Resources
        #

        class Event < Novacast::SDK::JsonRepresentation
          property :uid
          property :name
        end

        class EventList < Novacast::SDK::JsonRepresentation
          collection :events, decorator: Event
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

        #
        # Asset Resources
        #

        class AssetBundle < Novacast::SDK::JsonRepresentation
          property :uid
          property :label
        end

        class BundleContent < Novacast::SDK::JsonRepresentation
          property :file_path
          property :url
        end

        class AssetBundleList < Novacast::SDK::JsonRepresentation
          collection :asset_bundles, decorator: AssetBundle
        end

        class AssetBundleWithContents < AssetBundle
          collection :bundle_contents, decorator: BundleContent
        end

        #
        # Remote Resources
        #

        class PreSignedUpload < Novacast::SDK::JsonRepresentation
          property :url
          property :fields
          property :callback_data
        end

        #
        # Slide Resources
        #

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