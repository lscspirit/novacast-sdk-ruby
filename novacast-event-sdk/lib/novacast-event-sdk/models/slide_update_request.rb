module NovacastSDK
  module EventV1
    module Models
      # 
      class SlideUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :title

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # title of the slide
            :'title' => { base_name: 'title', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
