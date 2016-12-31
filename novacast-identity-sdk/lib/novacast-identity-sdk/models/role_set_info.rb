module NovacastSDK
  module IdentityV1
    module Models
      # 
      class RoleSetInfo < NovacastSDK::BaseModel
        attr_accessor :key, :desc

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # role set unique key
            :'key' => { base_name: 'key', type: 'String', required: true },
            # role set description
            :'desc' => { base_name: 'desc', type: 'String', required: false }
          }
        end
      end
    end
  end
end
