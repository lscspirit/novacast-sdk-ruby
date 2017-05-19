module NovacastSDK
  module EventV1
    module Models
      # 
      class Attendance < NovacastSDK::BaseModel
        attr_accessor :event_uid, :account_type, :account_uid, :client_ip, :user_agent, :first_request_at, :last_request_at

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid for the event
            :'event_uid' => { base_name: 'event_uid', type: 'String', required: true },
            
            # account type
            :'account_type' => { base_name: 'account_type', type: 'String', required: true },
            
            # uid for the user account
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: true },
            
            # IP for the client
            :'client_ip' => { base_name: 'client_ip', type: 'String', required: false },
            
            # user agent for the client
            :'user_agent' => { base_name: 'user_agent', type: 'String', required: false },
            
            # the first time user sign on to the event
            :'first_request_at' => { base_name: 'first_request_at', type: 'DateTime', required: true },
            
            # the last time user sign on to the event
            :'last_request_at' => { base_name: 'last_request_at', type: 'DateTime', required: true }
            
          }
        end
      end
    end
  end
end
