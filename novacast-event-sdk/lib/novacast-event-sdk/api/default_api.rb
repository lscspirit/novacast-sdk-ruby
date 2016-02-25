module NovacastSDK
  module EventV1
    class DefaultApi < NovacastSDK::Client::BaseClient
      # SDK Configuration
      def self.config
        NovacastSDK::EventV1.config
      end


      # 
      # Get asset bundle with contents
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
      # Confirm a pre-upload asset bundle content
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
      # Get an asset bundle content
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
      # Pre upload asset bundle content
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
      # Get a list of all channel for the current user
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
      # Create a new channel
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
      # Get a channel
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
      # Update a channel
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
      # Get information for all asset bundles in a channel
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
      # Create a new asset bundle
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
      # Get all events belongs to this channel
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
      # Create a new event
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
      # Get the list of question sets
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
      # Create a new question set
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
      # Get all slide deck for the channel
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
      # Create a new slide deck
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
      # Get all the streams for this channel
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
      # Create a new stream medium
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
      # Get all user sets for channel
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
      # Create a new user set
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
      # Get a data set
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
      # Get all partitions for a data set
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
      # Get Event with extended details
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
      # Update an event
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
      # Record user attendance
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
      # Get event content by page mapping
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
      # Get event content by path
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
      # Get all data sets for the event
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
      # Create a new data set for the event
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
      # Get the page content of a event page
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
      # Update the page content of the event page
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
      # Get the session exceptions for a shared session page
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
      # Update the session exceptions for a shared session page
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
      # Get the list of page mappings for the event
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
      # Create a new page mapping
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
      # Create a new page for a event
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
      # Get the event page
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
      # Update the event page
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
      # Get runtime by path
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
      # Get all sessions for the event
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
      # Create a new session for the event
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
      # Update the event stage
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
      # Get the user set for the event
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
      # (LiveCast) Get the current LiveCast module state
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
      # Get the current live cast page
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
      # (LiveCast) Change slide page\nThis will also publish a LiveCastSlidePage command to the session pub sub channel
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
      # Get user feedbacks submitted for a session
      # @param session_uid param description
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
        query_params['data_set_uid'] = opts['data_set_uid'] if opts['data_set_uid']
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
      # Post a new user feedback
      # @param session_uid param description
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
      # Update a page mapping
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
      # Delete a page mapping
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
      # Get the list of all question content types
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
      # Get a question content
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
      # Update a question content
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
      # Delete a question content
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
      # Get all submissions for a question content
      # @param question_content_uid question content uid
      # @return [QuestionSubmissionList]
      def get_question_submissions(question_content_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_content_uid"' if question_content_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_contents/{question_content_uid}/submissions', :GET

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

        
        NovacastSDK::EventV1::Models::QuestionSubmissionList.from_json resp.body
        
      end

      # 
      # Get question content submissions for a user
      # @param question_content_uid question content uid
      # @param user_uid uid of the submitter
      # @return [QuestionSubmissionList]
      def get_question_submissions_for_user(question_content_uid, user_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_content_uid"' if question_content_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "user_uid"' if user_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_contents/{question_content_uid}/users/{user_uid}/submissions', :GET

        # path parameters
        path_params = {}
        path_params['question_content_uid'] = question_content_uid
        path_params['user_uid'] = user_uid
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
      # Create a question content submission
      # @param question_content_uid question content uid
      # @param user_uid uid of the submitter
      # @param body request body
      # @return [QuestionSubmission]
      def create_question_submission(question_content_uid, user_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "question_content_uid"' if question_content_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "user_uid"' if user_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/question_contents/{question_content_uid}/users/{user_uid}/submissions', :POST

        # path parameters
        path_params = {}
        path_params['question_content_uid'] = question_content_uid
        path_params['user_uid'] = user_uid
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
      # Get a question set
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
      # Update a question set
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
      # Delete a question set
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
      # Get all question contents for the question set
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
      # Create a new question content
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
      # Reorder question set contents
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
      # Get an event session with extended details
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
      # Update the module configurations for a event session
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
      # Get the page runtime configuration of event session
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
      # Get a slide deck
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
      # Update the slide deck
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
      # Delete a slide deck
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
      # Delete slides from slide deck
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
      # Rearrange the order of slide
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
      # Upload a slide
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
      # Confirm the successful uploading of remote stream source
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
      # Get stream medium object
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
      # Create a new source for a stream medium
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
      # Create a stream source for remote resource
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
      # Get a user set with extended details
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
      # Update a user set
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
      # Enroll an account to a user set
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
      # White-list an account in a user set
      # @param user_set_uid user set uid
      # @param body request body
      # @return [WhiteListedUserList]
      def white_list_accounts(user_set_uid, body)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "user_set_uid"' if user_set_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "body"' if body.nil?
        

        op = NovacastSDK::Client::Operation.new '/user_sets/{user_set_uid}/white_list', :POST

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

        
        NovacastSDK::EventV1::Models::WhiteListedUserList.from_json resp.body
        
      end
    end
  end
end
