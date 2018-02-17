module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionUserList < NovacastSDK::BaseModel
        attr_accessor :user_uids

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # list of user uids
            :'user_uids' => { base_name: 'user_uids', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
