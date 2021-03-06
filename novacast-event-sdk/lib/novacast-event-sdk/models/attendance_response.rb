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
            
            # map of account display info
            :'account_info' => { base_name: 'account_info', type: 'Hash[String, AccountDisplayInfo]', required: false }
            
          }
        end
      end
    end
  end
end
