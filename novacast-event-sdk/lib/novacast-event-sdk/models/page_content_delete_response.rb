module NovacastSDK
  module EventV1
    module Models
      # 
      class PageContentDeleteResponse < NovacastSDK::BaseModel
        attr_accessor :page_content, :event_page

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'page_content' => { base_name: 'page_content', type: 'PageContent', required: true },
            
            # 
            :'event_page' => { base_name: 'event_page', type: 'EventPage', required: true }
            
          }
        end
      end
    end
  end
end
