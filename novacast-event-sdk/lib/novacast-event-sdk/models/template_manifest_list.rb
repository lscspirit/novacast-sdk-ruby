module NovacastSDK
  module EventV1
    module Models
      # 
      class TemplateManifestList < NovacastSDK::BaseModel
        attr_accessor :template_manifests

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of TemplateManifest
            :'template_manifests' => { base_name: 'template_manifests', type: 'Array[TemplateManifest]', required: true }
            
          }
        end
      end
    end
  end
end
