module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountList < NovacastSDK::BaseModel
        attr_accessor :accounts

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # list of Account
            :'accounts' => { base_name: 'accounts', type: 'Array[Account]', required: true }
            
          }
        end
      end
    end
  end
end
