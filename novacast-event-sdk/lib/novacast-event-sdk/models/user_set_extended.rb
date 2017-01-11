module NovacastSDK
  module EventV1
    module Models
      # 
      class UserSetExtended < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :label, :channel_uid, :ch_acct_only, :whitelisted_only, :full_enrollment, :fields

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # user set uid
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # user set resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true },
            
            # label
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # channel uid
            :'channel_uid' => { base_name: 'channel_uid', type: 'String', required: true },
            
            # channel accounts only
            :'ch_acct_only' => { base_name: 'ch_acct_only', type: 'BOOLEAN', required: true },
            
            # whitelisted accounts only
            :'whitelisted_only' => { base_name: 'whitelisted_only', type: 'BOOLEAN', required: true },
            
            # enrollment required
            :'full_enrollment' => { base_name: 'full_enrollment', type: 'BOOLEAN', required: true },
            
            # a collection of enrollment fields
            :'fields' => { base_name: 'fields', type: 'Array[EnrollmentField]', required: true }
            
          }
        end
      end
    end
  end
end
