module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessPermissionInfo < NovacastSDK::BaseModel
        attr_accessor :name, :desc

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # name of the permission
            :'name' => { base_name: 'name', type: 'String', required: true },
            # description of the permission
            :'desc' => { base_name: 'desc', type: 'String', required: false }
          }
        end
      end
    end
  end
end
