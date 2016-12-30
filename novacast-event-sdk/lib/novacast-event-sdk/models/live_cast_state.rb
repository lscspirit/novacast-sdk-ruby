module NovacastSDK
  module EventV1
    module Models
      # 
      class LiveCastState < NovacastSDK::BaseModel
        attr_accessor :page

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # current page number
            :'page' => { base_name: 'page', type: 'Integer', required: false }
          }
        end
      end
    end
  end
end
