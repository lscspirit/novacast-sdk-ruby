module NovacastSDK
  module EventV1
    module Models
      # 
      class LiveMeetingConnectResponse < NovacastSDK::BaseModel
        attr_accessor :meeting_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the meeting
            :'meeting_uid' => { base_name: 'meeting_uid', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
