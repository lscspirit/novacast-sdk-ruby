module NovacastSDK
  module IdentityV1
    module Models
      # 
      class DomainList < NovacastSDK::BaseModel
        attr_accessor :domains

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # collection of domains
            :'domains' => { base_name: 'domains', type: 'Array[Domain]', required: true }
            
          }
        end
      end
    end
  end
end
