module NovacastSDK
  module EventV1
    module Models
      # 
      class ForumPostCreateRequest < NovacastSDK::BaseModel
        attr_accessor :content

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # content of the post
            :'content' => { base_name: 'content', type: 'String', required: true }
          }
        end
      end
    end
  end
end
