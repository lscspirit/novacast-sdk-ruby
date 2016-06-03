module NovacastSDK
  module EventV1
    module Models
      # 
      class ActivePathMapping < NovacastSDK::BaseModel
        attr_accessor :path, :target

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # pathname
            :'path' => { base_name: 'path', type: 'String', required: true },
            
            # pathname of the static path to map this to
            :'target' => { base_name: 'target', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
