module NovacastSDK
  module EventV1
    module Models
      # 
      class AccessFilter < NovacastSDK::BaseModel
        attr_accessor :name, :config, :priority, :enabled

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # name of the access filter
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # configuration data
            :'config' => { base_name: 'config', type: 'Object', required: false },
            
            # filter priority
            :'priority' => { base_name: 'priority', type: 'Integer', required: false },
            
            # whether filter is enabled
            :'enabled' => { base_name: 'enabled', type: 'BOOLEAN', required: false }
            
          }
        end
      end
    end
  end
end
