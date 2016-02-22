module NovacastSDK
  module EventV1
    module Models
      # 
      class UserCommentPostRequest < NovacastSDK::BaseModel
        attr_accessor :content

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # comment content
            :'content' => { base_name: 'content', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
