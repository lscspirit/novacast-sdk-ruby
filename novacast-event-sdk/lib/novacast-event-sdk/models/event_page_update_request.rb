module NovacastSDK
  module EventV1
    module Models
      # 
      class EventPageUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :label, :default_locale

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # label of the page
            :'label' => { base_name: 'label', type: 'String', required: false },
            
            # the default locale being used for this page
            :'default_locale' => { base_name: 'default_locale', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
