module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionContentOrderRequest < NovacastSDK::BaseModel
        attr_accessor :content_orders

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid to order mapping
            :'content_orders' => { base_name: 'content_orders', type: 'Hash[String, Integer]', required: true }
            
          }
        end
      end
    end
  end
end
