module NovacastSDK
  module EventV1
    module Models
      # 
      class PageContent < NovacastSDK::BaseModel
        attr_accessor :event_page_uid, :locale, :content

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # uid of the event page
            :'event_page_uid' => { base_name: 'event_page_uid', type: 'String', required: true },
            # locale of the page content
            :'locale' => { base_name: 'locale', type: 'String', required: true },
            # page content
            :'content' => { base_name: 'content', type: 'String', required: true }
          }
        end
      end
    end
  end
end
