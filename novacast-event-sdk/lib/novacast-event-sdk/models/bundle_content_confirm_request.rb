module NovacastSDK
  module EventV1
    module Models
      # 
      class BundleContentConfirmRequest < NovacastSDK::BaseModel
        attr_accessor :token, :file_path

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # confirmation token
            :'token' => { base_name: 'token', type: 'String', required: true },
            
            # file path of the content to confirm
            :'file_path' => { base_name: 'file_path', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
