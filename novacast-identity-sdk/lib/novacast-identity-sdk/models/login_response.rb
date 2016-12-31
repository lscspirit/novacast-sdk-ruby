module NovacastSDK
  module IdentityV1
    module Models
      # 
      class LoginResponse < NovacastSDK::BaseModel
        attr_accessor :user, :token

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # 
            :'user' => { base_name: 'user', type: 'Account', required: true },
            # access token
            :'token' => { base_name: 'token', type: 'String', required: true }
          }
        end
      end
    end
  end
end
