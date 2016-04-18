module NovacastSDK
  module EventV1
    module Models
      # 
      class UserSetUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :label, :ch_acct_only, :whitelisted_only, :full_enrollment, :fields

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # label
            :'label' => { base_name: 'label', type: 'String', required: false },
            
            # channel accounts only
            :'ch_acct_only' => { base_name: 'ch_acct_only', type: 'BOOLEAN', required: false },
            
            # whitelisted accounts only
            :'whitelisted_only' => { base_name: 'whitelisted_only', type: 'BOOLEAN', required: false },
            
            # enrollment required
            :'full_enrollment' => { base_name: 'full_enrollment', type: 'BOOLEAN', required: false },
            
            # enrollment fields
            :'fields' => { base_name: 'fields', type: 'Array[EnrollmentField]', required: false }
            
          }
        end
      end
    end
  end
end
