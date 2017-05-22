module NovacastSDK
  module EventV1
    module Models
      # 
      class EnrollmentListResponse < NovacastSDK::BaseModel
        attr_accessor :enrollments, :account_info, :fields

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # collection of EnrollmentExtended
            :'enrollments' => { base_name: 'enrollments', type: 'Array[EnrollmentExtended]', required: true },
            
            # map of account display info
            :'account_info' => { base_name: 'account_info', type: 'Hash[String, AccountDisplayInfo]', required: false },
            
            # 
            :'fields' => { base_name: 'fields', type: 'Array[EnrollmentField]', required: false }
            
          }
        end
      end
    end
  end
end
