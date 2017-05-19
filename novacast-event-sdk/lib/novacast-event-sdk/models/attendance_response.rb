module NovacastSDK
  module EventV1
    module Models
      # 
      class AttendanceResponse < NovacastSDK::BaseModel
        attr_accessor :attendances, :account_info

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the attendance objects
            :'attendances' => { base_name: 'attendances', type: 'Array[Attendance]', required: true },
            
            # a map of account_uid to display info for relevant accounts
            :'account_info' => { base_name: 'account_info', type: 'Hash[String, String]', required: false }
            
          }
        end
      end
    end
  end
end
