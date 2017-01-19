module NovacastSDK
  module EventV1
    module Models
      # 
      class TemplateManifest < NovacastSDK::BaseModel
        attr_accessor :template_name, :label, :preview_thumbnail, :config

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the name of the template
            :'template_name' => { base_name: 'template_name', type: 'String', required: false },
            
            # description for this event template
            :'label' => { base_name: 'label', type: 'String', required: false },
            
            # url for the thumbnail of the event
            :'preview_thumbnail' => { base_name: 'preview_thumbnail', type: 'String', required: false },
            
            # extra configs if any
            :'config' => { base_name: 'config', type: 'Object', required: false }
            
          }
        end
      end
    end
  end
end
