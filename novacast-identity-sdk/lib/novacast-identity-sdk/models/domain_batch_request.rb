module NovacastSDK
  module IdentityV1
    module Models
      # 
      class DomainBatchRequest < NovacastSDK::BaseModel
        attr_accessor :domain_ids

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # the domain ids
            :'domain_ids' => { base_name: 'domain_ids', type: 'Array[Integer]', required: true }
            
          }
        end
      end
    end
  end
end
