module Novacast
  module API
    module EventV1
      module Operations
        def create_channel(channel)
          path = '/channels'
          op   = Novacast::SDK::Operation.new path, :post

          op.request_representation  = Resources::Channel
          op.request_wrap            = :channel
          op.request_obj             = channel
          op.query                   = { access_token: access_token }
          op.response_representation = Resources::Channel

          op
        end

        def list_channels
          path = '/channels'
          op   = Novacast::SDK::Operation.new path, :get

          op.query                   = { access_token: access_token }
          op.response_representation = Resources::ChannelList

          op
        end

        def get_channel(channel_uid)
          path = channel_uid ? '/channels/{channel_uid}' : '/channels/me'
          op   = Novacast::SDK::Operation.new path, :get

          op.response_representation = Resources::Channel
          op.query                   = { access_token: access_token }
          op.params[:channel_uid]    = channel_uid

          op
        end

        def get_event(event_uid)
          path = '/events/{event_uid}'
          op   = Novacast::SDK::Operation.new path, :get
          op.response_representation = Resources::Event
          op.params[:event_uid]      = event_uid
          op.query                   = { access_token: access_token }

          op
        end

        def get_event_content(event_uid, content_path, csrf_token)
          path = '/events/{event_uid}/contents/{content_path}'
          op   = Novacast::SDK::Operation.new path, :get

          op.response_representation = Resources::EventContent
          op.params[:event_uid]      = event_uid
          op.params[:content_path]   = content_path
          op.query                   = { access_token: access_token, csrf_token: csrf_token }

          op
        end

        def get_page_runtime(event_uid, page_path)
          path = '/events/{event_uid}/runtimes/{page_path}'
          op   = Novacast::SDK::Operation.new path, :get

          op.response_representation = Resources::PageRuntime
          op.params[:event_uid]      = event_uid
          op.params[:page_path]      = page_path
          op.query                   = { access_token: access_token }

          op
        end

        def get_event_session(session_uid)
          path = '/sessions/{session_uid}'
          op   = Novacast::SDK::Operation.new path, :get

          op.response_representation = Resources::EventSession
          op.params[:session_uid]    = session_uid
          op.query                   = { access_token: access_token }

          op
        end

        def get_session_runtime(session_uid)
          path = '/sessions/{session_uid}/runtime'
          op   = Novacast::SDK::Operation.new path, :get

          op.response_representation = Resources::PageRuntime
          op.params[:session_uid]    = session_uid
          op.query                   = { access_token: access_token }

          op
        end

        #
        # Attendances
        #

        def track_attendance(event_uid, session_uid, client_session_id, user_data = {})
          path = '/events/{event_uid}/attendances/track'
          op   = Novacast::SDK::Operation.new path, :post

          op.params[:event_uid] = event_uid

          op.request_obj = user_data.merge({
            session_uid:       session_uid,
            client_session_id: client_session_id
          })
          op.query      = { access_token: access_token }

          op
        end
      end
    end
  end
end