module NovacastSDK
  module EventV1
    module Models
      # 
      class PeerConnector < NovacastSDK::BaseModel
        attr_accessor :descriptor, :perm_token

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'descriptor' => { base_name: 'descriptor', type: 'PeerDescriptor', required: true },
            
            # permission token string
            :'perm_token' => { base_name: 'perm_token', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
