module Novacast
  module API
    module EventV1
      module Operations
        def create_channel(channel)
          path = '/channels'
          op   = Novacast::SDK::Operation.new path, :post, access_token: :use

          op.request_representation  = Resources::Channel
          op.request_wrap            = :channel
          op.request_obj             = channel
          op.response_representation = Resources::Channel

          op
        end

        def list_channels
          path = '/channels'
          op   = Novacast::SDK::Operation.new path, :get, access_token: :use

          op.response_representation = Resources::ChannelList

          op
        end

        def get_channel(channel_uid)
          path = channel_uid ? '/channels/{channel_uid}' : '/channels/me'
          op   = Novacast::SDK::Operation.new path, :get, access_token: :use

          op.response_representation = Resources::Channel
          op.params[:channel_uid]    = channel_uid

          op
        end

        def get_event(event_uid)
          path = '/events/{event_uid}'
          op   = Novacast::SDK::Operation.new path, :get, access_token: :use
          op.response_representation = Resources::Event
          op.params[:event_uid]      = event_uid

          op
        end

        def get_event_content(event_uid, content_path)
          path = '/events/{event_uid}/contents/{content_path}'
          op   = Novacast::SDK::Operation.new path, :get, access_token: :optional

          op.response_representation = Resources::EventContent
          op.params[:event_uid]      = event_uid
          op.params[:content_path]   = content_path

          op
        end

        def get_mapped_page(event_uid, type, key)
          path = '/events/{event_uid}/mappings/{type}/{key}'
          op   = Novacast::SDK::Operation.new path, :get, access_token: :optional

          op.response_representation = Resources::EventContent
          op.params[:event_uid] = event_uid
          op.params[:type]      = type
          op.params[:key]       = key

          op
        end

        def get_page_runtime(event_uid, page_path)
          path = '/events/{event_uid}/runtimes/{page_path}'
          op   = Novacast::SDK::Operation.new path, :get, access_token: :use

          op.response_representation = Resources::PageRuntime
          op.params[:event_uid]      = event_uid
          op.params[:page_path]      = page_path

          op
        end

        def get_event_session(session_uid)
          path = '/sessions/{session_uid}'
          op   = Novacast::SDK::Operation.new path, :get, access_token: :use

          op.response_representation = Resources::EventSession
          op.params[:session_uid]    = session_uid

          op
        end

        def get_session_runtime(session_uid)
          path = '/sessions/{session_uid}/runtime'
          op   = Novacast::SDK::Operation.new path, :get, access_token: :use

          op.response_representation = Resources::PageRuntime
          op.params[:session_uid]    = session_uid

          op
        end

        def get_event_user_set(event_uid)
          path = '/events/{event_uid}/user_set'
          op   = Novacast::SDK::Operation.new path, :get, access_token: :use

          op.response_representation = Resources::UserSet
          op.params[:event_uid]      = event_uid

          op
        end

        #
        # Attendances
        #

        def track_attendance(event_uid, session_uid, client_session_id, user_data = {})
          path = '/events/{event_uid}/attendances/track'
          op   = Novacast::SDK::Operation.new path, :post, access_token: :use

          op.params[:event_uid] = event_uid

          op.request_obj = user_data.merge({
            session_uid:       session_uid,
            client_session_id: client_session_id
          })

          op
        end

        #
        # Enrollment
        #

        def enroll_to_user_set(user_set_uid, account_uid, fields = {})
          path = '/user_sets/{user_set_uid}/enroll'
          op   = Novacast::SDK::Operation.new path, :post, access_token: :use

          entries = fields.map { |k, v| { field_name: k, value: v } }

          op.request_obj = {
            account_uid: account_uid,
            fields:      entries
          }
          op.params[:user_set_uid] = user_set_uid

          op
        end
      end
    end
  end
end