module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountExtended < NovacastSDK::BaseModel
        attr_accessor :uid, :identifier, :domain, :provider, :roles

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # account unique id
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # account identifier (username or email)
            :'identifier' => { base_name: 'identifier', type: 'String', required: true },
            
            # domain name
            :'domain' => { base_name: 'domain', type: 'String', required: true },
            
            # auth provider name
            :'provider' => { base_name: 'provider', type: 'String', required: true },
            
            # role to resources map
            :'roles' => { base_name: 'roles', type: 'Hash[String, Array[String]]', required: true }
            
          }
        end
      end
    end
  end
end
