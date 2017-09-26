module NovacastSDK
  module EventV1
    module Models
      # 
      class ChannelBatchRequest < NovacastSDK::BaseModel
        attr_accessor :channel_uids

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the channel uids
            :'channel_uids' => { base_name: 'channel_uids', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
