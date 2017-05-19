module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionAttendance < NovacastSDK::BaseModel
        attr_accessor :account_uid, :session_uid, :first_request_at, :last_request_at

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid for the user account
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: false },
            
            # the uid for the session
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: true },
            
            # the first time user sign on to the session
            :'first_request_at' => { base_name: 'first_request_at', type: 'DateTime', required: true },
            
            # the last time user sign on to the session
            :'last_request_at' => { base_name: 'last_request_at', type: 'DateTime', required: true }
            
          }
        end
      end
    end
  end
end
