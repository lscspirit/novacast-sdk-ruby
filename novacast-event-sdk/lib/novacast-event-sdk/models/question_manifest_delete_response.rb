module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionManifestDeleteResponse < NovacastSDK::BaseModel
        attr_accessor :question_manifest_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the uid of the manifest deleted
            :'question_manifest_uid' => { base_name: 'question_manifest_uid', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
