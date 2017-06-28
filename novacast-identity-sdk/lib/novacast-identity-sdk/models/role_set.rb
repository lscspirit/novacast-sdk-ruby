module NovacastSDK
  module IdentityV1
    module Models
      # 
      class RoleSet < NovacastSDK::BaseModel
        attr_accessor :key, :desc, :id

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # role set unique key
            :'key' => { base_name: 'key', type: 'String', required: true },
            
            # role set description
            :'desc' => { base_name: 'desc', type: 'String', required: false },
            
            # role set id
            :'id' => { base_name: 'id', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
