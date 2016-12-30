module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionModuleUpdateConfig < NovacastSDK::BaseModel
        attr_accessor :module_config, :module_items

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # module level config data
            :'module_config' => { base_name: 'module_config', type: 'Object', required: false },
            # a collection of items that needs to be configured
            :'module_items' => { base_name: 'module_items', type: 'Array[SessionModuleUpdateItem]', required: false }
          }
        end
      end
    end
  end
end
