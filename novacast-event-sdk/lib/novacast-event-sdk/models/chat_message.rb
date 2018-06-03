module NovacastSDK
  module EventV1
    module Models
      # 
      class ChatMessage < NovacastSDK::BaseModel
        attr_accessor :account_uid, :account_display_name, :content, :submitted_at

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # account uid of author
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: true },
            
            # display name of the author
            :'account_display_name' => { base_name: 'account_display_name', type: 'String', required: true },
            
            # content of the post
            :'content' => { base_name: 'content', type: 'String', required: true },
            
            # submission time
            :'submitted_at' => { base_name: 'submitted_at', type: 'DateTime', required: true }
            
          }
        end
      end
    end
  end
end
