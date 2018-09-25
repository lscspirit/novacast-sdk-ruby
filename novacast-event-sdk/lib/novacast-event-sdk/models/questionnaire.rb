module NovacastSDK
  module EventV1
    module Models
      # 
      class Questionnaire < NovacastSDK::BaseModel
        attr_accessor :question_manifest, :question_set

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'question_manifest' => { base_name: 'question_manifest', type: 'QuestionManifest', required: true },
            
            # 
            :'question_set' => { base_name: 'question_set', type: 'QuestionSet', required: true }
            
          }
        end
      end
    end
  end
end
