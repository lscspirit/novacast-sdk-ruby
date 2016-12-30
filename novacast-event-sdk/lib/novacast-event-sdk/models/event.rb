module NovacastSDK
  module EventV1
    module Models
      # 
      class Event < NovacastSDK::BaseModel
        attr_accessor :channel_uid, :uid, :name, :stage, :preview_enabled

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # uid of the channel the event belongs to
            :'channel_uid' => { base_name: 'channel_uid', type: 'String', required: false },
            # uid of the event
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            # name of the event
            :'name' => { base_name: 'name', type: 'String', required: true },
            # state of the event
            :'stage' => { base_name: 'stage', type: 'String', required: true },
            # whether preview mode is enabled
            :'preview_enabled' => { base_name: 'preview_enabled', type: 'BOOLEAN', required: true }
          }
        end
      end
    end
  end
end
