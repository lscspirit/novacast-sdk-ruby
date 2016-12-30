module NovacastSDK
  module EventV1
    module Models
      # 
      class TrackAttendanceByTokenRequest < NovacastSDK::BaseModel
        attr_accessor :track_requests

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # a collection of track by token requests
            :'track_requests' => { base_name: 'track_requests', type: 'Array[TrackAttendanceByToken]', required: false }
          }
        end
      end
    end
  end
end
