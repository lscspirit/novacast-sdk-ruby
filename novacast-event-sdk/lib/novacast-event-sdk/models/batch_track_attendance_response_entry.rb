module NovacastSDK
  module EventV1
    module Models
      # 
      class BatchTrackAttendanceResponseEntry < NovacastSDK::BaseModel
        attr_accessor :attendance, :error

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # successfully created attendance
            :'attendance' => { base_name: 'attendance', type: 'Attendance', required: false },
            
            # error messages if creation failed
            :'error' => { base_name: 'error', type: 'Error', required: false }
            
          }
        end
      end
    end
  end
end
