module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountRoleUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :assign, :delete

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # roles to assign to the account
            :'assign' => { base_name: 'assign', type: 'Array[AccountResourceRoles]', required: false },
            
            # roles to remove from the account
            :'delete' => { base_name: 'delete', type: 'Array[AccountResourceRoles]', required: false }
            
          }
        end
      end
    end
  end
end
