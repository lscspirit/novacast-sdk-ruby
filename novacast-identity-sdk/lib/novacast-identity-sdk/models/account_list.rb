module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccountList < NovacastSDK::BaseModel
        attr_accessor :accounts

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # the account objects
            :'accounts' => { base_name: 'accounts', type: 'Array[Account]', required: true }
          }
        end
      end
    end
  end
end
