module NovacastSDK
  module IdentityV1
    module Models
      # 
      class LogoutResponse < NovacastSDK::BaseModel
        attr_accessor :token, :revoked_at

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # access token
            :'token' => { base_name: 'token', type: 'String', required: false },
            # revocation time
            :'revoked_at' => { base_name: 'revoked_at', type: 'DateTime', required: false }
          }
        end
      end
    end
  end
end
