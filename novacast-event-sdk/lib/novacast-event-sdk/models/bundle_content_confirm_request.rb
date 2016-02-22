module NovacastSDK
  module EventV1
    module Models
      # 
      class BundleContentConfirmRequest < NovacastSDK::BaseModel
        attr_accessor :token

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # confirmation token
            :'token' => { base_name: 'token', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
