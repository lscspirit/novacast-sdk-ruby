module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionModuleConfig < NovacastSDK::BaseModel
        attr_accessor :config, :resources

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # configuration data
            :'config' => { base_name: 'config', type: 'Object', required: true },
            
            # a collection of resources used by this module
            :'resources' => { base_name: 'resources', type: 'Array[SessionModuleResource]', required: false }
            
          }
        end
      end
    end
  end
end
