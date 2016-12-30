module NovacastSDK
  module EventV1
    module Models
      # 
      class WhitelistedUser < NovacastSDK::BaseModel
        attr_accessor :type, :identifier, :revoked

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # identifier type
            :'type' => { base_name: 'type', type: 'String', required: true },
            # account identifier
            :'identifier' => { base_name: 'identifier', type: 'String', required: true },
            # is revoked
            :'revoked' => { base_name: 'revoked', type: 'BOOLEAN', required: true }
          }
        end
      end
    end
  end
end
