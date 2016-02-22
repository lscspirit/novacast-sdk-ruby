module NovacastSDK
  module EventV1
    module Models
      # 
      class LiveCastPageChangeRequest < NovacastSDK::BaseModel
        attr_accessor :page

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # page number to change to
            :'page' => { base_name: 'page', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
