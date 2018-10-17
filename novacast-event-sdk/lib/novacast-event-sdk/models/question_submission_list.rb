module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmissionList < NovacastSDK::BaseModel
        attr_accessor :submissions

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # list of question submissions
            :'submissions' => { base_name: 'submissions', type: 'Array[QuestionSubmission]', required: true }
            
          }
        end
      end
    end
  end
end
