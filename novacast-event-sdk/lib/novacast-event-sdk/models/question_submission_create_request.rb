module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmissionCreateRequest < NovacastSDK::BaseModel
        attr_accessor :question_manifest_uid, :submissions

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # uid for the corresponding question_manifest
            :'question_manifest_uid' => { base_name: 'question_manifest_uid', type: 'String', required: false },
            # a collection of submission create objects
            :'submissions' => { base_name: 'submissions', type: 'Array[QuestionSubmissionCreate]', required: true }
          }
        end
      end
    end
  end
end
