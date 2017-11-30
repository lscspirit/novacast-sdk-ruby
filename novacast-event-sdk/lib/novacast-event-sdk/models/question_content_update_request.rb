module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionContentUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :question, :order, :content, :optional, :type

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # question text
            :'question' => { base_name: 'question', type: 'String', required: false },
            
            # order index
            :'order' => { base_name: 'order', type: 'String', required: false },
            
            # answer content
            :'content' => { base_name: 'content', type: 'Object', required: false },
            
            # whether answer is required
            :'optional' => { base_name: 'optional', type: 'BOOLEAN', required: false },
            
            # content type key
            :'type' => { base_name: 'type', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
