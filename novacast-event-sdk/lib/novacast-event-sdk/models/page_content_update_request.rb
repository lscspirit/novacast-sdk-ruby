module NovacastSDK
  module EventV1
    module Models
      # 
      class PageContentUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :content_locale, :content

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # locale of the page content
            :'content_locale' => { base_name: 'content_locale', type: 'String', required: false },
            
            # page content
            :'content' => { base_name: 'content', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
