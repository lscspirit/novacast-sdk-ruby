module NovacastSDK
  module EventV1
    module Models
      # 
      class StreamSourceCreateRequest < NovacastSDK::BaseModel
        attr_accessor :type, :url_or_key

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # type/provider of the source
            :'type' => { base_name: 'type', type: 'String', required: true },
            # provider specific url or identifier of the source
            :'url_or_key' => { base_name: 'url_or_key', type: 'String', required: true }
          }
        end
      end
    end
  end
end
