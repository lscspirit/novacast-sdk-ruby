module NovacastSDK
  module EventV1
    module Models
      # 
      class EventStageRequest < NovacastSDK::BaseModel
        attr_accessor :stage

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # event stage
            :'stage' => { base_name: 'stage', type: 'String', required: true }
          }
        end
      end
    end
  end
end
