module NovacastSDK
  module EventV1
    module Models
      # 
      class StreamMediumInfoList < NovacastSDK::BaseModel
        attr_accessor :media

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of stream medium info
            :'media' => { base_name: 'media', type: 'Array[StreamMediumInfo]', required: true }
            
          }
        end
      end
    end
  end
end
