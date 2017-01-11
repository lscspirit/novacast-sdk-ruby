module NovacastSDK
  module EventV1
    module Models
      # 
      class ForumPostLikeRequest < NovacastSDK::BaseModel
        attr_accessor :like

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # true to like; false to unlike
            :'like' => { base_name: 'like', type: 'BOOLEAN', required: true }
            
          }
        end
      end
    end
  end
end
