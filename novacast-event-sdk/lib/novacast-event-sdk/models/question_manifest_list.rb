module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionManifestList < NovacastSDK::BaseModel
        attr_accessor :manifests

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # question manifest collection
            :'manifests' => { base_name: 'manifests', type: 'Array[QuestionManifest]', required: true }
            
          }
        end
      end
    end
  end
end
