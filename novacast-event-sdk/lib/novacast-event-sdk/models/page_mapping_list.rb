module NovacastSDK
  module EventV1
    module Models
      # 
      class PageMappingList < NovacastSDK::BaseModel
        attr_accessor :mappings

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # collection of PageMapping
            :'mappings' => { base_name: 'mappings', type: 'Array[PageMapping]', required: true }
            
          }
        end
      end
    end
  end
end
