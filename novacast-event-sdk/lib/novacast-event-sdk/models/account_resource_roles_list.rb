module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountResourceRolesList < NovacastSDK::BaseModel
        attr_accessor :resource_roles

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # list of account resource roles
            :'resource_roles' => { base_name: 'resource_roles', type: 'Array[AccountResourceRoles]', required: true }
          }
        end
      end
    end
  end
end
