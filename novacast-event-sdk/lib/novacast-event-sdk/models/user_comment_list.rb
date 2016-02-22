module NovacastSDK
  module EventV1
    module Models
      # 
      class UserCommentList < NovacastSDK::BaseModel
        attr_accessor :comments

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # list of comments
            :'comments' => { base_name: 'comments', type: 'Array[UserComment]', required: true }
            
          }
        end
      end
    end
  end
end
