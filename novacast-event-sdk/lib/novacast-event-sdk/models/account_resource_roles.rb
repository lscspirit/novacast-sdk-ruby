module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountResourceRoles < NovacastSDK::BaseModel
        attr_accessor :resource, :roles

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # resource name
            :'resource' => { base_name: 'resource', type: 'String', required: true },
            # an list of roles
            :'roles' => { base_name: 'roles', type: 'Array[String]', required: true }
          }
        end
      end
    end
  end
end
