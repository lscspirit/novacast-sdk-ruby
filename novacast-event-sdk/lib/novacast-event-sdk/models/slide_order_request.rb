module NovacastSDK
  module EventV1
    module Models
      # 
      class SlideOrderRequest < NovacastSDK::BaseModel
        attr_accessor :ordered_uids

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # list of slide uids
            :'ordered_uids' => { base_name: 'ordered_uids', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
