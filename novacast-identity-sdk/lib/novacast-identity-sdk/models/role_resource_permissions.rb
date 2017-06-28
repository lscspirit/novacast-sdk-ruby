module NovacastSDK
  module IdentityV1
    module Models
      # 
      class RoleResourcePermissions < NovacastSDK::BaseModel
        attr_accessor :role, :resource, :permissions

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # name of the role
            :'role' => { base_name: 'role', type: 'String', required: true },
            
            # name of the resource
            :'resource' => { base_name: 'resource', type: 'String', required: true },
            
            # list of permission names
            :'permissions' => { base_name: 'permissions', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
