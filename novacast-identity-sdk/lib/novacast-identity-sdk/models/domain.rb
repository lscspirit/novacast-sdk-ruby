module NovacastSDK
  module IdentityV1
    module Models
      # 
      class Domain < NovacastSDK::BaseModel
        attr_accessor :name, :key, :id

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # domain name
            :'name' => { base_name: 'name', type: 'String', required: false },
            
            # unique domain key
            :'key' => { base_name: 'key', type: 'String', required: true },
            
            # domain id
            :'id' => { base_name: 'id', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
