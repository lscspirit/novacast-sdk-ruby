module NovacastSDK
  module EventV1
    module Models
      # 
      class SlideDeleteRequest < NovacastSDK::BaseModel
        attr_accessor :slide_uids

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uids of the slides to be deleted
            :'slide_uids' => { base_name: 'slide_uids', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
