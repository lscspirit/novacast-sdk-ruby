module NovacastSDK
  module EventV1
    module Models
      # 
      class EventPageCreateRequest < NovacastSDK::BaseModel
        attr_accessor :path, :session_uid, :public, :level, :usage

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # event page path
            :'path' => { base_name: 'path', type: 'String', required: true },
            
            # uid of the event page&#39;s session. Null if this is a shared session page.
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: false },
            
            # whether this page can be accessed publicly
            :'public' => { base_name: 'public', type: 'BOOLEAN', required: false },
            
            # the page level - event, single, shared
            :'level' => { base_name: 'level', type: 'String', required: true },
            
            # page usage
            :'usage' => { base_name: 'usage', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
