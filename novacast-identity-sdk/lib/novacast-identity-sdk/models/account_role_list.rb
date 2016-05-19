module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccountRoleList < NovacastSDK::BaseModel
        attr_accessor :accounts

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # account and role entries
            :'accounts' => { base_name: 'accounts', type: 'Array[AccountRoles]', required: true }
            
          }
        end
      end
    end
  end
end
