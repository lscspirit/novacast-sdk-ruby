module NovacastSDK
  module EventV1
    module Models
      # 
      class AddPollStatRequest < NovacastSDK::BaseModel
        attr_accessor :question_content_uid, :choice

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the question content that is associated with this poll
            :'question_content_uid' => { base_name: 'question_content_uid', type: 'String', required: true },
            
            # a JSON encoded string to represent the choices chosen
            :'choice' => { base_name: 'choice', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
