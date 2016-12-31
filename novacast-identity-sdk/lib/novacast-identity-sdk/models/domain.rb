module NovacastSDK
  module IdentityV1
    module Models
      # 
      class Domain < NovacastSDK::BaseModel
        attr_accessor :key, :name, :id

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # unique domain key
            :'key' => { base_name: 'key', type: 'String', required: true },
            # domain name
            :'name' => { base_name: 'name', type: 'String', required: false },
            # domain id
            :'id' => { base_name: 'id', type: 'Integer', required: true }
          }
        end
      end
    end
  end
end
