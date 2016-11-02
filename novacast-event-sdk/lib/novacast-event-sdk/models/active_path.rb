module NovacastSDK
  module EventV1
    module Models
      # 
      class ActivePath < NovacastSDK::BaseModel
        attr_accessor :uid, :path, :path_mappings

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the uid for this active path
            :'uid' => { base_name: 'uid', type: 'String', required: false },
            
            # pathname
            :'path' => { base_name: 'path', type: 'String', required: true },
            
            # the path mappings aka path configs
            :'path_mappings' => { base_name: 'path_mappings', type: 'Array[PathMapping]', required: true }
            
          }
        end
      end
    end
  end
end
