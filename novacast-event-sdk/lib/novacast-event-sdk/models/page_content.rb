module NovacastSDK
  module EventV1
    module Models
      # 
      class PageContent < NovacastSDK::BaseModel
        attr_accessor :locale, :path, :content

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # locale of the page content
            :'locale' => { base_name: 'locale', type: 'String', required: true },
            
            # page path of the event page
            :'path' => { base_name: 'path', type: 'String', required: true },
            
            # page content
            :'content' => { base_name: 'content', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
