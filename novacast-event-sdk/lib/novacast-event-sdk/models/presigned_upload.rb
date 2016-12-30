module NovacastSDK
  module EventV1
    module Models
      # 
      class PresignedUpload < NovacastSDK::BaseModel
        attr_accessor :url, :fields, :callback_data

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # upload url
            :'url' => { base_name: 'url', type: 'String', required: true },
            # fields to be sent along with the upload request
            :'fields' => { base_name: 'fields', type: 'Object', required: true },
            # data to be sent along with the callback upon successful upload
            :'callback_data' => { base_name: 'callback_data', type: 'Object', required: true }
          }
        end
      end
    end
  end
end
