module NovacastSDK
  module EventV1
    module Models
      # 
      class TranslationFilterOptionsResponse < NovacastSDK::BaseModel
        attr_accessor :locales, :categories

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'locales' => { base_name: 'locales', type: 'Array[String]', required: false },
            
            # 
            :'categories' => { base_name: 'categories', type: 'Array[String]', required: false }
            
          }
        end
      end
    end
  end
end
