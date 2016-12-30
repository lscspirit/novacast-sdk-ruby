module NovacastSDK
  module EventV1
    module Models
      # 
      class ActiveQuestionnaireList < NovacastSDK::BaseModel
        attr_accessor :questionnaires

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # active Questionnaires collection
            :'questionnaires' => { base_name: 'questionnaires', type: 'Array[ActiveQuestionnaire]', required: true }
          }
        end
      end
    end
  end
end
