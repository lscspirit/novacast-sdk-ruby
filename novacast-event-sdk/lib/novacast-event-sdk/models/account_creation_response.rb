module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountCreationResponse < NovacastSDK::BaseModel
        attr_accessor :account, :error

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # account object if creation succeed
            :'account' => { base_name: 'account', type: 'Account', required: false },
            # error messages if creation failed
            :'error' => { base_name: 'error', type: 'Error', required: false }
          }
        end
      end
    end
  end
end
