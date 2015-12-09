module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessUserRole < NovacastSDK::BaseModel
        attr_accessor :id, :user_uid, :role_set_id, :role_id, :role_name, :resource_id, :resource_name

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # access user role id
            :'id' => { base_name: 'id', type: 'Integer', required: true },
            
            # user account uid
            :'user_uid' => { base_name: 'user_uid', type: 'String', required: true },
            
            # role set id
            :'role_set_id' => { base_name: 'role_set_id', type: 'Integer', required: true },
            
            # access role id
            :'role_id' => { base_name: 'role_id', type: 'Integer', required: true },
            
            # access role name
            :'role_name' => { base_name: 'role_name', type: 'String', required: true },
            
            # access resource id
            :'resource_id' => { base_name: 'resource_id', type: 'Integer', required: true },
            
            # access resource name
            :'resource_name' => { base_name: 'resource_name', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
