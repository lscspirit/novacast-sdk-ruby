module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionModuleUpdate < NovacastSDK::BaseModel
        attr_accessor :is_enabled, :module_config, :module_items, :module_name

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # whether or not this module is enabled
            :'is_enabled' => { base_name: 'is_enabled', type: 'BOOLEAN', required: true },
            
            # module level config data
            :'module_config' => { base_name: 'module_config', type: 'Object', required: false },
            
            # a collection of items that needs to be configured
            :'module_items' => { base_name: 'module_items', type: 'Array[SessionModuleUpdateItem]', required: false },
            
            # name of the module
            :'module_name' => { base_name: 'module_name', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
