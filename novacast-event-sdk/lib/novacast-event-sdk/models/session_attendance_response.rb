module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionAttendanceResponse < NovacastSDK::BaseModel
        attr_accessor :session_attendances, :attendances, :account_info, :session

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the session attendance list
            :'session_attendances' => { base_name: 'session_attendances', type: 'Array[SessionAttendance]', required: true },
            
            # the event attendance list
            :'attendances' => { base_name: 'attendances', type: 'Array[Attendance]', required: false },
            
            # map of account display info
            :'account_info' => { base_name: 'account_info', type: 'Hash[String, AccountDisplayInfo]', required: false },
            
            # 
            :'session' => { base_name: 'session', type: 'EventSession', required: false }
            
          }
        end
      end
    end
  end
end
