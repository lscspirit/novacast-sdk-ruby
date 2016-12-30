module NovacastSDK
  module EventV1
    module Models
      # 
      class StreamMedium < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :label, :sources

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # uid of the stream
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            # resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true },
            # stream label
            :'label' => { base_name: 'label', type: 'String', required: true },
            # a collection of stream sources
            :'sources' => { base_name: 'sources', type: 'Array[StreamSource]', required: true }
          }
        end
      end
    end
  end
end
