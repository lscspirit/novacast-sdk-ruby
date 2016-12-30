module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionModuleResource < NovacastSDK::BaseModel
        attr_accessor :usage, :rn

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # usage of this resource
            :'usage' => { base_name: 'usage', type: 'String', required: true },
            # unique resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true }
          }
        end
      end
    end
  end
end
