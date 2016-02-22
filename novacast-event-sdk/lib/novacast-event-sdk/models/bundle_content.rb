module NovacastSDK
  module EventV1
    module Models
      # 
      class BundleContent < NovacastSDK::BaseModel
        attr_accessor :url, :file_path

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
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
