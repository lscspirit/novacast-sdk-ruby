module NovacastSDK
  module IdentityV1
    module Models
      # 
      class DeleteRoleRequest < NovacastSDK::BaseModel
        attr_accessor :role_set, :role, :resource

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # key of the role set
            :'role_set' => { base_name: 'role_set', type: 'String', required: true },
            
            # name of the role
            :'role' => { base_name: 'role', type: 'String', required: true },
            
            # name of the resource
            :'resource' => { base_name: 'resource', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
