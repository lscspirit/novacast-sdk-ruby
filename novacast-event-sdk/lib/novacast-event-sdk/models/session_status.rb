module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionStatus < NovacastSDK::BaseModel
        attr_accessor :user_count

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # number of user active in the session
            :'user_count' => { base_name: 'user_count', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
