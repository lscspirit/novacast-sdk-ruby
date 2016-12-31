module NovacastSDK
  module IdentityV1
    module Models
      # 
      class RoleResourcePermissionsList < NovacastSDK::BaseModel
        attr_accessor :items

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # list of role-resource-permissions mappings
            :'items' => { base_name: 'items', type: 'Array[RoleResourcePermissions]', required: true }
          }
        end
      end
    end
  end
end
