module NovacastSDK
  module EventV1
    module Models
      # 
      class EventSessionCommandList < NovacastSDK::BaseModel
        attr_accessor :commands

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # event session commands collection
            :'commands' => { base_name: 'commands', type: 'Array[EventSessionCommand]', required: true }
            
          }
        end
      end
    end
  end
end
