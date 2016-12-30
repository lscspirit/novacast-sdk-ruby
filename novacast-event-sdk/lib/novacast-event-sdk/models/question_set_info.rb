module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSetInfo < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :label, :state

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
            # question set state
            :'state' => { base_name: 'state', type: 'String', required: true }
          }
        end
      end
    end
  end
end
