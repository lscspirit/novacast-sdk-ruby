module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSet < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :label, :config, :contents

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # unique identifier
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true },
            
            # label
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # question set config
            :'config' => { base_name: 'config', type: 'Object', required: false },
            
            # question set contents
            :'contents' => { base_name: 'contents', type: 'Array[QuestionContent]', required: false }
            
          }
        end
      end
    end
  end
end
