module NovacastSDK
  module EventV1
    module Models
      # 
      class LiveCastSlidePage < NovacastSDK::BaseModel
        attr_accessor :active, :pre_loads

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # 
            :'active' => { base_name: 'active', type: 'Slide', required: true },
            # list of slides to be pre-loaded
            :'pre_loads' => { base_name: 'pre_loads', type: 'Array[Slide]', required: false }
          }
        end
      end
    end
  end
end
