module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionContentCreateRequest < NovacastSDK::BaseModel
        attr_accessor :question, :order, :content, :type

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # question text
            :'question' => { base_name: 'question', type: 'String', required: true },
            
            # order index
            :'order' => { base_name: 'order', type: 'String', required: true },
            
            # answer content
            :'content' => { base_name: 'content', type: 'Object', required: true },
            
            # content type
            :'type' => { base_name: 'type', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
