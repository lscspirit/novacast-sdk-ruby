module NovacastSDK
  module EventV1
    module Models
      # 
      class AddQuestionnaireStatRequest < NovacastSDK::BaseModel
        attr_accessor :answers

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # answers for all the questions in this questionnaire
            :'answers' => { base_name: 'answers', type: 'Array[QuestionnaireAnswer]', required: true }
            
          }
        end
      end
    end
  end
end
