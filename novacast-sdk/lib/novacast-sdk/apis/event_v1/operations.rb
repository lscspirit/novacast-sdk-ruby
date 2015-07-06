module Novacast
  module API
    module EventV1
      module Operations
        def get_event(event_uid)
          path = '/events/{event_uid}'
          op   = Novacast::SDK::Operation.new path, :get
          op.response_representation = Resources::Event
          op.params[:event_uid] = event_uid

          self.execute_operation op
        end

        def get_event_content(event_uid, content_path)
          path = '/events/{event_uid}/contents/{content_path}'
          op   = Novacast::SDK::Operation.new path, :get

          op.response_representation = Resources::EventContent
          op.params[:event_uid]    = event_uid
          op.params[:content_path] = content_path

          self.execute_operation op
        end

        def get_page_runtime(event_uid, page_path)
          path = '/events/{event_uid}/runtimes/{page_path}'
          op   = Novacast::SDK::Operation.new path, :get

          op.params[:event_uid] = event_uid
          op.params[:page_path] = page_path

          self.execute_operation op
        end

        def get_event_session(session_uid)
          path = '/sessions/{session_uid}'
          op   = Novacast::SDK::Operation.new path, :get

          op.response_representation = Resources::EventSession
          op.params[:session_uid] = session_uid

          self.execute_operation op
        end

        def get_session_runtime(session_uid)
          path = '/sessions/{session_uid}/runtime'
          op   = Novacast::SDK::Operation.new path, :get

          op.response_representation = Resources::PageRuntime
          op.params[:session_uid] = session_uid

          self.execute_operation op
        end
      end
    end
  end
end