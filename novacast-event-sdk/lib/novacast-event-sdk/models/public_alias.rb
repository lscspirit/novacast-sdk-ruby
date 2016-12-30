module NovacastSDK
  module EventV1
    module Models
      # 
      class PublicAlias < NovacastSDK::BaseModel
        attr_accessor :uid, :path, :channel_uid, :event_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # unique id of the mapping
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            # path of the alias (relative to /events)
            :'path' => { base_name: 'path', type: 'String', required: true },
            # uid of the channel this mapping belongs to
            :'channel_uid' => { base_name: 'channel_uid', type: 'String', required: true },
            # uid of the event that the path is mapped to
            :'event_uid' => { base_name: 'event_uid', type: 'String', required: false }
          }
        end
      end
    end
  end
end
