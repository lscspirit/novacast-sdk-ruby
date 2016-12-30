module NovacastSDK
  module EventV1
    class InternalApi < NovacastSDK::Client::BaseClient
      # SDK Configuration
      def self.config
        NovacastSDK::EventV1.config
      end


      # 
      # Enroll an account to a user set\n
      # @param user_set_uid user set uid
      # @param body request body
      # @return [Enrollment]
      def enroll_to_user_set(user_set_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "user_set_uid"' if user_set_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/user_sets/{user_set_uid}/enroll', :POST

        # path parameters
        path_params = {}
        path_params['user_set_uid'] = user_set_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        op.body = body.to_json

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::Enrollment.from_json resp.body
              end

      # 
      # Check if a user have access to the event\n
      # @param event_uid event uid
      # @param content_path path to access the content
      # @param account_uid account uid
      # @param client_request information of request from client
      # @param [Hash] opts the optional parameters
      # @option opts [String] :preview_token preview token
      # @return [FilterAccessResponse]
      def filter_event_access(event_uid, content_path, account_uid, client_request, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "content_path"' if content_path.nil?
        
        raise ArgumentError, 'Missing required parameter "account_uid"' if account_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "client_request"' if client_request.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/filter_access{/content_path*}', :POST

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['content_path'] = content_path
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['account_uid'] = account_uid
        query_params['preview_token'] = opts[:preview_token] if opts[:preview_token]
        op.query = query_params

        # http body (model)
        op.body = client_request.to_json

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::FilterAccessResponse.from_json resp.body
              end

      # 
      # Get a channel\n
      # @param channel_uid uid of the channel
      # @return [Channel]
      def get_channel(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}', :GET

        # path parameters
        path_params = {}
        path_params['channel_uid'] = channel_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::Channel.from_json resp.body
              end

      # 
      # Get event content by path\n
      # @param event_uid event uid
      # @param content_path path to access the content
      # @return [EventContent]
      def get_content_by_path(event_uid, content_path)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "content_path"' if content_path.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/contents{/content_path*}', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['content_path'] = content_path
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::EventContent.from_json resp.body
              end

      # 
      # Get Event with extended details\n
      # @param event_uid event uid
      # @return [EventExtended]
      def get_event(event_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::EventExtended.from_json resp.body
              end

      # 
      # Get the user set for the event\n
      # @param event_uid event uid
      # @return [UserSetExtended]
      def get_event_user_set(event_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/user_set', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::UserSetExtended.from_json resp.body
              end

      # 
      # Get public alias by path\n
      # @param alias_path path of the public alias
      # @return [PublicAlias]
      def get_public_alias_by_path(alias_path)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "alias_path"' if alias_path.nil?
        

        op = NovacastSDK::Client::Operation.new '/public_aliases/path/{alias_path}', :GET

        # path parameters
        path_params = {}
        path_params['alias_path'] = alias_path
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::PublicAlias.from_json resp.body
              end

      # 
      # Get runtime by path\n
      # @param event_uid event uid
      # @param content_path path to access the content
      # @return [PageRuntime]
      def get_runtime_by_path(event_uid, content_path)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "content_path"' if content_path.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/runtimes{/content_path*}', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['content_path'] = content_path
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::PageRuntime.from_json resp.body
              end

      # 
      # Get a user set with extended details\n
      # @param user_set_uid user set uid
      # @return [UserSetExtended]
      def get_user_set(user_set_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "user_set_uid"' if user_set_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/user_sets/{user_set_uid}', :GET

        # path parameters
        path_params = {}
        path_params['user_set_uid'] = user_set_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::UserSetExtended.from_json resp.body
              end

      # 
      # a batch call to track multiple attendances by their access tokens\n
      # @param body request body
      # @return [AttendanceList]
      def track_attendance_by_token(body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/attendances/track_by_token', :POST

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        op.body = body.to_json

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::AttendanceList.from_json resp.body
              end

      # 
      # Validates a preview token\n
      # @param token preivew token
      # @return [PreviewTokenInfo]
      def validate_preview_token(token)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "token"' if token.nil?
        

        op = NovacastSDK::Client::Operation.new '/preview/validate', :GET

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['token'] = token
        op.query = query_params

        # http body (model)

        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]

        resp = call_api op

        NovacastSDK::EventV1::Models::PreviewTokenInfo.from_json resp.body
              end
    end
  end
end
