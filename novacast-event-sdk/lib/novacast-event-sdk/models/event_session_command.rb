module NovacastSDK
  module EventV1
    module Models
      # 
      class EventSessionCommand < NovacastSDK::BaseModel
        attr_accessor :command, :payload

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # the command string
            :'command' => { base_name: 'command', type: 'String', required: true },
            # a JSON serializable object
            :'payload' => { base_name: 'payload', type: 'Object', required: true }
          }
        end
      end
    end
  end
end
