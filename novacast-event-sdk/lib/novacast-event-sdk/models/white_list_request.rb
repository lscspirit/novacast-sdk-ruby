module NovacastSDK
  module EventV1
    module Models
      # 
      class WhiteListRequest < NovacastSDK::BaseModel
        attr_accessor :type, :activation_code, :identifiers

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # identifier type
            :'type' => { base_name: 'type', type: 'String', required: true },
            
            # requires activation codegen
            :'activation_code' => { base_name: 'activation_code', type: 'BOOLEAN', required: false },
            
            # a list of identifiers
            :'identifiers' => { base_name: 'identifiers', type: 'Array[String]', required: true }
            
          }
        end
      end
    end
  end
end
