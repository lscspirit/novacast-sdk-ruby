module NovacastSDK
  module EventV1
    module Models
      # 
      class EnrollmentExtendedList < NovacastSDK::BaseModel
        attr_accessor :enrollments

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # collection of enrollments
            :'enrollments' => { base_name: 'enrollments', type: 'Array[EnrollmentExtended]', required: true }
            
          }
        end
      end
    end
  end
end
