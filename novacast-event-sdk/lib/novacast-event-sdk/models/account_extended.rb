module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountExtended < NovacastSDK::BaseModel
        attr_accessor :uid, :identifier, :domain, :provider, :resource_roles

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
            # list of resource-roles mapping
            :'resource_roles' => { base_name: 'resource_roles', type: 'Array[AccountResourceRoles]', required: false }
          }
        end
      end
    end
  end
end
