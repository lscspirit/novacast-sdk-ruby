module NovacastSDK
  module EventV1
    module Models
      # 
      class DataSetPartition < NovacastSDK::BaseModel
        attr_accessor :uid, :event_session_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the stream
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # Name of the permission
            :'event_session_uid' => { base_name: 'event_session_uid', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
