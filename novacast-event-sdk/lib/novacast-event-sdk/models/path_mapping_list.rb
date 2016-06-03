module NovacastSDK
  module EventV1
    module Models
      # 
      class PathMappingList < NovacastSDK::BaseModel
        attr_accessor :static, :active

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # array of static path mappings
            :'static' => { base_name: 'static', type: 'Array[StaticPathMapping]', required: true },
            
            # array of active path mappings
            :'active' => { base_name: 'active', type: 'Array[ActivePathMapping]', required: true }
            
          }
        end
      end
    end
  end
end
