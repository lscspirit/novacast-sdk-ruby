module NovacastSDK
  module EventV1
    module Models
      # 
      class SubmissionAnswer < NovacastSDK::BaseModel
        attr_accessor :question_content_uid, :answer

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid for the question content specific of this submission
            :'question_content_uid' => { base_name: 'question_content_uid', type: 'String', required: true },
            
            # answer object
            :'answer' => { base_name: 'answer', type: 'Object', required: true }
            
          }
        end
      end
    end
  end
end
