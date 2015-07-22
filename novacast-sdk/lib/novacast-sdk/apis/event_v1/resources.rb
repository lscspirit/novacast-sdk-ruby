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

        class PageContent < Novacast::SDK::JsonRepresentation
          property :locale
          property :content

          property :path, exec_context: :decorator

          def path
            represented.event_page.path
          end

          def path=(val)
            if represented.event_page
              represented.event_page.path = val
            else
              represented.path = val
            end
          end
        end

        class EventPage < Novacast::SDK::JsonRepresentation
          property :path
          property :page_config_json, as: :page_config

          property :session_uid, exec_context: :decorator

          def session_uid
            represented.event_session ? represented.event_session.uid : nil
          end

          def session_uid=(val)
            if represented.event_session
              represented.event_session.uid = val
            else
              represented.event_session_uid = val
            end
          end
        end

        class EventInfo < Novacast::SDK::JsonRepresentation
          property :uid
          property :name
        end

        class PublicAlias < Novacast::SDK::JsonRepresentation
          property :uid
          property :path
          property :event, decorator: EventInfo
        end

        class EventSessionInfo < Novacast::SDK::JsonRepresentation
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

        class EventSession < EventSessionInfo
          property :module_config_json, as: :module_config
        end

        class Event < EventInfo
          collection :event_sessions, decorator: EventSessionInfo
          collection :event_pages,    decorator: EventPage
          collection :public_aliases, decorator: PublicAlias
        end

        class EventList < Novacast::SDK::JsonRepresentation
          collection :events, decorator: EventInfo
        end

        class EventContent < Novacast::SDK::JsonRepresentation
          property :type
          property :value
        end

        class PageRuntime < Novacast::SDK::JsonRepresentation
          property :runtime
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

        class SlideDeckInfo < Novacast::SDK::JsonRepresentation
          property :uid
          property :label
          property :page_count
        end

        class SlideDeck < SlideDeckInfo
          collection :slides, decorator: Slide
        end

        class SlideDeckList < Novacast::SDK::JsonRepresentation
          collection :slide_decks, decorator: SlideDeckInfo
        end

        class StreamSource < Novacast::SDK::JsonRepresentation
          property :uid
          property :url
          property :source
        end

        class StreamMedium < Novacast::SDK::JsonRepresentation
          property :uid
          property :label

          collection :stream_sources, decorator: StreamSource
        end

        class StreamMediumList < Novacast::SDK::JsonRepresentation
          collection :stream_media, decorator: StreamMedium
        end
      end
    end
  end
end