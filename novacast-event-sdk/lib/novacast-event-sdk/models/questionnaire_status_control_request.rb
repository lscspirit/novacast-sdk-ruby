module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionnaireStatusControlRequest < NovacastSDK::BaseModel
        attr_accessor :question_set_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the question content that is associated with this questionnaire
            :'question_set_uid' => { base_name: 'question_set_uid', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
