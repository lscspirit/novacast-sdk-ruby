module NovacastSDK
  module EventV1
    module Models
      # 
      class WhiteListedUser < NovacastSDK::BaseModel
        attr_accessor :uid, :type, :identifier, :activation_code

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of this white-list entry
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # identifier type
            :'type' => { base_name: 'type', type: 'String', required: true },
            
            # account identifier
            :'identifier' => { base_name: 'identifier', type: 'String', required: true },
            
            # activation code for this entry
            :'activation_code' => { base_name: 'activation_code', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
