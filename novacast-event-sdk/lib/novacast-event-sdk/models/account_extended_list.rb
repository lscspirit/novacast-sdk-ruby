module NovacastSDK
  module EventV1
    module Models
      # 
      class AccountExtendedList < NovacastSDK::BaseModel
        attr_accessor :accounts

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # list of AccountExtended
            :'accounts' => { base_name: 'accounts', type: 'Array[AccountExtended]', required: true }
          }
        end
      end
    end
  end
end
