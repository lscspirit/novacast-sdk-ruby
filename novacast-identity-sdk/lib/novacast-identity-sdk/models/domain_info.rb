module NovacastSDK
  module IdentityV1
    module Models
      # 
      class DomainInfo < NovacastSDK::BaseModel
        attr_accessor :key, :name

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # unique domain key
            :'key' => { base_name: 'key', type: 'String', required: true },
            
            # domain name
            :'name' => { base_name: 'name', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
