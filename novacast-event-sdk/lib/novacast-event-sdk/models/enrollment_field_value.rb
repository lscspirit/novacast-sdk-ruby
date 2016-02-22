module NovacastSDK
  module EventV1
    module Models
      # 
      class EnrollmentFieldValue < NovacastSDK::BaseModel
        attr_accessor :field_name, :value

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # name of the field
            :'field_name' => { base_name: 'field_name', type: 'String', required: true },
            
            # value of the field
            :'value' => { base_name: 'value', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
