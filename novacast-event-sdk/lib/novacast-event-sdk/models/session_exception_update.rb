module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionExceptionUpdate < NovacastSDK::BaseModel
        attr_accessor :session_uids

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of session uids
            :'session_uids' => { base_name: 'session_uids', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
