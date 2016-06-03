module NovacastSDK
  module EventV1
    module Models
      # 
      class EventPageList < NovacastSDK::BaseModel
        attr_accessor :pages

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # array of event pages
            :'pages' => { base_name: 'pages', type: 'Array[EventPage]', required: true }
            
          }
        end
      end
    end
  end
end
