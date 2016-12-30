module NovacastSDK
  module EventV1
    module Models
      # 
      class WhitelistRequest < NovacastSDK::BaseModel
        attr_accessor :type, :identifiers

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # identifier type
            :'type' => { base_name: 'type', type: 'String', required: true },
            # a list of identifiers
            :'identifiers' => { base_name: 'identifiers', type: 'Array[String]', required: true }
          }
        end
      end
    end
  end
end
