module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountCreationResponseList < NovacastSDK::BaseModel
        attr_accessor :responses

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # responses to individual account creation requests
            :'responses' => { base_name: 'responses', type: 'Array[AccountCreationResponse]', required: true }
          }
        end
      end
    end
  end
end
