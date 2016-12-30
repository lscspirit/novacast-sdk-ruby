module NovacastSDK
  module EventV1
    module Models
      # 
      class SlideDeckInfoList < NovacastSDK::BaseModel
        attr_accessor :decks

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # a collection of slide deck information
            :'decks' => { base_name: 'decks', type: 'Array[SlideDeckInfo]', required: true }
          }
        end
      end
    end
  end
end
