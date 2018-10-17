module NovacastSDK
  module EventV1
    module Models
      # 
      class SubmissionAnswerList < NovacastSDK::BaseModel
        attr_accessor :answers

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of question answers
            :'answers' => { base_name: 'answers', type: 'Array[SubmissionAnswer]', required: true }
            
          }
        end
      end
    end
  end
end
