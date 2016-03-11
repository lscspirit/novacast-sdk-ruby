module NovacastSDK
  module EventV1
    module Models
      # 
      class EventSessionExtended < NovacastSDK::BaseModel
        attr_accessor :uid, :event_name, :label, :is_default, :modules, :pathname, :event_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # event session uid
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # name of the event that this session belongs to
            :'event_name' => { base_name: 'event_name', type: 'String', required: true },
            
            # label of the session
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # whether the session is a event&#39;s default
            :'is_default' => { base_name: 'is_default', type: 'BOOLEAN', required: true },
            
            # a collection of session modules
            :'modules' => { base_name: 'modules', type: 'Array[SessionModule]', required: true },
            
            # pathname of the session
            :'pathname' => { base_name: 'pathname', type: 'String', required: true },
            
            # uid of the event that this session belongs to
            :'event_uid' => { base_name: 'event_uid', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
