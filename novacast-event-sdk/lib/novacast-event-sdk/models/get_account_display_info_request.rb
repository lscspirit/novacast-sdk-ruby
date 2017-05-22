module NovacastSDK
  module EventV1
    module Models
      # 
      class GetAccountDisplayInfoRequest < NovacastSDK::BaseModel
        attr_accessor :account_uids

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'account_uids' => { base_name: 'account_uids', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
