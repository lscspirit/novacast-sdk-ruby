module NovacastSDK
  module EventV1
    class DefaultApi < NovacastSDK::Client::BaseClient
      # SDK Configuration
      def self.config
        NovacastSDK::EventV1.config
      end


      # 
      # add statistics for the given poll status\n
      # @param session_uid the session that this poll is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [PollStatus]
      def add_poll_stat(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/polling/{question_manifest_uid}/add_stat', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::PollStatus.from_json resp.body
        
      end

      # 
      # add statistics for the given questionnaire status\n
      # @param session_uid the session that this questionnaire is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [QuestionnaireStatus]
      def add_questionnaire_stat(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/questionnaire/{question_manifest_uid}/add_stat', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::QuestionnaireStatus.from_json resp.body
        
      end

      # 
      # Pre upload asset bundle content\n
      # @param asset_bundle_uid asset bundle uid
      # @param body request body
      # @return [PresignedUpload]
      def bundle_content_pre_upload(asset_bundle_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "asset_bundle_uid"' if asset_bundle_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/assets/{asset_bundle_uid}/pre_upload', :POST

        # path parameters
        path_params = {}
        path_params['asset_bundle_uid'] = asset_bundle_uid
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

        
        NovacastSDK::EventV1::Models::PresignedUpload.from_json resp.body
        
      end

      # 
      # Update the event stage\n
      # @param event_uid event uid
      # @param body event stage update request data
      # @return [Event]
      def change_event_stage(event_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/stage', :PUT

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::Event.from_json resp.body
        
      end

      # 
      # Confirm a pre-upload asset bundle content\n
      # @param asset_bundle_uid asset bundle uid
      # @param file_path content path within the bundle
      # @param body request body
      # @return [BundleContent]
      def confirm_bundle_content(asset_bundle_uid, file_path, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "asset_bundle_uid"' if asset_bundle_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "file_path"' if file_path.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/assets/{asset_bundle_uid}/confirm/{file_path}', :POST

        # path parameters
        path_params = {}
        path_params['asset_bundle_uid'] = asset_bundle_uid
        path_params['file_path'] = file_path
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

        
        NovacastSDK::EventV1::Models::BundleContent.from_json resp.body
        
      end

      # 
      # Confirm the successful uploading of remote stream source\n
      # @param stream_source_uid stream source uid
      # @param body request body
      # @return [StreamSource]
      def confirm_stream_source(stream_source_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "stream_source_uid"' if stream_source_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/stream_sources/{stream_source_uid}/confirm', :POST

        # path parameters
        path_params = {}
        path_params['stream_source_uid'] = stream_source_uid
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

        
        NovacastSDK::EventV1::Models::StreamSource.from_json resp.body
        
      end

      # 
      # Create a new access policy\n
      # @param channel_uid channel uid
      # @param body request body
      # @return [AccessPolicyExtended]
      def create_access_policy(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/access_policies', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::AccessPolicyExtended.from_json resp.body
        
      end

      # 
      # Create a new asset bundle\n
      # @param channel_uid channel uid
      # @param body request body
      # @return [AssetBundleInfo]
      def create_asset_bundle(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/assets', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::AssetBundleInfo.from_json resp.body
        
      end

      # 
      # Create a new channel\n
      # @param channel channel data
      # @return [Channel]
      def create_channel(channel)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel"' if channel.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels', :POST

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
        
        op.body = channel.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::Channel.from_json resp.body
        
      end

      # 
      # Create a new data set for the event\n
      # @param event_uid event uid
      # @param body request body
      # @return [DataSet]
      def create_data_set(event_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/data_sets', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::DataSet.from_json resp.body
        
      end

      # 
      # Create a new event\n
      # @param channel_uid channel uid
      # @param body event creation request data
      # @return [EventExtended]
      def create_event(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/events', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::EventExtended.from_json resp.body
        
      end

      # 
      # Create a new page for a event\n
      # @param event_uid event uid
      # @param body request body
      # @return [EventPage]
      def create_event_page(event_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/pages', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::EventPage.from_json resp.body
        
      end

      # 
      # Create a new session for the event\n
      # @param event_uid event uid
      # @param body create session request body
      # @return [EventSession]
      def create_event_session(event_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/sessions', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::EventSession.from_json resp.body
        
      end

      # 
      # Create a new forum post\n
      # @param session_uid uid of the session
      # @param body request body
      # @return [ForumPost]
      def create_forum_post(session_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/sessions/{session_uid}', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::ForumPost.from_json resp.body
        
      end

      # 
      # Create a new page mapping\n
      # @param event_uid event uid
      # @param body request body
      # @return [PageMapping]
      def create_page_mapping(event_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/page_mappings', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::PageMapping.from_json resp.body
        
      end

      # 
      # Create a new question content\n
      # @param question_set_uid question set uid
      # @param body request body
      # @return [QuestionContent]
      def create_question_content(question_set_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_set_uid"' if question_set_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_sets/{question_set_uid}/question_contents', :POST

        # path parameters
        path_params = {}
        path_params['question_set_uid'] = question_set_uid
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

        
        NovacastSDK::EventV1::Models::QuestionContent.from_json resp.body
        
      end

      # 
      # Create a new question manifest\n
      # @param channel_uid channel uid
      # @param body request body
      # @return [QuestionManifest]
      def create_question_manifest(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/question_manifests', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::QuestionManifest.from_json resp.body
        
      end

      # 
      # Create a new question set\n
      # @param channel_uid channel uid
      # @param body request body
      # @return [QuestionSetInfo]
      def create_question_set(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/question_sets', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::QuestionSetInfo.from_json resp.body
        
      end

      # 
      # Create submissions for a given question manifest\n
      # @param question_manifest_uid question manifest uid
      # @param session_uid the session uid
      # @param body request body
      # @return [QuestionSubmission]
      def create_question_submission(question_manifest_uid, session_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/question_submissions/{question_manifest_uid}', :POST

        # path parameters
        path_params = {}
        path_params['question_manifest_uid'] = question_manifest_uid
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::QuestionSubmission.from_json resp.body
        
      end

      # 
      # Create a new slide deck\n
      # @param channel_uid channel uid
      # @param body request body
      # @return [SlideDeckInfo]
      def create_slide_deck(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/slide_decks', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::SlideDeckInfo.from_json resp.body
        
      end

      # 
      # Create a new stream medium\n
      # @param channel_uid channel uid
      # @param body request body
      # @return [StreamMediumInfo]
      def create_stream_medium(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/streams', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::StreamMediumInfo.from_json resp.body
        
      end

      # 
      # Create a new source for a stream medium\n
      # @param stream_medium_uid stream medium uid
      # @param body request body
      # @return [StreamSource]
      def create_stream_source(stream_medium_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "stream_medium_uid"' if stream_medium_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/streams/{stream_medium_uid}/sources', :POST

        # path parameters
        path_params = {}
        path_params['stream_medium_uid'] = stream_medium_uid
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

        
        NovacastSDK::EventV1::Models::StreamSource.from_json resp.body
        
      end

      # 
      # Create a new user set\n
      # @param channel_uid channel uid
      # @param body request body
      # @return [UserSetExtended]
      def create_user_set(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/user_sets', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::UserSetExtended.from_json resp.body
        
      end

      # 
      # Delete an access policy\n
      # @param access_policy_uid access policy uid
      # @return [AccessPolicy]
      def delete_access_policy(access_policy_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "access_policy_uid"' if access_policy_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/access_policies/{access_policy_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['access_policy_uid'] = access_policy_uid
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

        
        NovacastSDK::EventV1::Models::AccessPolicy.from_json resp.body
        
      end

      # 
      # Delete a page mapping\n
      # @param mapping_uid uid of the page mapping
      # @return [PageMapping]
      def delete_page_mapping(mapping_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "mapping_uid"' if mapping_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/page_mappings/{mapping_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['mapping_uid'] = mapping_uid
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

        
        NovacastSDK::EventV1::Models::PageMapping.from_json resp.body
        
      end

      # 
      # Delete a question content\n
      # @param question_content_uid question content uid
      # @return [QuestionContent]
      def delete_question_content(question_content_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_content_uid"' if question_content_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_contents/{question_content_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['question_content_uid'] = question_content_uid
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

        
        NovacastSDK::EventV1::Models::QuestionContent.from_json resp.body
        
      end

      # 
      # Delete a question manifest\n
      # @param question_manifest_uid question manifest uid
      # @return [QuestionManifestDeleteResponse]
      def delete_question_manifest(question_manifest_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_manifests/{question_manifest_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::QuestionManifestDeleteResponse.from_json resp.body
        
      end

      # 
      # Delete a question set\n
      # @param question_set_uid question set uid
      # @return [QuestionSetInfo]
      def delete_question_set(question_set_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_set_uid"' if question_set_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_sets/{question_set_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['question_set_uid'] = question_set_uid
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

        
        NovacastSDK::EventV1::Models::QuestionSetInfo.from_json resp.body
        
      end

      # 
      # Delete a slide deck\n
      # @param slide_deck_uid slide deck uid
      # @return [SlideDeckInfo]
      def delete_slide_deck(slide_deck_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "slide_deck_uid"' if slide_deck_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/slide_decks/{slide_deck_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['slide_deck_uid'] = slide_deck_uid
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

        
        NovacastSDK::EventV1::Models::SlideDeckInfo.from_json resp.body
        
      end

      # 
      # Delete slides from slide deck\n
      # @param slide_deck_uid slide deck uid
      # @param body request body
      # @return [SlideDeck]
      def delete_slides(slide_deck_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "slide_deck_uid"' if slide_deck_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/slide_decks/{slide_deck_uid}/delete_slides', :POST

        # path parameters
        path_params = {}
        path_params['slide_deck_uid'] = slide_deck_uid
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

        
        NovacastSDK::EventV1::Models::SlideDeck.from_json resp.body
        
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
      # Get details of an access policy\n
      # @param access_policy_uid access policy uid
      # @return [AccessPolicyExtended]
      def get_access_policy(access_policy_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "access_policy_uid"' if access_policy_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/access_policies/{access_policy_uid}', :GET

        # path parameters
        path_params = {}
        path_params['access_policy_uid'] = access_policy_uid
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

        
        NovacastSDK::EventV1::Models::AccessPolicyExtended.from_json resp.body
        
      end

      # 
      # Get a list of all access policies for the channel\n
      # @param channel_uid channel uid
      # @return [AccessPolicyList]
      def get_access_policy_list(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/access_policies', :GET

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

        
        NovacastSDK::EventV1::Models::AccessPolicyList.from_json resp.body
        
      end

      # 
      # Get asset bundle with contents\n
      # @param asset_bundle_uid asset bundle uid
      # @return [AssetBundle]
      def get_asset_bundle(asset_bundle_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "asset_bundle_uid"' if asset_bundle_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/assets/{asset_bundle_uid}', :GET

        # path parameters
        path_params = {}
        path_params['asset_bundle_uid'] = asset_bundle_uid
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

        
        NovacastSDK::EventV1::Models::AssetBundle.from_json resp.body
        
      end

      # 
      # Get information for all asset bundles in a channel\n
      # @param channel_uid channel uid
      # @return [AssetBundleInfoList]
      def get_asset_bundle_list(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/assets', :GET

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

        
        NovacastSDK::EventV1::Models::AssetBundleInfoList.from_json resp.body
        
      end

      # 
      # Get an asset bundle content\n
      # @param asset_bundle_uid asset bundle uid
      # @param file_path content path within the bundle
      # @return [BundleContent]
      def get_bundle_content(asset_bundle_uid, file_path)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "asset_bundle_uid"' if asset_bundle_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "file_path"' if file_path.nil?
        

        op = NovacastSDK::Client::Operation.new '/assets/{asset_bundle_uid}/contents/{file_path}', :GET

        # path parameters
        path_params = {}
        path_params['asset_bundle_uid'] = asset_bundle_uid
        path_params['file_path'] = file_path
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

        
        NovacastSDK::EventV1::Models::BundleContent.from_json resp.body
        
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
      # Get all events belongs to this channel\n
      # @param channel_uid channel uid
      # @return [EventList]
      def get_channel_events(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/events', :GET

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

        
        NovacastSDK::EventV1::Models::EventList.from_json resp.body
        
      end

      # 
      # Get a list of all channel for the current user\n
      # @return [ChannelList]
      def get_channel_list()
        # checks if all required parameters are set
        

        op = NovacastSDK::Client::Operation.new '/channels', :GET

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
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::ChannelList.from_json resp.body
        
      end

      # 
      # Get event content by page mapping\n
      # @param event_uid event uid
      # @param type page mapping type (&#39;usage&#39; or &#39;path&#39;)
      # @param key page mapping key (usage key or page path name)
      # @return [EventContent]
      def get_content_by_mapping(event_uid, type, key)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "type"' if type.nil?
        
        raise ArgumentError, 'Missing required parameter "key"' if key.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/contents', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['type'] = type
        query_params['key'] = key
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
      # Get event content by path\n
      # @param event_uid event uid
      # @param content_path path to access the content
      # @return [EventContent]
      def get_content_by_path(event_uid, content_path)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "content_path"' if content_path.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/contents/{content_path}', :GET

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
      # Get all question contents for the question set\n
      # @param question_set_uid question set uid
      # @return [QuestionContentList]
      def get_contents_for_question_set(question_set_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_set_uid"' if question_set_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_sets/{question_set_uid}/question_contents', :GET

        # path parameters
        path_params = {}
        path_params['question_set_uid'] = question_set_uid
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

        
        NovacastSDK::EventV1::Models::QuestionContentList.from_json resp.body
        
      end

      # 
      # Get a data set\n
      # @param data_set_uid data set uid
      # @return [DataSet]
      def get_data_set(data_set_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "data_set_uid"' if data_set_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/data_sets/{data_set_uid}', :GET

        # path parameters
        path_params = {}
        path_params['data_set_uid'] = data_set_uid
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

        
        NovacastSDK::EventV1::Models::DataSet.from_json resp.body
        
      end

      # 
      # Get all data sets for the event\n
      # @param event_uid event uid
      # @return [DataSetList]
      def get_data_set_list(event_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/data_sets', :GET

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

        
        NovacastSDK::EventV1::Models::DataSetList.from_json resp.body
        
      end

      # 
      # Get all partitions for a data set\n
      # @param data_set_uid data set uid
      # @return [DataSetPartitionList]
      def get_data_set_partitions(data_set_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "data_set_uid"' if data_set_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/data_sets/{data_set_uid}/partitions', :GET

        # path parameters
        path_params = {}
        path_params['data_set_uid'] = data_set_uid
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

        
        NovacastSDK::EventV1::Models::DataSetPartitionList.from_json resp.body
        
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
      # Get the access filter chain for the event interface\n
      # @param event_uid event uid
      # @return [AccessFilterChain]
      def get_event_interface_filter_chain(event_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/interface_filter_chain', :GET

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

        
        NovacastSDK::EventV1::Models::AccessFilterChain.from_json resp.body
        
      end

      # 
      # Get the event page\n
      # @param event_uid event uid
      # @param page_path event page path
      # @return [EventPage]
      def get_event_page(event_uid, page_path)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "page_path"' if page_path.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/pages/{page_path}', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['page_path'] = page_path
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

        
        NovacastSDK::EventV1::Models::EventPage.from_json resp.body
        
      end

      # 
      # Get the page content of a event page\n
      # @param event_uid event uid
      # @param page_path event page path
      # @return [PageContent]
      def get_event_page_content(event_uid, page_path)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "page_path"' if page_path.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/page_contents/{page_path}', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['page_path'] = page_path
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

        
        NovacastSDK::EventV1::Models::PageContent.from_json resp.body
        
      end

      # 
      # Get an event session with extended details\n
      # @param session_uid event session uid
      # @return [EventSessionExtended]
      def get_event_session(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::EventSessionExtended.from_json resp.body
        
      end

      # 
      # Get all sessions for the event\n
      # @param event_uid event uid
      # @return [EventSessionList]
      def get_event_session_list(event_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/sessions', :GET

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

        
        NovacastSDK::EventV1::Models::EventSessionList.from_json resp.body
        
      end

      # 
      # Get the page runtime configuration of event session\n
      # @param session_uid event session uid
      # @return [SessionRuntime]
      def get_event_session_runtime(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/runtime', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::SessionRuntime.from_json resp.body
        
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
      # Get all forum posts (with extended information) of the session\n
      # @param session_uid uid of the session
      # @param [Hash] opts the optional parameters
      # @option opts [String] :data_set_uid uid of the data set. Default to the active data set of the event
      # @return [ForumPostExtendedList]
      def get_extended_forum_posts(session_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/sessions/{session_uid}/extended', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['data_set_uid'] = opts[:data_set_uid] if opts[:data_set_uid]
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::ForumPostExtendedList.from_json resp.body
        
      end

      # 
      # Get all likes for the forum post\n
      # @param forum_post_uid uid of the forum post
      # @return [ForumPostLikeList]
      def get_forum_post_likes(forum_post_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "forum_post_uid"' if forum_post_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/posts/{forum_post_uid}/likes', :GET

        # path parameters
        path_params = {}
        path_params['forum_post_uid'] = forum_post_uid
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

        
        NovacastSDK::EventV1::Models::ForumPostLikeList.from_json resp.body
        
      end

      # 
      # Get all forum posts likes of the session submitted by the access user\n
      # @param session_uid uid of the session
      # @return [ForumPostLikeList]
      def get_forum_post_likes_for_account(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/sessions/{session_uid}/account/likes', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::ForumPostLikeList.from_json resp.body
        
      end

      # 
      # Get all forum posts of the session\n
      # @param session_uid uid of the session
      # @return [ForumPostList]
      def get_forum_posts(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/sessions/{session_uid}', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::ForumPostList.from_json resp.body
        
      end

      # 
      # Get the current live cast page\n
      # @param session_uid session uid
      # @return [LiveCastSlidePage]
      def get_live_cast_page(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/live_cast/sessions/{session_uid}/page', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::LiveCastSlidePage.from_json resp.body
        
      end

      # 
      # (LiveCast) Get the current LiveCast module state\n
      # @param session_uid session uid
      # @return [LiveCastState]
      def get_live_cast_state(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/live_cast/sessions/{session_uid}', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::LiveCastState.from_json resp.body
        
      end

      # 
      # Get the session exceptions for a shared session page\n
      # @param event_uid event uid
      # @param page_path event page path
      # @return [PageSessionExceptions]
      def get_page_exceptions(event_uid, page_path)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "page_path"' if page_path.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/page_exceptions/{page_path}', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['page_path'] = page_path
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

        
        NovacastSDK::EventV1::Models::PageSessionExceptions.from_json resp.body
        
      end

      # 
      # Get the list of page mappings for the event\n
      # @param event_uid event uid
      # @return [PageMappingList]
      def get_page_mapping_list(event_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/page_mappings', :GET

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

        
        NovacastSDK::EventV1::Models::PageMappingList.from_json resp.body
        
      end

      # 
      # Get the poll status\n
      # @param session_uid the session that this poll is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param question_content_uid the question content that is specific for this poll
      # @return [PollStatus]
      def get_poll_status(session_uid, question_manifest_uid, question_content_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_content_uid"' if question_content_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/polling/{question_manifest_uid}', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['question_content_uid'] = question_content_uid
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::PollStatus.from_json resp.body
        
      end

      # 
      # Get a question content\n
      # @param question_content_uid question content uid
      # @return [QuestionContent]
      def get_question_content(question_content_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_content_uid"' if question_content_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_contents/{question_content_uid}', :GET

        # path parameters
        path_params = {}
        path_params['question_content_uid'] = question_content_uid
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

        
        NovacastSDK::EventV1::Models::QuestionContent.from_json resp.body
        
      end

      # 
      # Get the list of all question content types\n
      # @return [QuestionContentTypeList]
      def get_question_content_types()
        # checks if all required parameters are set
        

        op = NovacastSDK::Client::Operation.new '/question_content_types', :GET

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
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::QuestionContentTypeList.from_json resp.body
        
      end

      # 
      # Get a question manifest\n
      # @param question_manifest_uid question manifest uid
      # @return [QuestionManifest]
      def get_question_manifest(question_manifest_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_manifests/{question_manifest_uid}', :GET

        # path parameters
        path_params = {}
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::QuestionManifest.from_json resp.body
        
      end

      # 
      # Get the list of question manifests\n
      # @param channel_uid channel uid
      # @return [QuestionManifestList]
      def get_question_manifests(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/question_manifests', :GET

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

        
        NovacastSDK::EventV1::Models::QuestionManifestList.from_json resp.body
        
      end

      # 
      # Get a question set\n
      # @param question_set_uid question set uid
      # @return [QuestionSet]
      def get_question_set(question_set_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_set_uid"' if question_set_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_sets/{question_set_uid}', :GET

        # path parameters
        path_params = {}
        path_params['question_set_uid'] = question_set_uid
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

        
        NovacastSDK::EventV1::Models::QuestionSet.from_json resp.body
        
      end

      # 
      # Get the list of question sets\n
      # @param channel_uid channel uid
      # @return [QuestionSetList]
      def get_question_set_list(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/question_sets', :GET

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

        
        NovacastSDK::EventV1::Models::QuestionSetList.from_json resp.body
        
      end

      # 
      # Get all submissions for a question manifest\n
      # @param question_manifest_uid question manifest uid
      # @param session_uid the session uid
      # @return [QuestionSubmissionList]
      def get_question_submissions(question_manifest_uid, session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/question_submissions/{question_manifest_uid}', :GET

        # path parameters
        path_params = {}
        path_params['question_manifest_uid'] = question_manifest_uid
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::QuestionSubmissionList.from_json resp.body
        
      end

      # 
      # Get the questionnaire status\n
      # @param session_uid the session that this questionnaire is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param question_set_uid the question set that is specific for this questionnaire
      # @return [QuestionnaireStatus]
      def get_questionnaire_status(session_uid, question_manifest_uid, question_set_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_set_uid"' if question_set_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/questionnaire/{question_manifest_uid}', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['question_set_uid'] = question_set_uid
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::QuestionnaireStatus.from_json resp.body
        
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
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/runtimes/{content_path}', :GET

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
      # Get a slide deck\n
      # @param slide_deck_uid slide deck uid
      # @return [SlideDeck]
      def get_slide_deck(slide_deck_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "slide_deck_uid"' if slide_deck_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/slide_decks/{slide_deck_uid}', :GET

        # path parameters
        path_params = {}
        path_params['slide_deck_uid'] = slide_deck_uid
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

        
        NovacastSDK::EventV1::Models::SlideDeck.from_json resp.body
        
      end

      # 
      # Get all slide deck for the channel\n
      # @param channel_uid channel uid
      # @return [SlideDeckInfoList]
      def get_slide_deck_list(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/slide_decks', :GET

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

        
        NovacastSDK::EventV1::Models::SlideDeckInfoList.from_json resp.body
        
      end

      # 
      # Get stream medium object\n
      # @param stream_medium_uid stream medium uid
      # @return [StreamMedium]
      def get_stream_medium(stream_medium_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "stream_medium_uid"' if stream_medium_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/streams/{stream_medium_uid}', :GET

        # path parameters
        path_params = {}
        path_params['stream_medium_uid'] = stream_medium_uid
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

        
        NovacastSDK::EventV1::Models::StreamMedium.from_json resp.body
        
      end

      # 
      # Get all the streams for this channel\n
      # @param channel_uid channel uid
      # @return [StreamMediumInfoList]
      def get_stream_medium_list(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/streams', :GET

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

        
        NovacastSDK::EventV1::Models::StreamMediumInfoList.from_json resp.body
        
      end

      # 
      # Get user feedbacks submitted for a session\n
      # @param session_uid uid of the session
      # @param [Hash] opts the optional parameters
      # @option opts [String] :data_set_uid uid of the data set. Default to the active data set of the event
      # @return [UserFeedbackList]
      def get_user_feedbacks(session_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/user_feedback/{session_uid}/feedbacks', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['data_set_uid'] = opts[:data_set_uid] if opts[:data_set_uid]
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::UserFeedbackList.from_json resp.body
        
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
      # Get all user sets for channel\n
      # @param channel_uid channel uid
      # @return [UserSetList]
      def get_user_set_list(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/user_sets', :GET

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

        
        NovacastSDK::EventV1::Models::UserSetList.from_json resp.body
        
      end

      # 
      # Get all whitelisted accounts in the access policy\n
      # @param user_set_uid user set uid
      # @return [WhitelistedUserList]
      def get_whitelisted_users(user_set_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "user_set_uid"' if user_set_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/user_sets/{user_set_uid}/whitelist', :GET

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

        
        NovacastSDK::EventV1::Models::WhitelistedUserList.from_json resp.body
        
      end

      # 
      # Like or unlike a forum post\n
      # @param forum_post_uid uid of the forum post
      # @param body request body
      # @return [ForumPostLike]
      def like_forum_post(forum_post_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "forum_post_uid"' if forum_post_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/posts/{forum_post_uid}/likes', :PUT

        # path parameters
        path_params = {}
        path_params['forum_post_uid'] = forum_post_uid
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

        
        NovacastSDK::EventV1::Models::ForumPostLike.from_json resp.body
        
      end

      # 
      # Post a new user feedback\n
      # @param session_uid uid of the session
      # @param body request body
      # @return [UserFeedback]
      def post_user_feedback(session_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/user_feedback/{session_uid}/feedbacks', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::UserFeedback.from_json resp.body
        
      end

      # 
      # publish statistics for a given poll\n
      # @param session_uid the session that this poll is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [PollStatus]
      def publish_poll(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/polling/{question_manifest_uid}/publish', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::PollStatus.from_json resp.body
        
      end

      # 
      # publish statistics for a given questionnaire\n
      # @param session_uid the session that this questionnaire is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [QuestionnaireStatus]
      def publish_questionnaire(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/questionnaire/{question_manifest_uid}/publish', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::QuestionnaireStatus.from_json resp.body
        
      end

      # 
      # Rearrange the order of slide\n
      # @param slide_deck_uid slide deck uid
      # @param body request body
      # @return [SlideDeck]
      def rearrange_slides(slide_deck_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "slide_deck_uid"' if slide_deck_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/slide_decks/{slide_deck_uid}/rearrange', :POST

        # path parameters
        path_params = {}
        path_params['slide_deck_uid'] = slide_deck_uid
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

        
        NovacastSDK::EventV1::Models::SlideDeck.from_json resp.body
        
      end

      # 
      # Reorder question set contents\n
      # @param question_set_uid question set uid
      # @param body request body
      # @return [QuestionSet]
      def reorder_question_contents(question_set_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_set_uid"' if question_set_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_sets/{question_set_uid}/reorder', :POST

        # path parameters
        path_params = {}
        path_params['question_set_uid'] = question_set_uid
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

        
        NovacastSDK::EventV1::Models::QuestionSet.from_json resp.body
        
      end

      # 
      # Removes one or more accounts from the whitelist\n
      # @param user_set_uid user set uid
      # @param body request body
      # @return [WhitelistedUserList]
      def revoke_whitelisted_users(user_set_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "user_set_uid"' if user_set_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/user_sets/{user_set_uid}/whitelist/revoke', :POST

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

        
        NovacastSDK::EventV1::Models::WhitelistedUserList.from_json resp.body
        
      end

      # 
      # Set the active data set for an event\n
      # @param event_uid event uid
      # @param body request body
      # @return [DataSet]
      def set_active_data_set(event_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/data_sets/active', :PUT

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::DataSet.from_json resp.body
        
      end

      # 
      # start the given poll\n
      # @param session_uid the session that this poll is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [PollStatus]
      def start_poll(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/polling/{question_manifest_uid}/start', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::PollStatus.from_json resp.body
        
      end

      # 
      # start the given questionnaire\n
      # @param session_uid the session that this questionnaire is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [QuestionnaireStatus]
      def start_questionnaire(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/questionnaire/{question_manifest_uid}/start', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::QuestionnaireStatus.from_json resp.body
        
      end

      # 
      # stop the given poll\n
      # @param session_uid the session that this poll is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [PollStatus]
      def stop_poll(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/polling/{question_manifest_uid}/stop', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::PollStatus.from_json resp.body
        
      end

      # 
      # stop the given questionnaire\n
      # @param session_uid the session that this questionnaire is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [QuestionnaireStatus]
      def stop_questionnaire(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/questionnaire/{question_manifest_uid}/stop', :POST

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::QuestionnaireStatus.from_json resp.body
        
      end

      # 
      # Create a stream source for remote resource\n
      # @param stream_medium_uid stream medium uid
      # @param body request body
      # @return [PresignedUpload]
      def stream_source_pre_upload(stream_medium_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "stream_medium_uid"' if stream_medium_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/streams/{stream_medium_uid}/sources/pre_upload', :POST

        # path parameters
        path_params = {}
        path_params['stream_medium_uid'] = stream_medium_uid
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

        
        NovacastSDK::EventV1::Models::PresignedUpload.from_json resp.body
        
      end

      # 
      # Record user attendance\n
      # @param event_uid event uid
      # @param body request body
      # @return [nil]
      def track_attendance(event_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/attendances', :POST

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        nil
        
      end

      # 
      # Update an access policy\n
      # @param access_policy_uid access policy uid
      # @param body request body
      # @return [AccessPolicyExtended]
      def update_access_policy(access_policy_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "access_policy_uid"' if access_policy_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/access_policies/{access_policy_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['access_policy_uid'] = access_policy_uid
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

        
        NovacastSDK::EventV1::Models::AccessPolicyExtended.from_json resp.body
        
      end

      # 
      # Update a channel\n
      # @param channel_uid uid of the channel
      # @param channel channel data
      # @return [Channel]
      def update_channel(channel_uid, channel)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "channel"' if channel.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}', :PUT

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
        
        op.body = channel.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::Channel.from_json resp.body
        
      end

      # 
      # Update an event\n
      # @param event_uid event uid
      # @param body event update request data
      # @return [EventExtended]
      def update_event(event_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}', :PUT

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
        
        op.body = body.to_json
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::EventExtended.from_json resp.body
        
      end

      # 
      # Update the event page\n
      # @param event_uid event uid
      # @param page_path event page path
      # @param body request body
      # @return [EventPage]
      def update_event_page(event_uid, page_path, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "page_path"' if page_path.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/pages/{page_path}', :PUT

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['page_path'] = page_path
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

        
        NovacastSDK::EventV1::Models::EventPage.from_json resp.body
        
      end

      # 
      # Update the page content of the event page\n
      # @param event_uid event uid
      # @param page_path event page path
      # @param body request body
      # @return [PageContent]
      def update_event_page_content(event_uid, page_path, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "page_path"' if page_path.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/page_contents/{page_path}', :PUT

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['page_path'] = page_path
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

        
        NovacastSDK::EventV1::Models::PageContent.from_json resp.body
        
      end

      # 
      # Update the state of a forum post\n
      # @param forum_post_uid uid of the forum post
      # @param body request body
      # @return [ForumPostExtended]
      def update_forum_post(forum_post_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "forum_post_uid"' if forum_post_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/posts/{forum_post_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['forum_post_uid'] = forum_post_uid
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

        
        NovacastSDK::EventV1::Models::ForumPostExtended.from_json resp.body
        
      end

      # 
      # (LiveCast) Change slide page\nThis will also publish a LiveCastSlidePage command to the session pub sub channel\n
      # @param session_uid session uid
      # @param body request body
      # @return [LiveCastState]
      def update_live_cast_page(session_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/live_cast/sessions/{session_uid}/page', :PUT

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::LiveCastState.from_json resp.body
        
      end

      # 
      # Update the session exceptions for a shared session page\n
      # @param event_uid event uid
      # @param page_path event page path
      # @param body request body
      # @return [PageSessionExceptions]
      def update_page_exceptions(event_uid, page_path, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "page_path"' if page_path.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/page_exceptions/{page_path}', :PUT

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['page_path'] = page_path
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

        
        NovacastSDK::EventV1::Models::PageSessionExceptions.from_json resp.body
        
      end

      # 
      # Update a page mapping\n
      # @param mapping_uid uid of the page mapping
      # @param body request body
      # @return [PageMapping]
      def update_page_mapping(mapping_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "mapping_uid"' if mapping_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/page_mappings/{mapping_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['mapping_uid'] = mapping_uid
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

        
        NovacastSDK::EventV1::Models::PageMapping.from_json resp.body
        
      end

      # 
      # Update a question content\n
      # @param question_content_uid question content uid
      # @param body request body
      # @return [QuestionContent]
      def update_question_content(question_content_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_content_uid"' if question_content_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_contents/{question_content_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['question_content_uid'] = question_content_uid
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

        
        NovacastSDK::EventV1::Models::QuestionContent.from_json resp.body
        
      end

      # 
      # Update a question manifest\n
      # @param question_manifest_uid question manifest uid
      # @param body request body
      # @return [QuestionManifest]
      def update_question_manifest(question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_manifests/{question_manifest_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['question_manifest_uid'] = question_manifest_uid
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

        
        NovacastSDK::EventV1::Models::QuestionManifest.from_json resp.body
        
      end

      # 
      # Update a question set\n
      # @param question_set_uid question set uid
      # @param body request body
      # @return [QuestionSetInfo]
      def update_question_set(question_set_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_set_uid"' if question_set_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_sets/{question_set_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['question_set_uid'] = question_set_uid
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

        
        NovacastSDK::EventV1::Models::QuestionSetInfo.from_json resp.body
        
      end

      # 
      # Update the module configurations for a event session\n
      # @param session_uid event session uid
      # @param body request body
      # @return [SessionModuleList]
      def update_session_modules(session_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/modules', :PUT

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
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

        
        NovacastSDK::EventV1::Models::SessionModuleList.from_json resp.body
        
      end

      # 
      # Update the slide deck\n
      # @param slide_deck_uid slide deck uid
      # @param body request body
      # @return [SlideDeckInfo]
      def update_slide_deck(slide_deck_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "slide_deck_uid"' if slide_deck_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/slide_decks/{slide_deck_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['slide_deck_uid'] = slide_deck_uid
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

        
        NovacastSDK::EventV1::Models::SlideDeckInfo.from_json resp.body
        
      end

      # 
      # Update a user set\n
      # @param user_set_uid user set uid
      # @param body request body
      # @return [UserSetExtended]
      def update_user_set(user_set_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "user_set_uid"' if user_set_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/user_sets/{user_set_uid}', :PUT

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

        
        NovacastSDK::EventV1::Models::UserSetExtended.from_json resp.body
        
      end

      # 
      # Upload a slide\n
      # @param slide_deck_uid slide deck uid
      # @param files image files
      # @return [SlideDeck]
      def upload_slides(slide_deck_uid, files)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "slide_deck_uid"' if slide_deck_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "files"' if files.nil?
        

        op = NovacastSDK::Client::Operation.new '/slide_decks/{slide_deck_uid}/upload', :POST

        # path parameters
        path_params = {}
        path_params['slide_deck_uid'] = slide_deck_uid
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

        
        NovacastSDK::EventV1::Models::SlideDeck.from_json resp.body
        
      end

      # 
      # Whitelist one or more users\n
      # @param user_set_uid user set uid
      # @param body request body
      # @return [WhitelistedUserList]
      def whitelist_users(user_set_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "user_set_uid"' if user_set_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/user_sets/{user_set_uid}/whitelist', :POST

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

        
        NovacastSDK::EventV1::Models::WhitelistedUserList.from_json resp.body
        
      end
    end
  end
end
