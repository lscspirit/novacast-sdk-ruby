module NovacastSDK
  module EventV1
    module Models
      # 
      class UserFeedback < NovacastSDK::BaseModel
        attr_accessor :account_uid, :content, :submitted_at

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the submitter
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: true },
            
            # content of the feedback
            :'content' => { base_name: 'content', type: 'String', required: true },
            
            # submission time
            :'submitted_at' => { base_name: 'submitted_at', type: 'DateTime', required: true }
            
          }
        end
      end
    end
  end
end
