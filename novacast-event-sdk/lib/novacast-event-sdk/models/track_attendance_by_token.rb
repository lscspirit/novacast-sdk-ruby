module NovacastSDK
  module EventV1
    module Models
      # 
      class TrackAttendanceByToken < NovacastSDK::BaseModel
        attr_accessor :client_session_id, :client_ip, :user_agent, :session_uid, :access_token

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # client browser session id
            :'client_session_id' => { base_name: 'client_session_id', type: 'String', required: true },
            # client ip address
            :'client_ip' => { base_name: 'client_ip', type: 'String', required: false },
            # client browser user agent string
            :'user_agent' => { base_name: 'user_agent', type: 'String', required: false },
            # event session uid
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: false },
            # the access token representing the user
            :'access_token' => { base_name: 'access_token', type: 'String', required: true }
          }
        end
      end
    end
  end
end
