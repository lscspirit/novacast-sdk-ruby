module NovacastSDK
  module EventV1
    module Models
      # 
      class StreamSourcePreUploadRequest < NovacastSDK::BaseModel
        attr_accessor :filename

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # filename
            :'filename' => { base_name: 'filename', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
