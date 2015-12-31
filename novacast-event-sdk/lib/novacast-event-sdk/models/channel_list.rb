module NovacastSDK
  module EventV1
    module Models
      # 
      class ChannelList < NovacastSDK::BaseModel
        attr_accessor :channels

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # collection of channels
            :'channels' => { base_name: 'channels', type: 'Array[Channel]', required: true }
            
          }
        end
      end
    end
  end
end
