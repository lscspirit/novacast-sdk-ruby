module NovacastSDK
  module EventV1
    module Models
      # 
      class FilterAccessRequest < NovacastSDK::BaseModel
        attr_accessor :client_request

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # 
            :'client_request' => { base_name: 'client_request', type: 'ClientRequestInfo', required: true }
          }
        end
      end
    end
  end
end
