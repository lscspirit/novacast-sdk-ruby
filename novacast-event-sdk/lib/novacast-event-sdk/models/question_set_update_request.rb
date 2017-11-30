module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSetUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :label

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # label
            :'label' => { base_name: 'label', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
