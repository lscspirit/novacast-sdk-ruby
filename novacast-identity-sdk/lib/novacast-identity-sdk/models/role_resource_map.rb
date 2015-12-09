module NovacastSDK
  module IdentityV1
    module Models
      # 
      class RoleResourceMap < NovacastSDK::BaseModel
        attr_accessor :role_name, :role_desc, :resource

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # name of the role
            :'role_name' => { base_name: 'role_name', type: 'String', required: true },
            
            # description of the role
            :'role_desc' => { base_name: 'role_desc', type: 'String', required: false },
            
            # name of the resource
            :'resource' => { base_name: 'resource', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
