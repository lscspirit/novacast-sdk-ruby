module NovacastSDK
  module EventV1
    module Models
      # 
      class AccessPolicyList < NovacastSDK::BaseModel
        attr_accessor :policies

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # a collection of access policies
            :'policies' => { base_name: 'policies', type: 'Array[AccessPolicy]', required: true }
          }
        end
      end
    end
  end
end
