module NovacastSDK
  module EventV1
    module Models
      # 
      class StaticPathMappingCreateRequest < NovacastSDK::BaseModel
        attr_accessor :path, :usage, :public, :event_session_uid, :event_page_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # pathname (only specify either path or usage)
            :'path' => { base_name: 'path', type: 'String', required: false },
            
            # usage of the page (only specify either path or usage)
            :'usage' => { base_name: 'usage', type: 'String', required: false },
            
            # whether the page is public or not
            :'public' => { base_name: 'public', type: 'BOOLEAN', required: false },
            
            # uid of the event session
            :'event_session_uid' => { base_name: 'event_session_uid', type: 'String', required: true },
            
            # uid of the event page
            :'event_page_uid' => { base_name: 'event_page_uid', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
