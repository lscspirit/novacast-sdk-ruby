module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessRoleList < NovacastSDK::BaseModel
        attr_accessor :roles

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # 
            :'roles' => { base_name: 'roles', type: 'Array[AccessRole]', required: false }
          }
        end
      end
    end
  end
end
