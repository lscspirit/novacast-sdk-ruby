module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSetCreateRequest < NovacastSDK::BaseModel
        attr_accessor :label, :config

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # label
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # question set config
            :'config' => { base_name: 'config', type: 'Object', required: false }
            
          }
        end
      end
    end
  end
end
