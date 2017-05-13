module NovacastSDK
  module EventV1
    module Models
      # 
      class EventPageCreateRequest < NovacastSDK::BaseModel
        attr_accessor :label, :default_locale

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # label of the page
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # the default locale being used for this page
            :'default_locale' => { base_name: 'default_locale', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
