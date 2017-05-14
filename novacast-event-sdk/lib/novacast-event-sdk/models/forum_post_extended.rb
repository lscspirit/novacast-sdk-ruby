module NovacastSDK
  module EventV1
    module Models
      # 
      class ForumPostExtended < NovacastSDK::BaseModel
        attr_accessor :uid, :account_uid, :content, :likes, :visible, :submitted_at, :account_info, :account_identifier, :approved, :hidden, :deleted, :starred

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # unique id
            :'uid' => { base_name: 'uid', type: 'String', required: false },
            
            # account uid of the submitter
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: false },
            
            # content of the post
            :'content' => { base_name: 'content', type: 'String', required: true },
            
            # number of likes
            :'likes' => { base_name: 'likes', type: 'Integer', required: false },
            
            # visible to public
            :'visible' => { base_name: 'visible', type: 'BOOLEAN', required: true },
            
            # submission time
            :'submitted_at' => { base_name: 'submitted_at', type: 'DateTime', required: true },
            
            # an object containing relevant infos for the submitter
            :'account_info' => { base_name: 'account_info', type: 'Object', required: false },
            
            # a generally acceptable identifier for the submitter which is not the account uid
            :'account_identifier' => { base_name: 'account_identifier', type: 'String', required: false },
            
            # approved by moderator
            :'approved' => { base_name: 'approved', type: 'BOOLEAN', required: true },
            
            # whether the post is hidden
            :'hidden' => { base_name: 'hidden', type: 'BOOLEAN', required: true },
            
            # whether the post is deleted
            :'deleted' => { base_name: 'deleted', type: 'BOOLEAN', required: true },
            
            # whether the post is starred
            :'starred' => { base_name: 'starred', type: 'BOOLEAN', required: true }
            
          }
        end
      end
    end
  end
end
