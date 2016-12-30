module NovacastSDK
  module EventV1
    module Models
      # 
      class AccessPolicyUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :label, :filters

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # label
            :'label' => { base_name: 'label', type: 'String', required: false },
            # access policy filters
            :'filters' => { base_name: 'filters', type: 'Array[AccessFilter]', required: false }
          }
        end
      end
    end
  end
end
