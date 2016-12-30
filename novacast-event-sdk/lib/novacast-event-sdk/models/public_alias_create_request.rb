module NovacastSDK
  module EventV1
    module Models
      # 
      class PublicAliasCreateRequest < NovacastSDK::BaseModel
        attr_accessor :path, :event_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # path of the alias (relative to /events)
            :'path' => { base_name: 'path', type: 'String', required: true },
            # uid of the event that the path is mapped to
            :'event_uid' => { base_name: 'event_uid', type: 'String', required: false }
          }
        end
      end
    end
  end
end
