module NovacastSDK
  module IdentityV1
    module Models
      # 
      class InlineResponse200 < NovacastSDK::BaseModel
        attr_accessor :valid

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # valid or not
            :'valid' => { base_name: 'valid', type: 'BOOLEAN', required: true }
          }
        end
      end
    end
  end
end
