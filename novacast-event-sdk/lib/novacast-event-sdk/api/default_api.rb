module NovacastSDK
  module EventV1
    class DefaultApi < NovacastSDK::Client::BaseClient
      # SDK Configuration
      def self.config
        NovacastSDK::EventV1.config
      end


      # 
      # Add one or more whitelisted patterns\n
      # @param user_set_uid user set uid
      # @param body request body
      # @return [WhitelistPatternList]
      def add_whitelist_patterns(user_set_uid, body)
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

        
        NovacastSDK::EventV1::Models::WhitelistPatternList.from_json resp.body
        
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
      # Close all the closable panels for this session\n
      # @param session_uid event session uid
      # @return [nil]
      def close_session_panels(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/close_panels', :PUT

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

        
        nil
        
      end

      # 
      # Confirm a pre-upload asset bundle content\n
      # @param asset_bundle_uid asset bundle uid
      # @param body request body
      # @return [BundleContent]
      def confirm_bundle_content(asset_bundle_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "asset_bundle_uid"' if asset_bundle_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/assets/{asset_bundle_uid}/confirm', :POST

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
      # Create a new active path with mapping(s)\n
      # @param event_uid uid of the event
      # @param body request body
      # @return [ActivePath]
      def create_active_path(event_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/active_paths', :POST

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

        
        NovacastSDK::EventV1::Models::ActivePath.from_json resp.body
        
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
      # Create a new channel account\n
      # @param channel_uid uid of the channel
      # @param body request body
      # @return [Account]
      def create_channel_account(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/accounts', :POST

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

        
        NovacastSDK::EventV1::Models::Account.from_json resp.body
        
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
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/event_pages', :POST

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
          { name: 'accessKey', key: 'access_token', in_query: true },
        
          { name: 'previewToken', key: 'preview_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::ForumPost.from_json resp.body
        
      end

      # 
      # create a submission for the given poll\n
      # @param session_uid the session that this poll is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [QuestionSubmission]
      def create_poll_submission(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/polling/{question_manifest_uid}/submissions', :POST

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
          { name: 'accessKey', key: 'access_token', in_query: true },
        
          { name: 'previewToken', key: 'preview_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::QuestionSubmission.from_json resp.body
        
      end

      # 
      # Create a new event public alias\n
      # @param channel_uid channel uid
      # @param body request body
      # @return [PublicAlias]
      def create_public_alias(channel_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/public_aliases', :POST

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

        
        NovacastSDK::EventV1::Models::PublicAlias.from_json resp.body
        
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
      # add statistics for the given questionnaire status\n
      # @param session_uid the session that this questionnaire is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @param body request body
      # @return [QuestionSubmission]
      def create_questionnaire_submission(session_uid, question_manifest_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/questionnaire/{question_manifest_uid}/submissions', :POST

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
          { name: 'accessKey', key: 'access_token', in_query: true },
        
          { name: 'previewToken', key: 'preview_token', in_query: true }
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
      # Delete an active path\n
      # @param event_uid uid of the event
      # @param path_uid uid of the active path
      # @return [ActivePath]
      def delete_active_path(event_uid, path_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "path_uid"' if path_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/active_paths/{path_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['path_uid'] = path_uid
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

        
        NovacastSDK::EventV1::Models::ActivePath.from_json resp.body
        
      end

      # 
      # Delete an asset bundle content\n
      # @param asset_bundle_uid asset bundle uid
      # @param bundle_content_uid uid for the bundle content to delete
      # @return [BundleContent]
      def delete_bundle_content(asset_bundle_uid, bundle_content_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "asset_bundle_uid"' if asset_bundle_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "bundle_content_uid"' if bundle_content_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/assets/{asset_bundle_uid}/delete_content/{bundle_content_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['asset_bundle_uid'] = asset_bundle_uid
        path_params['bundle_content_uid'] = bundle_content_uid
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
      # Delete the event page\n
      # @param event_page_uid event page uid
      # @return [EventPage]
      def delete_event_page(event_page_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_page_uid"' if event_page_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/event_pages/{event_page_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['event_page_uid'] = event_page_uid
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
      # Delete the event page content for a specific locale\n
      # @param event_page_uid event page uid
      # @param content_locale locale of the page content
      # @return [PageContentDeleteResponse]
      def delete_event_page_content(event_page_uid, content_locale)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_page_uid"' if event_page_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "content_locale"' if content_locale.nil?
        

        op = NovacastSDK::Client::Operation.new '/event_pages/{event_page_uid}/contents/{content_locale}', :DELETE

        # path parameters
        path_params = {}
        path_params['event_page_uid'] = event_page_uid
        path_params['content_locale'] = content_locale
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

        
        NovacastSDK::EventV1::Models::PageContentDeleteResponse.from_json resp.body
        
      end

      # 
      # delete an event session\n
      # @param session_uid event session uid
      # @return [EventSession]
      def delete_event_session(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}', :DELETE

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

        
        NovacastSDK::EventV1::Models::EventSession.from_json resp.body
        
      end

      # 
      # Remove an public alias mapping\n
      # @param public_alias_uid uid of the public alias
      # @return [PublicAlias]
      def delete_public_alias(public_alias_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "public_alias_uid"' if public_alias_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/public_aliases/{public_alias_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['public_alias_uid'] = public_alias_uid
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
      # Delete a stream medium\n
      # @param stream_medium_uid stream medium uid
      # @return [StreamMedium]
      def delete_stream_medium(stream_medium_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "stream_medium_uid"' if stream_medium_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/streams/{stream_medium_uid}', :DELETE

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
      # Delete a stream source\n
      # @param stream_source_uid stream source uid
      # @return [StreamSource]
      def delete_stream_source(stream_source_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "stream_source_uid"' if stream_source_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/stream_sources/{stream_source_uid}', :DELETE

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
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::StreamSource.from_json resp.body
        
      end

      # 
      # Removes a whitelisted pattern from the user set\n
      # @param pattern_uid whitelisted pattern uid
      # @return [WhitelistPattern]
      def delete_whitelist_pattern(pattern_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "pattern_uid"' if pattern_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/whitelist_patterns/{pattern_uid}', :DELETE

        # path parameters
        path_params = {}
        path_params['pattern_uid'] = pattern_uid
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

        
        NovacastSDK::EventV1::Models::WhitelistPattern.from_json resp.body
        
      end

      # 
      # dismiss a published forum post\n
      # @param forum_post_uid uid of the forum post
      # @return [ForumPost]
      def dismiss_forum_post(forum_post_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "forum_post_uid"' if forum_post_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/posts/{forum_post_uid}/publish', :DELETE

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

        
        NovacastSDK::EventV1::Models::ForumPost.from_json resp.body
        
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
      # Get a preview token to access a event in preview mode\n
      # @param event_uid uid of the event to generate the token for
      # @param ttl the number of seconds this token is valid for
      # @param session_ttl the number of seconds each preview mode session is valid for
      # @return [PreviewToken]
      def generate_preview_token(event_uid, ttl, session_ttl)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "ttl"' if ttl.nil?
        
        raise ArgumentError, 'Missing required parameter "session_ttl"' if session_ttl.nil?
        

        op = NovacastSDK::Client::Operation.new '/preview', :GET

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['event_uid'] = event_uid
        query_params['ttl'] = ttl
        query_params['session_ttl'] = session_ttl
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::PreviewToken.from_json resp.body
        
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
      # Get the displayable informations for a list of account uids\n
      # @param session_uid the session uid
      # @param body request body
      # @return [GetAccountDisplayInfoResponse]
      def get_account_display_infos(session_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/account_display_infos', :POST

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

        
        NovacastSDK::EventV1::Models::GetAccountDisplayInfoResponse.from_json resp.body
        
      end

      # 
      # Get the config and mappings for a given active path\n
      # @param event_uid uid of the event
      # @param path_uid uid of the active path
      # @return [ActivePath]
      def get_active_path(event_uid, path_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "path_uid"' if path_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/active_paths/{path_uid}', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['path_uid'] = path_uid
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

        
        NovacastSDK::EventV1::Models::ActivePath.from_json resp.body
        
      end

      # 
      # get the currently active polls\n
      # @param session_uid the session that we are querying for
      # @return [ActivePollList]
      def get_active_polls(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/polling/get_active_polls', :GET

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

        
        NovacastSDK::EventV1::Models::ActivePollList.from_json resp.body
        
      end

      # 
      # get the currently active Questionnaires\n
      # @param session_uid the session that we are querying for
      # @return [ActiveQuestionnaireList]
      def get_active_questionnaires(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/questionnaire/get_active_questionnaires', :GET

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

        
        NovacastSDK::EventV1::Models::ActiveQuestionnaireList.from_json resp.body
        
      end

      # 
      # 
      # @param session_uid the session for which the commands are to be loaded for
      # @return [EventSessionCommandList]
      def get_active_session_commands(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/event_session_commands/active', :GET

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

        
        NovacastSDK::EventV1::Models::EventSessionCommandList.from_json resp.body
        
      end

      # 
      # Get all the possible filter options\n
      # @return [TranslationFilterOptionsResponse]
      def get_all_filter_options()
        # checks if all required parameters are set
        

        op = NovacastSDK::Client::Operation.new '/translation_service/all_filter_options', :GET

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

        
        NovacastSDK::EventV1::Models::TranslationFilterOptionsResponse.from_json resp.body
        
      end

      # 
      # Get the archive activities for a given session\n
      # @param session_uid the session that this questionnaire is relevant to
      # @return [ArchiveActivityList]
      def get_archive_activities(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/archive_session_activities', :GET

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

        
        NovacastSDK::EventV1::Models::ArchiveActivityList.from_json resp.body
        
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
      # Get all accounts belonging to the channel\n
      # @param channel_uid uid of the channel
      # @return [AccountExtendedList]
      def get_channel_accounts(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/accounts', :GET

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

        
        NovacastSDK::EventV1::Models::AccountExtendedList.from_json resp.body
        
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
      # Get all the page contents of a event page\n
      # @param event_page_uid event page uid
      # @return [PageContentList]
      def get_contents_for_event_page(event_page_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_page_uid"' if event_page_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/event_pages/{event_page_uid}/contents', :GET

        # path parameters
        path_params = {}
        path_params['event_page_uid'] = event_page_uid
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

        
        NovacastSDK::EventV1::Models::PageContentList.from_json resp.body
        
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
      # Get dictionary for a given locale\n
      # @param locale the locale that we are looking for
      # @param [Hash] opts the optional parameters
      # @option opts [String] :category the category that we are interested in
      # @return [DictionaryQueryResponse]
      def get_dictionary_for_locale(locale, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "locale"' if locale.nil?
        

        op = NovacastSDK::Client::Operation.new '/translation_service/get_dictionary', :GET

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['locale'] = locale
        query_params['category'] = opts[:category] if opts[:category]
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::DictionaryQueryResponse.from_json resp.body
        
      end

      # 
      # Get a list of users belongs to this user set\n
      # @param user_set_uid user set uid
      # @param [Hash] opts the optional parameters
      # @option opts [Float] :max_records optional max records for return
      # @option opts [DateTime] :from_date optional from date filter in ISO8601 format
      # @option opts [DateTime] :to_date optional to date filter in ISO8601 format
      # @return [EnrollmentListResponse]
      def get_enrollments(user_set_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "user_set_uid"' if user_set_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/user_sets/{user_set_uid}/enrollments', :GET

        # path parameters
        path_params = {}
        path_params['user_set_uid'] = user_set_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['max_records'] = opts[:max_records] if opts[:max_records]
        query_params['from_date'] = opts[:from_date] if opts[:from_date]
        query_params['to_date'] = opts[:to_date] if opts[:to_date]
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::EnrollmentListResponse.from_json resp.body
        
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
      # Get all active paths and their mappings of the event\n
      # @param event_uid uid of the event
      # @return [ActivePathList]
      def get_event_active_paths(event_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/active_paths', :GET

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

        
        NovacastSDK::EventV1::Models::ActivePathList.from_json resp.body
        
      end

      # 
      # Lookup event level attendances
      # @param event_uid event uid
      # @param [Hash] opts the optional parameters
      # @option opts [Float] :max_records optional max records for return
      # @option opts [DateTime] :from_date optional from date filter in ISO8601 format
      # @option opts [DateTime] :to_date optional to date filter in ISO8601 format
      # @return [AttendanceResponse]
      def get_event_attendances(event_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/attendances/events/{event_uid}', :GET

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['max_records'] = opts[:max_records] if opts[:max_records]
        query_params['from_date'] = opts[:from_date] if opts[:from_date]
        query_params['to_date'] = opts[:to_date] if opts[:to_date]
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::AttendanceResponse.from_json resp.body
        
      end

      # 
      # Get the event page\n
      # @param event_page_uid event page uid
      # @return [EventPage]
      def get_event_page(event_page_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_page_uid"' if event_page_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/event_pages/{event_page_uid}', :GET

        # path parameters
        path_params = {}
        path_params['event_page_uid'] = event_page_uid
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
      # Get event page content for a specific locale\n
      # @param event_page_uid event page uid
      # @param content_locale locale of the page content
      # @return [PageContent]
      def get_event_page_content(event_page_uid, content_locale)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_page_uid"' if event_page_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "content_locale"' if content_locale.nil?
        

        op = NovacastSDK::Client::Operation.new '/event_pages/{event_page_uid}/contents/{content_locale}', :GET

        # path parameters
        path_params = {}
        path_params['event_page_uid'] = event_page_uid
        path_params['content_locale'] = content_locale
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
      # Get the status of event session\n
      # @param session_uid event session uid
      # @return [SessionStatus]
      def get_event_session_status(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/status', :GET

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

        
        NovacastSDK::EventV1::Models::SessionStatus.from_json resp.body
        
      end

      # 
      # Get the uids of all users active in the event session\n
      # @param session_uid event session uid
      # @return [SessionUserList]
      def get_event_session_users(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/users', :GET

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

        
        NovacastSDK::EventV1::Models::SessionUserList.from_json resp.body
        
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
      # Get dictionary for a given set of filter options\n
      # @param [Hash] opts the optional parameters
      # @option opts [String] :locale the locale that we are looking for
      # @option opts [String] :category the category that we are interested in
      # @return [DictionaryFilterResponse]
      def get_filtered_dictionary(opts = {})
        # checks if all required parameters are set
        

        op = NovacastSDK::Client::Operation.new '/translation_service/filter_dictionary', :GET

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['locale'] = opts[:locale] if opts[:locale]
        query_params['category'] = opts[:category] if opts[:category]
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::DictionaryFilterResponse.from_json resp.body
        
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
          { name: 'accessKey', key: 'access_token', in_query: true },
        
          { name: 'previewToken', key: 'preview_token', in_query: true }
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
          { name: 'accessKey', key: 'access_token', in_query: true },
        
          { name: 'previewToken', key: 'preview_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::ForumPostList.from_json resp.body
        
      end

      # 
      # Get all forum posts (with extended information and subbmitter account identifier) of the session\n
      # @param session_uid uid of the session
      # @param [Hash] opts the optional parameters
      # @option opts [String] :data_set_uid uid of the data set. Default to the active data set of the event
      # @return [ForumPostExtendedList]
      def get_forum_posts_with_accounts(session_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/sessions/{session_uid}/with_accounts', :GET

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
      # Get all the event pages of the event\n
      # @param event_uid event uid
      # @return [EventPageList]
      def get_pages_for_event(event_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/event_pages', :GET

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

        
        NovacastSDK::EventV1::Models::EventPageList.from_json resp.body
        
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
      # get all previous submissions from this user for this given session\n
      # @param session_uid the session that this poll is relevant to
      # @return [QuestionSubmissionList]
      def get_prior_poll_submissions(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/polling/prior_submissions', :GET

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
          { name: 'accessKey', key: 'access_token', in_query: true },
        
          { name: 'previewToken', key: 'preview_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::QuestionSubmissionList.from_json resp.body
        
      end

      # 
      # get all previous submissions from this user for this given session\n
      # @param session_uid the session that this questionnaire is relevant to
      # @return [QuestionSubmissionList]
      def get_prior_questionnaire_submissions(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/questionnaire/prior_submissions', :GET

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
          { name: 'accessKey', key: 'access_token', in_query: true },
        
          { name: 'previewToken', key: 'preview_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::QuestionSubmissionList.from_json resp.body
        
      end

      # 
      # Get an public alias mapping\n
      # @param public_alias_uid uid of the public alias
      # @return [PublicAlias]
      def get_public_alias(public_alias_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "public_alias_uid"' if public_alias_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/public_aliases/{public_alias_uid}', :GET

        # path parameters
        path_params = {}
        path_params['public_alias_uid'] = public_alias_uid
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
      # Get all the public aliases of the channel\n
      # @param channel_uid channel uid
      # @return [PublicAliasList]
      def get_public_aliases_for_channel(channel_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/public_aliases', :GET

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

        
        NovacastSDK::EventV1::Models::PublicAliasList.from_json resp.body
        
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
      # @param session_uid the session that the submissions belong to
      # @param [Hash] opts the optional parameters
      # @option opts [String] :question_content_uid optional filter submission by question content uid
      # @option opts [Float] :max_records optional max records for return
      # @option opts [DateTime] :from_date optional from date filter
      # @option opts [DateTime] :to_date optional to date filter
      # @return [QuestionSubmissionQueryResponse]
      def get_question_submissions(question_manifest_uid, session_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_manifests/{question_manifest_uid}/sessions/{session_uid}/submissions', :GET

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
        query_params['question_content_uid'] = opts[:question_content_uid] if opts[:question_content_uid]
        query_params['max_records'] = opts[:max_records] if opts[:max_records]
        query_params['from_date'] = opts[:from_date] if opts[:from_date]
        query_params['to_date'] = opts[:to_date] if opts[:to_date]
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::QuestionSubmissionQueryResponse.from_json resp.body
        
      end

      # 
      # Get the questionnaire Content\n
      # @param session_uid the session that this questionnaire is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @return [Questionnaire]
      def get_questionnaire_content(session_uid, question_manifest_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        

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
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::Questionnaire.from_json resp.body
        
      end

      # 
      # Get the questionnaire status\n
      # @param session_uid the session that this questionnaire is relevant to
      # @param question_manifest_uid quesiton manifest associated uid
      # @return [QuestionnaireStatus]
      def get_questionnaire_status(session_uid, question_manifest_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "question_manifest_uid"' if question_manifest_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/questionnaire/{question_manifest_uid}/status', :GET

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
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::QuestionnaireStatus.from_json resp.body
        
      end

      # 
      # Get configuration required for setting up a RealTimeSession\n
      # @return [RTSConfig]
      def get_rts_config()
        # checks if all required parameters are set
        

        op = NovacastSDK::Client::Operation.new '/rts/config', :GET

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

        
        NovacastSDK::EventV1::Models::RTSConfig.from_json resp.body
        
      end

      # 
      # Lookup session attendances by session uid, which also include corresponding event level attendances
      # @param session_uid the session uid
      # @param [Hash] opts the optional parameters
      # @option opts [Float] :max_records optional max records for return
      # @option opts [DateTime] :from_date optional from date filter in ISO8601 format
      # @option opts [DateTime] :to_date optional to date filter in ISO8601 format
      # @return [SessionAttendanceResponse]
      def get_session_attendances(session_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/attendances/sessions/{session_uid}', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['max_records'] = opts[:max_records] if opts[:max_records]
        query_params['from_date'] = opts[:from_date] if opts[:from_date]
        query_params['to_date'] = opts[:to_date] if opts[:to_date]
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::SessionAttendanceResponse.from_json resp.body
        
      end

      # 
      # get all session commands for a session
      # @param session_uid the session for which the commands are to be loaded for
      # @return [EventSessionCommandList]
      def get_session_commands(session_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/event_session_commands', :GET

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

        
        NovacastSDK::EventV1::Models::EventSessionCommandList.from_json resp.body
        
      end

      # 
      # Get a list of users belonging to this session&#39;s user set\n
      # @param session_uid the session uid
      # @param [Hash] opts the optional parameters
      # @option opts [Float] :max_records optional max records for return
      # @option opts [DateTime] :from_date optional from date filter in ISO8601 format
      # @option opts [DateTime] :to_date optional to date filter in ISO8601 format
      # @return [EnrollmentListResponse]
      def get_session_enrollments(session_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}/enrollments', :GET

        # path parameters
        path_params = {}
        path_params['session_uid'] = session_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['max_records'] = opts[:max_records] if opts[:max_records]
        query_params['from_date'] = opts[:from_date] if opts[:from_date]
        query_params['to_date'] = opts[:to_date] if opts[:to_date]
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::EnrollmentListResponse.from_json resp.body
        
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
      # Get template manifests for a specific type\n
      # @param manifest_type the type of template
      # @return [TemplateManifestList]
      def get_template_manifest_by_type(manifest_type)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "manifest_type"' if manifest_type.nil?
        

        op = NovacastSDK::Client::Operation.new '/template_manifests/find_by_type', :GET

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['manifest_type'] = manifest_type
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::TemplateManifestList.from_json resp.body
        
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
      # Get all whitelisted patterns in the user set\n
      # @param user_set_uid user set uid
      # @return [WhitelistPatternList]
      def get_whitelist_patterns(user_set_uid)
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

        
        NovacastSDK::EventV1::Models::WhitelistPatternList.from_json resp.body
        
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
          { name: 'accessKey', key: 'access_token', in_query: true },
        
          { name: 'previewToken', key: 'preview_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::EventV1::Models::ForumPostLike.from_json resp.body
        
      end

      # 
      # (LiveMeeting) connect to the live meeting session\n
      # @param session_uid session uid
      # @param body request body
      # @return [LiveMeetingConnectResponse]
      def live_meeting_connect(session_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/live_meeting/sessions/{session_uid}/connect', :POST

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

        
        NovacastSDK::EventV1::Models::LiveMeetingConnectResponse.from_json resp.body
        
      end

      # 
      # (LiveMeeting) send a chat message to the live meeting\n
      # @param meeting_uid live meeting uid
      # @param body request body
      # @return [LiveMeetingMessageResponse]
      def live_meeting_message(meeting_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "meeting_uid"' if meeting_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/live_meeting/meetings/{meeting_uid}/message', :POST

        # path parameters
        path_params = {}
        path_params['meeting_uid'] = meeting_uid
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

        
        NovacastSDK::EventV1::Models::LiveMeetingMessageResponse.from_json resp.body
        
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
      # publish a particular forum post\n
      # @param forum_post_uid uid of the forum post
      # @return [ForumPost]
      def publish_forum_post(forum_post_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "forum_post_uid"' if forum_post_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/mods/forum_post/posts/{forum_post_uid}/publish', :PUT

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

        
        NovacastSDK::EventV1::Models::ForumPost.from_json resp.body
        
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
      # a runtime operation that switches active mapping for the given path\n
      # @param event_uid uid of the event
      # @param path_uid uid of the active path
      # @param body request body
      # @return [ActivePath]
      def switch_active_mapping(event_uid, path_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "path_uid"' if path_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/active_paths/{path_uid}/switch_active_mapping', :PUT

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['path_uid'] = path_uid
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

        
        NovacastSDK::EventV1::Models::ActivePath.from_json resp.body
        
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
      # Update the roles assigned to an account\n
      # @param account_uid uid of the account
      # @param body request body
      # @return [AccountResourceRolesList]
      def update_account_roles(account_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "account_uid"' if account_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts/{account_uid}/roles', :PUT

        # path parameters
        path_params = {}
        path_params['account_uid'] = account_uid
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

        
        NovacastSDK::EventV1::Models::AccountResourceRolesList.from_json resp.body
        
      end

      # 
      # Update a active path and its mappings\n
      # @param event_uid uid of the event
      # @param path_uid uid of the active path
      # @param body request body
      # @return [ActivePath]
      def update_active_path(event_uid, path_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_uid"' if event_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "path_uid"' if path_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/events/{event_uid}/active_paths/{path_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['event_uid'] = event_uid
        path_params['path_uid'] = path_uid
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

        
        NovacastSDK::EventV1::Models::ActivePath.from_json resp.body
        
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
      # Update a given dictionary definition\n
      # @param body request body
      # @return [DictionaryEntry]
      def update_dictionary_definition(body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/translation_service/update_definition', :PUT

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

        
        NovacastSDK::EventV1::Models::DictionaryEntry.from_json resp.body
        
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
      # @param event_page_uid event page uid
      # @param body request body
      # @return [EventPage]
      def update_event_page(event_page_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_page_uid"' if event_page_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/event_pages/{event_page_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['event_page_uid'] = event_page_uid
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
      # @param event_page_uid event page uid
      # @param body request body
      # @return [PageContent]
      def update_event_page_content(event_page_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "event_page_uid"' if event_page_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/event_pages/{event_page_uid}/contents', :PUT

        # path parameters
        path_params = {}
        path_params['event_page_uid'] = event_page_uid
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
      # Update the info for an event session\n
      # @param session_uid event session uid
      # @param body update session info
      # @return [EventSession]
      def update_event_session(session_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "session_uid"' if session_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/sessions/{session_uid}', :PUT

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

        
        NovacastSDK::EventV1::Models::EventSession.from_json resp.body
        
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
      # @return [LiveCastPageChangeResponse]
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

        
        NovacastSDK::EventV1::Models::LiveCastPageChangeResponse.from_json resp.body
        
      end

      # 
      # Update an public alias\n
      # @param public_alias_uid uid of the public alias
      # @param body request body
      # @return [PublicAlias]
      def update_public_alias(public_alias_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "public_alias_uid"' if public_alias_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/public_aliases/{public_alias_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['public_alias_uid'] = public_alias_uid
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

        
        NovacastSDK::EventV1::Models::PublicAlias.from_json resp.body
        
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
      # Update slide properties\n
      # @param slide_uid slide uid
      # @param body request body
      # @return [Slide]
      def update_slide(slide_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "slide_uid"' if slide_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/slides/{slide_uid}', :PUT

        # path parameters
        path_params = {}
        path_params['slide_uid'] = slide_uid
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

        
        NovacastSDK::EventV1::Models::Slide.from_json resp.body
        
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
      # Update stream medium\n
      # @param stream_medium_uid stream medium uid
      # @param body request body
      # @return [StreamMedium]
      def update_stream_medium(stream_medium_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "stream_medium_uid"' if stream_medium_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/streams/{stream_medium_uid}', :PUT

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

        
        NovacastSDK::EventV1::Models::StreamMedium.from_json resp.body
        
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
      # Upload an account feed for creating channel accounts\n
      # @param channel_uid uid of the channel
      # @param file account feed file
      # @return [AccountCreationResponseList]
      def upload_account_feed(channel_uid, file)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "channel_uid"' if channel_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "file"' if file.nil?
        

        op = NovacastSDK::Client::Operation.new '/channels/{channel_uid}/accounts/feed', :POST

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

        
        NovacastSDK::EventV1::Models::AccountCreationResponseList.from_json resp.body
        
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
    end
  end
end
