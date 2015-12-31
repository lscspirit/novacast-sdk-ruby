module NovacastSDK
  module EventV1
    module Models
      # 
      class EventSessionList < NovacastSDK::BaseModel
        attr_accessor :sessions

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of event session objects
            :'sessions' => { base_name: 'sessions', type: 'Array[EventSession]', required: true }
            
          }
        end
      end
    end
  end
end
