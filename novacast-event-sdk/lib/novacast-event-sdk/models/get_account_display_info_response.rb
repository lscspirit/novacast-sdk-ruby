module NovacastSDK
  module EventV1
    module Models
      # 
      class GetAccountDisplayInfoResponse < NovacastSDK::BaseModel
        attr_accessor :account_info

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # map of account display info
            :'account_info' => { base_name: 'account_info', type: 'Hash[String, AccountDisplayInfo]', required: false }
            
          }
        end
      end
    end
  end
end
