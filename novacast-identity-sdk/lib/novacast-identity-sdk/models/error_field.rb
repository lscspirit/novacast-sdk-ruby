module NovacastSDK
  module IdentityV1
    module Models
      # 
      class ErrorField < NovacastSDK::BaseModel
        attr_accessor :field, :message

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # name of the attribute/field
            :'field' => { base_name: 'field', type: 'String', required: true },
            
            # error message
            :'message' => { base_name: 'message', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
