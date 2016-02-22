module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessRolePermissionList < NovacastSDK::BaseModel
        attr_accessor :items

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'items' => { base_name: 'items', type: 'Array[AccessRolePermission]', required: false }
            
          }
        end
      end
    end
  end
end
