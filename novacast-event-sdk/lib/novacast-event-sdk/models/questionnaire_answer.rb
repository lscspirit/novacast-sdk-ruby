module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionnaireAnswer < NovacastSDK::BaseModel
        attr_accessor :question_content_uid, :answer

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the question content that is associated with this answer
            :'question_content_uid' => { base_name: 'question_content_uid', type: 'String', required: true },
            
            # a JSON encoded string to represent the answer
            :'answer' => { base_name: 'answer', type: 'Object', required: true }
            
          }
        end
      end
    end
  end
end
