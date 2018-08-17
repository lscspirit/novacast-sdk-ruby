module NovacastSDK
  module EventV1
    module Models
      # 
      class RTSConfig < NovacastSDK::BaseModel
        attr_accessor :ice_servers

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # list of ICE servers to be used in a WebRTC connection
            :'ice_servers' => { base_name: 'ice_servers', type: 'Object', required: true }
            
          }
        end
      end
    end
  end
end
