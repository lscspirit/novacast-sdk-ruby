module NovacastSDK
  module EventV1
    module Models
      # 
      class AccessFilterChain < NovacastSDK::BaseModel
        attr_accessor :filters

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of enabled access filters
            :'filters' => { base_name: 'filters', type: 'Array[AccessFilterChainItem]', required: true }
            
          }
        end
      end
    end
  end
end
