module NovacastSDK
  module EventV1
    module Models
      # 
      class UserRuntimeData < NovacastSDK::BaseModel
        attr_accessor :user_data

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # user data for each modules
            :'user_data' => { base_name: 'user_data', type: 'Object', required: true }
            
          }
        end
      end
    end
  end
end
