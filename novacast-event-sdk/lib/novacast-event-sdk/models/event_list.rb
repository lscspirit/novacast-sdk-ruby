module NovacastSDK
  module EventV1
    module Models
      # 
      class EventList < NovacastSDK::BaseModel
        attr_accessor :events

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # a collection of Event
            :'events' => { base_name: 'events', type: 'Array[Event]', required: true }
          }
        end
      end
    end
  end
end
