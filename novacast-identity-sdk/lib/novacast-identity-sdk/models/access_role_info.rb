module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessRoleInfo < NovacastSDK::BaseModel
        attr_accessor :name, :desc

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # name of the role
            :'name' => { base_name: 'name', type: 'String', required: true },
            # description of the role
            :'desc' => { base_name: 'desc', type: 'String', required: false }
          }
        end
      end
    end
  end
end
