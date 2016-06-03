module NovacastSDK
  module EventV1
    module Models
      # 
      class ActivePathMappingCreateRequest < NovacastSDK::BaseModel
        attr_accessor :path, :usage, :target

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # pathname (only specify either path or usage)
            :'path' => { base_name: 'path', type: 'String', required: false },
            
            # usage of the page (only specify either path or usage)
            :'usage' => { base_name: 'usage', type: 'String', required: false },
            
            # pathname of the static path to map this to
            :'target' => { base_name: 'target', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
