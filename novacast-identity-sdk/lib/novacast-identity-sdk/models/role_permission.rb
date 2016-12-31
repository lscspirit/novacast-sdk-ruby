module NovacastSDK
  module IdentityV1
    module Models
      # 
      class RolePermission < NovacastSDK::BaseModel
        attr_accessor :permission_id

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # access permission id
            :'permission_id' => { base_name: 'permission_id', type: 'Integer', required: false }
          }
        end
      end
    end
  end
end
