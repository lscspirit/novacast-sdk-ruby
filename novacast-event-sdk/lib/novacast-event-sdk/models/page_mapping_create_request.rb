module NovacastSDK
  module EventV1
    module Models
      # 
      class PageMappingCreateRequest < NovacastSDK::BaseModel
        attr_accessor :type, :key, :page_path, :session_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # mapping type (usage or path)
            :'type' => { base_name: 'type', type: 'String', required: true },
            
            # key of the mapping (usage name for &#39;usage&#39; type; path for &#39;path&#39; type)
            :'key' => { base_name: 'key', type: 'String', required: true },
            
            # path of the target event page
            :'page_path' => { base_name: 'page_path', type: 'String', required: true },
            
            # uid of the target session
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
