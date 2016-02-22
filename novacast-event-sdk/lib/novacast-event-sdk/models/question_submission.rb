module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmission < NovacastSDK::BaseModel
        attr_accessor :user_uid, :answer, :created_at, :question_content_type

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the submitter
            :'user_uid' => { base_name: 'user_uid', type: 'String', required: true },
            
            # answer object
            :'answer' => { base_name: 'answer', type: 'Object', required: true },
            
            # submission time
            :'created_at' => { base_name: 'created_at', type: 'DateTime', required: true },
            
            # 
            :'question_content_type' => { base_name: 'question_content_type', type: 'QuestionContentType', required: true }
            
          }
        end
      end
    end
  end
end
