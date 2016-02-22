module NovacastSDK
  module EventV1
    module Models
      # 
      class PageMappingUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :key, :page_path, :session_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # key of the mapping (usage name for &#39;usage&#39; type; path for &#39;path&#39; type)
            :'key' => { base_name: 'key', type: 'String', required: false },
            
            # path of the target event page
            :'page_path' => { base_name: 'page_path', type: 'String', required: false },
            
            # uid of the target session
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
