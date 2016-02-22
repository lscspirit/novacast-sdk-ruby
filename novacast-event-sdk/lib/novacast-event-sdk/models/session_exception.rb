module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionException < NovacastSDK::BaseModel
        attr_accessor :session_uid, :session_pathname

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # session uid
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: true },
            
            # session pathname
            :'session_pathname' => { base_name: 'session_pathname', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
