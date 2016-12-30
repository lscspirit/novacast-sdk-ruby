module NovacastSDK
  module EventV1
    module Models
      # 
      class ForumPostExtendedList < NovacastSDK::BaseModel
        attr_accessor :posts

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # list of forum posts (with extended information)
            :'posts' => { base_name: 'posts', type: 'Array[ForumPostExtended]', required: true }
          }
        end
      end
    end
  end
end
