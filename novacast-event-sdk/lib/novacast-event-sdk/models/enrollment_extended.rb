module NovacastSDK
  module EventV1
    module Models
      # 
      class EnrollmentExtended < NovacastSDK::BaseModel
        attr_accessor :account_type, :account_uid, :revoked, :fields

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # type of the account
            :'account_type' => { base_name: 'account_type', type: 'String', required: true },
            
            # uid of the account
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: true },
            
            # account is revoked
            :'revoked' => { base_name: 'revoked', type: 'BOOLEAN', required: false },
            
            # field value map
            :'fields' => { base_name: 'fields', type: 'Hash[String, String]', required: true }
            
          }
        end
      end
    end
  end
end
