module NovacastSDK
  module EventV1
    module Models
      # 
      class LiveMeetingConnectRequest < NovacastSDK::BaseModel
        attr_accessor :host_descriptor, :peer_uid, :meeting_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'host_descriptor' => { base_name: 'host_descriptor', type: 'PeerDescriptor', required: false },
            
            # uid of the peer
            :'peer_uid' => { base_name: 'peer_uid', type: 'String', required: true },
            
            # uid of the meeting
            :'meeting_uid' => { base_name: 'meeting_uid', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
