module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmissionCreateRequest < NovacastSDK::BaseModel
        attr_accessor :answer

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # answer object
            :'answer' => { base_name: 'answer', type: 'Object', required: true }
            
          }
        end
      end
    end
  end
end
