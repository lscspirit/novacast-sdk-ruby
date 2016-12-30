module NovacastSDK
  module EventV1
    module Models
      # 
      class ClientRequestInfo < NovacastSDK::BaseModel
        attr_accessor :method, :protocol, :remote_ip, :referrer

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # request method
            :'method' => { base_name: 'method', type: 'String', required: true },
            # request protocol
            :'protocol' => { base_name: 'protocol', type: 'String', required: true },
            # client IP
            :'remote_ip' => { base_name: 'remote_ip', type: 'String', required: true },
            # request referrer
            :'referrer' => { base_name: 'referrer', type: 'String', required: false }
          }
        end
      end
    end
  end
end
