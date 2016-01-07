module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionContent < NovacastSDK::BaseModel
        attr_accessor :uid, :question, :order, :content, :question_content_type

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
            
            # 
            :'question_content_type' => { base_name: 'question_content_type', type: 'QuestionContentType', required: true }
            
          }
        end
      end
    end
  end
end
