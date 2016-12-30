module NovacastSDK
  module EventV1
    module Models
      # 
      class AttendanceList < NovacastSDK::BaseModel
        attr_accessor :attendances, :accounts, :sessions, :record_exceeded

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # the attendance objects
            :'attendances' => { base_name: 'attendances', type: 'Array[Attendance]', required: true },
            # optional account info for all accounts in the attendances
            :'accounts' => { base_name: 'accounts', type: 'Array[Account]', required: false },
            # session infos for all sessions for the given event
            :'sessions' => { base_name: 'sessions', type: 'Array[EventSession]', required: false },
            # indicate if number of records exceeded limit
            :'record_exceeded' => { base_name: 'record_exceeded', type: 'BOOLEAN', required: false }
          }
        end
      end
    end
  end
end
