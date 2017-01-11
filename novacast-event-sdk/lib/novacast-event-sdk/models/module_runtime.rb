module NovacastSDK
  module EventV1
    module Models
      # 
      class ModuleRuntime < NovacastSDK::BaseModel
        attr_accessor :module_name, :runtime

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # name of the module
            :'module_name' => { base_name: 'module_name', type: 'String', required: true },
            
            # module runtime configuration
            :'runtime' => { base_name: 'runtime', type: 'Object', required: true }
            
          }
        end
      end
    end
  end
end
