module NovacastSDK
  module EventV1
    module Models
      # 
      class EnrollmentExtendedList < NovacastSDK::BaseModel
        attr_accessor :enrollments, :accounts, :fields

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # collection of enrollments
            :'enrollments' => { base_name: 'enrollments', type: 'Array[EnrollmentExtended]', required: true },
            
            # a map of account_uid to display info for relevant accounts
            :'accounts' => { base_name: 'accounts', type: 'Object', required: false },
            
            # 
            :'fields' => { base_name: 'fields', type: 'Array[String]', required: false }
            
          }
        end
      end
    end
  end
end
