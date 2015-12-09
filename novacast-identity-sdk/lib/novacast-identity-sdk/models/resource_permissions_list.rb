module NovacastSDK
  module IdentityV1
    module Models
      # 
      class ResourcePermissionsList < NovacastSDK::BaseModel
        attr_accessor :items

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # list of resource-permissions mappings
            :'items' => { base_name: 'items', type: 'Array[ResourcePermissions]', required: true }
            
          }
        end
      end
    end
  end
end
