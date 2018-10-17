module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmission < NovacastSDK::BaseModel
        attr_accessor :user_uid, :account_info, :question_manifest_uid, :created_at, :answers

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the submitter
            :'user_uid' => { base_name: 'user_uid', type: 'String', required: false },
            
            # 
            :'account_info' => { base_name: 'account_info', type: 'AccountDisplayInfo', required: false },
            
            # uid for the question manifest specific of this submission
            :'question_manifest_uid' => { base_name: 'question_manifest_uid', type: 'String', required: true },
            
            # submission time
            :'created_at' => { base_name: 'created_at', type: 'DateTime', required: true },
            
            # answers to each question
            :'answers' => { base_name: 'answers', type: 'Array[SubmissionAnswer]', required: false }
            
          }
        end
      end
    end
  end
end
