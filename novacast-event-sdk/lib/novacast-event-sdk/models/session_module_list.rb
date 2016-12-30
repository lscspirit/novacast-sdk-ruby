module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionModuleList < NovacastSDK::BaseModel
        attr_accessor :modules

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # a collection of session module configurations
            :'modules' => { base_name: 'modules', type: 'Array[SessionModule]', required: true }
          }
        end
      end
    end
  end
end
