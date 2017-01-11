module NovacastSDK
  module EventV1
    module Models
      # 
      class EventSessionInfoRequest < NovacastSDK::BaseModel
        attr_accessor :label

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # label of the session
            :'label' => { base_name: 'label', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
