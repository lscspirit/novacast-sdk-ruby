module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmissionCreate < NovacastSDK::BaseModel
        attr_accessor :answer, :question_content_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # answer object
            :'answer' => { base_name: 'answer', type: 'Object', required: true },
            # uid for the corresponding question_content
            :'question_content_uid' => { base_name: 'question_content_uid', type: 'String', required: true }
          }
        end
      end
    end
  end
end
