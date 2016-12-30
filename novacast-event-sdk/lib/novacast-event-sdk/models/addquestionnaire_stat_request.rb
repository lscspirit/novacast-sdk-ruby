module NovacastSDK
  module EventV1
    module Models
      # 
      class AddquestionnaireStatRequest < NovacastSDK::BaseModel
        attr_accessor :question_set_uid, :answers

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # the question set that is associated with this questionnaire
            :'question_set_uid' => { base_name: 'question_set_uid', type: 'String', required: true },
            # answers for all the questions in this questionnaire
            :'answers' => { base_name: 'answers', type: 'Array[QuestionnaireAnswer]', required: true }
          }
        end
      end
    end
  end
end
