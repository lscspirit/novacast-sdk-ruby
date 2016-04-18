module NovacastSDK
  module EventV1
    module Models
      # 
      class AccessFilterChainItem < NovacastSDK::BaseModel
        attr_accessor :name, :config

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # name of the access filter
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # configuration data
            :'config' => { base_name: 'config', type: 'Object', required: false }
            
          }
        end
      end
    end
  end
end
