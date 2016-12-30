module NovacastSDK
  module EventV1
    module Models
      # 
      class PreviewTokenInfo < NovacastSDK::BaseModel
        attr_accessor :event_uid, :expires_at, :session_ttl

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # event uid
            :'event_uid' => { base_name: 'event_uid', type: 'String', required: true },
            # the time at which this token will expire
            :'expires_at' => { base_name: 'expires_at', type: 'DateTime', required: false },
            # the number of seconds each preview mode session is valid for
            :'session_ttl' => { base_name: 'session_ttl', type: 'Integer', required: true }
          }
        end
      end
    end
  end
end
