module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessUserRoleList < NovacastSDK::BaseModel
        attr_accessor :user_roles

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # list of access user role object
            :'user_roles' => { base_name: 'user_roles', type: 'Array[AccessUserRole]', required: true }
            
          }
        end
      end
    end
  end
end
