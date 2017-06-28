module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AuthProviderRequest < NovacastSDK::BaseModel
        attr_accessor :name, :application_id, :application_secret, :handler_type

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # provider name
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # application id for the authentication server
            :'application_id' => { base_name: 'application_id', type: 'String', required: true },
            
            # application secret for the authentication server
            :'application_secret' => { base_name: 'application_secret', type: 'String', required: true },
            
            # type of authentication
            :'handler_type' => { base_name: 'handler_type', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
