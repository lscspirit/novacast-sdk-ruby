module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessRole < NovacastSDK::BaseModel
        attr_accessor :name, :desc, :id, :role_set_id

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # name of the role
            :'name' => { base_name: 'name', type: 'String', required: true },
            # description of the role
            :'desc' => { base_name: 'desc', type: 'String', required: false },
            # access role id
            :'id' => { base_name: 'id', type: 'Integer', required: true },
            # role set id
            :'role_set_id' => { base_name: 'role_set_id', type: 'Integer', required: true }
          }
        end
      end
    end
  end
end
