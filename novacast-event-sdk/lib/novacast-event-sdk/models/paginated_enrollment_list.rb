module NovacastSDK
  module EventV1
    module Models
      # 
      class PaginatedEnrollmentList < NovacastSDK::BaseModel
        attr_accessor :enrollments, :paging

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # collection of enrollments
            :'enrollments' => { base_name: 'enrollments', type: 'Array[EnrollmentExtended]', required: true },
            
            # 
            :'paging' => { base_name: 'paging', type: 'PagingDetails', required: false }
            
          }
        end
      end
    end
  end
end
