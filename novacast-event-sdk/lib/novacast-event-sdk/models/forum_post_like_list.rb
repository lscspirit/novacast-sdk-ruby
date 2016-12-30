module NovacastSDK
  module EventV1
    module Models
      # 
      class ForumPostLikeList < NovacastSDK::BaseModel
        attr_accessor :likes

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # list of forum post likes
            :'likes' => { base_name: 'likes', type: 'Array[ForumPostLike]', required: true }
          }
        end
      end
    end
  end
end
