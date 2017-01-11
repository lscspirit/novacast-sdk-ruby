module NovacastSDK
  module EventV1
    module Models
      # 
      class UserSetList < NovacastSDK::BaseModel
        attr_accessor :user_sets

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of user sets
            :'user_sets' => { base_name: 'user_sets', type: 'Array[UserSet]', required: true }
            
          }
        end
      end
    end
  end
end
