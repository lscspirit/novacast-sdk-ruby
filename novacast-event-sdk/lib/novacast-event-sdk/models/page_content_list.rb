module NovacastSDK
  module EventV1
    module Models
      # 
      class PageContentList < NovacastSDK::BaseModel
        attr_accessor :contents

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # an array of PageContent
            :'contents' => { base_name: 'contents', type: 'Array[PageContent]', required: true }
            
          }
        end
      end
    end
  end
end
