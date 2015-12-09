module NovacastSDK
  module IdentityV1
    module Models
      # 
      class ResourcePermissions < NovacastSDK::BaseModel
        attr_accessor :resource, :permissions

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
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
