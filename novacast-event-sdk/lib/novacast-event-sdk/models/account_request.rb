module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountRequest < NovacastSDK::BaseModel
        attr_accessor :identifier, :password

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # account identifier (username or email)
            :'identifier' => { base_name: 'identifier', type: 'String', required: true },
            
            # account password
            :'password' => { base_name: 'password', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
