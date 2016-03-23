module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionModuleUpdateItem < NovacastSDK::BaseModel
        attr_accessor :usage, :detail

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # usage of this resource
            :'usage' => { base_name: 'usage', type: 'String', required: true },
            
            # detail of the item
            :'detail' => { base_name: 'detail', type: 'Object', required: true }
            
          }
        end
      end
    end
  end
end
