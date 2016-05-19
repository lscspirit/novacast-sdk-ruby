module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccountRoles < NovacastSDK::BaseModel
        attr_accessor :uid, :identifier, :domain_id, :provider_id, :roles

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # account unique id (uid)
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # account identifier (username or email)
            :'identifier' => { base_name: 'identifier', type: 'String', required: true },
            
            # domain id
            :'domain_id' => { base_name: 'domain_id', type: 'Integer', required: true },
            
            # authentication provider id
            :'provider_id' => { base_name: 'provider_id', type: 'Integer', required: true },
            
            # list of role on resource
            :'roles' => { base_name: 'roles', type: 'Array[RoleResource]', required: true }
            
          }
        end
      end
    end
  end
end
