module NovacastSDK
  module EventV1
    module Models
      # 
      class ForumPostLike < NovacastSDK::BaseModel
        attr_accessor :account_uid, :account_identifier, :forum_post_uid, :liked

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # uid of the account
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: false },
            # identifier of the account (only present in certain calls and relevant)
            :'account_identifier' => { base_name: 'account_identifier', type: 'String', required: false },
            # uid of the forum post
            :'forum_post_uid' => { base_name: 'forum_post_uid', type: 'String', required: true },
            # like or unlike
            :'liked' => { base_name: 'liked', type: 'BOOLEAN', required: true }
          }
        end
      end
    end
  end
end
