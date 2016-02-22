module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessRolePermission < NovacastSDK::BaseModel
        attr_accessor :id, :role_set_id, :role_id, :role_name, :permission_id, :permission_name

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # role-permission id
            :'id' => { base_name: 'id', type: 'Integer', required: true },
            
            # role set id
            :'role_set_id' => { base_name: 'role_set_id', type: 'Integer', required: true },
            
            # access role id
            :'role_id' => { base_name: 'role_id', type: 'Integer', required: true },
            
            # access role name
            :'role_name' => { base_name: 'role_name', type: 'String', required: true },
            
            # access permission id
            :'permission_id' => { base_name: 'permission_id', type: 'Integer', required: true },
            
            # access permission name
            :'permission_name' => { base_name: 'permission_name', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
