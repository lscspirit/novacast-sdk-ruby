module NovacastSDK
  module EventV1
    module Models
      # 
      class RuntimeInfo < NovacastSDK::BaseModel
        attr_accessor :session_label, :event_name

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # label of the event session
            :'session_label' => { base_name: 'session_label', type: 'String', required: true },
            
            # name of the event
            :'event_name' => { base_name: 'event_name', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
