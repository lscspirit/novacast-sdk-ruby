module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionManifestCreateRequest < NovacastSDK::BaseModel
        attr_accessor :label, :manifest_type, :question_set_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # label
            :'label' => { base_name: 'label', type: 'String', required: true },
            # question manifest type
            :'manifest_type' => { base_name: 'manifest_type', type: 'String', required: true },
            # uid for the question set associated
            :'question_set_uid' => { base_name: 'question_set_uid', type: 'String', required: true }
          }
        end
      end
    end
  end
end
