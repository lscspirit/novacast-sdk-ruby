module NovacastSDK
  module EventV1
    module Models
      # 
      class EventPage < NovacastSDK::BaseModel
        attr_accessor :event_uid, :session_uid, :path, :public, :page_config, :mappings

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the event
            :'event_uid' => { base_name: 'event_uid', type: 'String', required: true },
            
            # uid of the event session
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: false },
            
            # event page path
            :'path' => { base_name: 'path', type: 'String', required: true },
            
            # whether this page can be accessed publicly
            :'public' => { base_name: 'public', type: 'BOOLEAN', required: true },
            
            # page configuration in json
            :'page_config' => { base_name: 'page_config', type: 'String', required: false },
            
            # page mappings
            :'mappings' => { base_name: 'mappings', type: 'Array[PageMapping]', required: false }
            
          }
        end
      end
    end
  end
end
