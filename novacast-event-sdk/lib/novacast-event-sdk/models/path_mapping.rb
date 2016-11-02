module NovacastSDK
  module EventV1
    module Models
      # 
      class PathMapping < NovacastSDK::BaseModel
        attr_accessor :uid, :label, :is_active, :public, :event_session_uid, :event_page_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the uid for this path mapping
            :'uid' => { base_name: 'uid', type: 'String', required: false },
            
            # an optional label for a human readable identifier for this mapping
            :'label' => { base_name: 'label', type: 'String', required: false },
            
            # whether the mapping is active
            :'is_active' => { base_name: 'is_active', type: 'BOOLEAN', required: true },
            
            # whether the page is public or not
            :'public' => { base_name: 'public', type: 'BOOLEAN', required: true },
            
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
