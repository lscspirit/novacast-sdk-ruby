module NovacastSDK
  module EventV1
    module Models
      # 
      class EventPageUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :path, :session_uid, :public

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # event page path
            :'path' => { base_name: 'path', type: 'String', required: false },
            
            # uid of the event page&#39;s session
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: false },
            
            # whether this page can be accessed publicly
            :'public' => { base_name: 'public', type: 'BOOLEAN', required: false }
            
          }
        end
      end
    end
  end
end
