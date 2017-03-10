module NovacastSDK
  module EventV1
    module Models
      # 
      class BatchTrackAttendanceRequest < NovacastSDK::BaseModel
        attr_accessor :requests

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of track attendance requests
            :'requests' => { base_name: 'requests', type: 'Array[TrackAttendanceRequest]', required: false }
            
          }
        end
      end
    end
  end
end
