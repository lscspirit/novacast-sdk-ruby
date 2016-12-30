module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionContent < NovacastSDK::BaseModel
        attr_accessor :uid, :question, :order, :content, :question_set_uid, :question_content_type

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # uid of the content
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            # question text
            :'question' => { base_name: 'question', type: 'String', required: true },
            # order index
            :'order' => { base_name: 'order', type: 'Integer', required: true },
            # answer content
            :'content' => { base_name: 'content', type: 'Object', required: true },
            # uid for the question set that this question content belongs to
            :'question_set_uid' => { base_name: 'question_set_uid', type: 'String', required: false },
            # 
            :'question_content_type' => { base_name: 'question_content_type', type: 'QuestionContentType', required: true }
          }
        end
      end
    end
  end
end
