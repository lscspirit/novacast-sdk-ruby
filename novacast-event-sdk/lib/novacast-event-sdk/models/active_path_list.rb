module NovacastSDK
  module EventV1
    module Models
      # 
      class ActivePathList < NovacastSDK::BaseModel
        attr_accessor :active_paths

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # array of static path mappings
            :'active_paths' => { base_name: 'active_paths', type: 'Array[ActivePath]', required: true }
          }
        end
      end
    end
  end
end
