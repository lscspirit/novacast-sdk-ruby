module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionManifest < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :label, :manifest_type, :config, :question_set

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the manifest
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # resource name
            :'rn' => { base_name: 'rn', type: 'String', required: false },
            
            # label for the manifest
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # type for the manifest
            :'manifest_type' => { base_name: 'manifest_type', type: 'String', required: true },
            
            # extra config info for this manifest
            :'config' => { base_name: 'config', type: 'Object', required: false },
            
            # 
            :'question_set' => { base_name: 'question_set', type: 'QuestionSetInfo', required: true }
            
          }
        end
      end
    end
  end
end
