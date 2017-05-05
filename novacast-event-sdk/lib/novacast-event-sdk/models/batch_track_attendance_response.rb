module NovacastSDK
  module EventV1
    module Models
      # 
      class BatchTrackAttendanceResponse < NovacastSDK::BaseModel
        attr_accessor :count

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the number of requests queued for processing
            :'count' => { base_name: 'count', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
