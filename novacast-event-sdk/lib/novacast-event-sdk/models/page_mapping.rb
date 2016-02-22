module NovacastSDK
  module EventV1
    module Models
      # 
      class PageMapping < NovacastSDK::BaseModel
        attr_accessor :uid, :type, :key, :event_page_path, :session_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the mapping
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # mapping type (usage or path)
            :'type' => { base_name: 'type', type: 'String', required: true },
            
            # key of the mapping (usage name for &#39;usage&#39; type; path for &#39;path&#39; type)
            :'key' => { base_name: 'key', type: 'String', required: true },
            
            # page path of the event page
            :'event_page_path' => { base_name: 'event_page_path', type: 'String', required: true },
            
            # uid of the session to which this page is mapped (if applicable)
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
