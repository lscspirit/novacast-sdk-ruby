module NovacastSDK
  module EventV1
    module Models
      # 
      class ActivePoll < NovacastSDK::BaseModel
        attr_accessor :question_manifest_uid, :question_content, :status

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid for the question manifest related to this poll
            :'question_manifest_uid' => { base_name: 'question_manifest_uid', type: 'String', required: true },
            
            # 
            :'question_content' => { base_name: 'question_content', type: 'QuestionContent', required: true },
            
            # the text status of the poll
            :'status' => { base_name: 'status', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
