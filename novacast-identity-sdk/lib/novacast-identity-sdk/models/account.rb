module NovacastSDK
  module IdentityV1
    module Models
      # 
      class Account < NovacastSDK::BaseModel
        attr_accessor :uid, :identifier, :domain_id

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # account unique id (uid)
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # account identifier (username or email)
            :'identifier' => { base_name: 'identifier', type: 'String', required: true },
            
            # domain id
            :'domain_id' => { base_name: 'domain_id', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
