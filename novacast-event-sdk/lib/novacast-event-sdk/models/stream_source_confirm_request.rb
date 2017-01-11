module NovacastSDK
  module EventV1
    module Models
      # 
      class StreamSourceConfirmRequest < NovacastSDK::BaseModel
        attr_accessor :token

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # stream source confirmation token
            :'token' => { base_name: 'token', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
