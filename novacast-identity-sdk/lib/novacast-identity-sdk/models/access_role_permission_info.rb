module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessRolePermissionInfo < NovacastSDK::BaseModel
        attr_accessor :role, :permission

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # access role name
            :'role' => { base_name: 'role', type: 'String', required: true },
            
            # access permission name
            :'permission' => { base_name: 'permission', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
