module NovacastSDK
  module EventV1
    module Models
      # 
      class WhitelistPattern < NovacastSDK::BaseModel
        attr_accessor :uid, :enrollment_field, :pattern_type, :pattern

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # pattern uid
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # the field this pattern applies to
            :'enrollment_field' => { base_name: 'enrollment_field', type: 'String', required: true },
            
            # pattern type
            :'pattern_type' => { base_name: 'pattern_type', type: 'String', required: true },
            
            # pattern value
            :'pattern' => { base_name: 'pattern', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
