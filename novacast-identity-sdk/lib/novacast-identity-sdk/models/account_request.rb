module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccountRequest < NovacastSDK::BaseModel
        attr_accessor :domain_name, :provider_name, :identifier, :password, :access_token

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # domain name
            :'domain_name' => { base_name: 'domain_name', type: 'String', required: true },
            # OAuth provider name
            :'provider_name' => { base_name: 'provider_name', type: 'String', required: true },
            # account identifier (username or email)
            :'identifier' => { base_name: 'identifier', type: 'String', required: false },
            # account password
            :'password' => { base_name: 'password', type: 'String', required: false },
            # access token provided by a third party OAuth provider
            :'access_token' => { base_name: 'access_token', type: 'String', required: false }
          }
        end
      end
    end
  end
end
