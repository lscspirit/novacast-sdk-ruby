module NovacastSDK
  module EventV1
    module Models
      # 
      class PathMappingRequest < NovacastSDK::BaseModel
        attr_accessor :path, :usage, :path_mappings

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # pathname (only specify either path or usage)
            :'path' => { base_name: 'path', type: 'String', required: false },
            # usage of the page (only specify either path or usage)
            :'usage' => { base_name: 'usage', type: 'String', required: false },
            # the path mappings aka path configs
            :'path_mappings' => { base_name: 'path_mappings', type: 'Array[PathMapping]', required: true }
          }
        end
      end
    end
  end
end
