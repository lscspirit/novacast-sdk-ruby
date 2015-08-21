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
              represented.session_uid = val
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

        #
        # UserSet
        #

        class EnrollmentField < Novacast::SDK::JsonRepresentation
          property :name
          property :data_type
          property :label
          property :optional
          property :index
        end

        class UserSetInfo < Novacast::SDK::JsonRepresentation
          property :uid
          property :label
          property :access
          property :enrollment
          property :account_only
        end

        class UserSet < UserSetInfo
          collection :enrollment_fields, as: :fields, decorator: EnrollmentField, class: OpenStruct
        end

        class UserSetList < Novacast::SDK::JsonRepresentation
          collection :user_sets, decorator: UserSetInfo, class: OpenStruct
        end

        class WhiteListedUser < Novacast::SDK::JsonRepresentation
          property :uid
          property :identifier_type, as: :type
          property :identifier
          property :activation_code
        end

        class WhiteListedUserList < Novacast::SDK::JsonRepresentation
          collection :white_listed_users, decorator: WhiteListedUser, class: OpenStruct
        end

        class Enrollment < Novacast::SDK::JsonRepresentation
          property :account_type
          property :account_uid
        end

        #
        # Module Configurations
        #

        class SessionModuleResource < Novacast::SDK::JsonRepresentation
          property :usage
          property :resource_name, as: 'rn'
        end

        class SessionModule < Novacast::SDK::JsonRepresentation
          property :module_name
          property :config

          collection :resources, decorator: SessionModuleResource, class: OpenStruct
        end

        class SessionModuleConfigs < Novacast::SDK::JsonRepresentation
          collection :session_modules, as: :modules, decorator: SessionModule, class: OpenStruct
        end

        class PageRuntime < Novacast::SDK::JsonRepresentation
          property   :session_uid
          collection :modules
        end

        #
        # Session
        #

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

        class EventSessionList < Novacast::SDK::JsonRepresentation
          collection :sessions, decorator: EventSessionInfo, class: OpenStruct
        end

        class EventSession < EventSessionInfo
          collection :session_modules, as: :modules, decorator: SessionModule, class: OpenStruct
        end

        class Event < EventInfo
          property :asset_bundle_uid,   exec_context: :decorator
          property :user_set_uid,       exec_context: :decorator

          collection :event_sessions, decorator: EventSessionInfo, class: OpenStruct
          collection :event_pages,    decorator: EventPage,        class: OpenStruct
          collection :public_aliases, decorator: PublicAlias,      class: OpenStruct

          def asset_bundle_uid
            represented.asset_bundle.uid
          end

          def asset_bundle_uid=(val)
            if represented.asset_bundle
              represented.asset_bundle.uid = val
            else
              represented.asset_bundle_uid = val
            end
          end

          def user_set_uid
            represented.user_set ? represented.user_set.uid : nil
          end

          def user_set_uid=(val)
            if represented.user_set
              represented.user_set.uid = val
            else
              represented.user_set_uid = val
            end
          end
        end

        class EventList < Novacast::SDK::JsonRepresentation
          collection :events, decorator: EventInfo, class: OpenStruct
        end

        class EventContent < Novacast::SDK::JsonRepresentation
          property :type
          property :value
        end

        #
        # Asset Resources
        #

        class AssetBundle < Novacast::SDK::JsonRepresentation
          property :uid
          property :uid_rn, as: 'rn'
          property :label
        end

        class BundleContent < Novacast::SDK::JsonRepresentation
          property :file_path
          property :url
        end

        class AssetBundleList < Novacast::SDK::JsonRepresentation
          collection :asset_bundles, decorator: AssetBundle, class: OpenStruct
        end

        class AssetBundleWithContents < AssetBundle
          collection :bundle_contents, decorator: BundleContent, class: OpenStruct
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
        # Question Resources
        #

        class QuestionContentType < Novacast::SDK::JsonRepresentation
          property :name
          property :desc
          property :type_key
          property :params
        end

        class QuestionSubmission < Novacast::SDK::JsonRepresentation
          property :user_uid
          property :answer
          property :question_content_type, extend: QuestionContentType, class: OpenStruct
        end

        class QuestionContent < Novacast::SDK::JsonRepresentation
          property :uid
          property :set_id
          property :question
          property :order
          property :content
          property :question_content_type, extend: QuestionContentType, class: OpenStruct
        end

        class QuestionSet < Novacast::SDK::JsonRepresentation
          property :uid
          property :label
          property :state
        end

        class QuestionSetContent < QuestionSet
          collection :question_contents, extend: QuestionContent, class: OpenStruct
        end

        class QuestionSetList < Novacast::SDK::JsonRepresentation
          collection :question_sets, extend: QuestionSet, class: OpenStruct
        end

        class QuestionContentList < Novacast::SDK::JsonRepresentation
          collection :question_contents, extend: QuestionContent, class: OpenStruct
        end

        class QuestionSubmissionList < Novacast::SDK::JsonRepresentation
          collection :question_submissions, extend: QuestionSubmission, class: OpenStruct
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
          property :uid_rn, as: 'rn'
          property :label
          property :page_count
        end

        class SlideDeck < SlideDeckInfo
          collection :slides, decorator: Slide, class: OpenStruct
        end

        class SlideDeckList < Novacast::SDK::JsonRepresentation
          collection :slide_decks, decorator: SlideDeckInfo, class: OpenStruct
        end

        class StreamSource < Novacast::SDK::JsonRepresentation
          property :uid
          property :url
          property :source
        end

        class StreamMedium < Novacast::SDK::JsonRepresentation
          property :uid
          property :uid_rn, as: 'rn'
          property :label

          collection :stream_sources, decorator: StreamSource, class: OpenStruct
        end

        class StreamMediumList < Novacast::SDK::JsonRepresentation
          collection :stream_media, decorator: StreamMedium, class: OpenStruct
        end
      end
    end
  end
end