module NovacastSDK
  module IdentityV1
    module Models
      # 
      class PermissionList < NovacastSDK::BaseModel
        attr_accessor :permissions

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # permission list
            :'permissions' => { base_name: 'permissions', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
