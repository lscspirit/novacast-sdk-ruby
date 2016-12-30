module NovacastSDK
  module EventV1
    module Models
      # 
      class ActiveQuestionnaire < NovacastSDK::BaseModel
        attr_accessor :question_manifest_uid, :question_set, :status

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # uid for the question manifest related to this Questionnaire
            :'question_manifest_uid' => { base_name: 'question_manifest_uid', type: 'String', required: true },
            # 
            :'question_set' => { base_name: 'question_set', type: 'QuestionSet', required: true },
            # the text status of the questionnaire
            :'status' => { base_name: 'status', type: 'String', required: true }
          }
        end
      end
    end
  end
end
