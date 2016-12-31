module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessRoleResource < NovacastSDK::BaseModel
        attr_accessor :role_id, :resource_id

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # access role id
            :'role_id' => { base_name: 'role_id', type: 'Integer', required: true },
            # access resource id
            :'resource_id' => { base_name: 'resource_id', type: 'Integer', required: true }
          }
        end
      end
    end
  end
end
