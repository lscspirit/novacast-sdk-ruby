module NovacastSDK
  module EventV1
    module Models
      # 
      class StreamSource < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :url, :source

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the stream source
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true },
            
            # url of the stream
            :'url' => { base_name: 'url', type: 'String', required: true },
            
            # source provider of the stream
            :'source' => { base_name: 'source', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
