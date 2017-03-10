module NovacastSDK
  module EventV1
    module Models
      # 
      class BatchTrackAttendanceResponse < NovacastSDK::BaseModel
        attr_accessor :responses

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of responses
            :'responses' => { base_name: 'responses', type: 'Array[BatchTrackAttendanceResponseEntry]', required: false }
            
          }
        end
      end
    end
  end
end
