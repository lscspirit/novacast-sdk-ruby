module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmissionList < NovacastSDK::BaseModel
        attr_accessor :submissions, :question_manifest

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # question submission collection
            :'submissions' => { base_name: 'submissions', type: 'Array[QuestionSubmission]', required: true },
            # 
            :'question_manifest' => { base_name: 'question_manifest', type: 'QuestionManifest', required: false }
          }
        end
      end
    end
  end
end
