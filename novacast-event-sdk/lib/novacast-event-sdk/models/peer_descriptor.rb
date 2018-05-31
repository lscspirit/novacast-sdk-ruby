module NovacastSDK
  module EventV1
    module Models
      # 
      class PeerDescriptor < NovacastSDK::BaseModel
        attr_accessor :account_uid, :client_id, :listener_id

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # the uid for the account
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: true },
            
            # client id
            :'client_id' => { base_name: 'client_id', type: 'String', required: true },
            
            # listener identifier
            :'listener_id' => { base_name: 'listener_id', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
