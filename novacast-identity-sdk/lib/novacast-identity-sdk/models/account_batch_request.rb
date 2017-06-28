module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccountBatchRequest < NovacastSDK::BaseModel
        attr_accessor :account_uids

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # the account uids
            :'account_uids' => { base_name: 'account_uids', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
