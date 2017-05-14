module NovacastSDK
  module EventV1
    module Models
      # 
      class FilteredEnrollmentList < NovacastSDK::BaseModel
        attr_accessor :enrollments, :accounts, :fields, :record_exceeded

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
            :'fields' => { base_name: 'fields', type: 'Array[String]', required: false },
            
            # indicate if number of records exceeded limit
            :'record_exceeded' => { base_name: 'record_exceeded', type: 'BOOLEAN', required: false }
            
          }
        end
      end
    end
  end
end
