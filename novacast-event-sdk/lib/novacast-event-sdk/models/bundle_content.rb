module NovacastSDK
  module EventV1
    module Models
      # 
      class BundleContent < NovacastSDK::BaseModel
        attr_accessor :uid, :meta_data, :url, :file_path

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the content
            :'uid' => { base_name: 'uid', type: 'String', required: false },
            
            # optional meta data for the content
            :'meta_data' => { base_name: 'meta_data', type: 'Object', required: false },
            
            # url of the content
            :'url' => { base_name: 'url', type: 'String', required: true },
            
            # path within the bundle
            :'file_path' => { base_name: 'file_path', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
