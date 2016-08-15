module NovacastSDK
  module EventV1
    module Models
      # 
      class Account < NovacastSDK::BaseModel
        attr_accessor :uid, :identifier

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # account unique id (uid)
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # account identifier (username or email)
            :'identifier' => { base_name: 'identifier', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
