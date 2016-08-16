module NovacastSDK
  module EventV1
    module Models
      # 
      class ForumPostLikeList < NovacastSDK::BaseModel
        attr_accessor :likes, :accounts

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # list of forum post likes
            :'likes' => { base_name: 'likes', type: 'Array[ForumPostLike]', required: true },
            
            # optional account info for all accounts for the likes
            :'accounts' => { base_name: 'accounts', type: 'Array[Account]', required: false }
            
          }
        end
      end
    end
  end
end
