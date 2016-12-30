module NovacastSDK
  module EventV1
    module Models
      # 
      class BundleContentPreUploadRequest < NovacastSDK::BaseModel
        attr_accessor :file_path

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # content path within the bundle
            :'file_path' => { base_name: 'file_path', type: 'String', required: true }
          }
        end
      end
    end
  end
end
