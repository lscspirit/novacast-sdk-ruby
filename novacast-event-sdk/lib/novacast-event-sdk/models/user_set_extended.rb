module NovacastSDK
  module EventV1
    module Models
      # 
      class UserSetExtended < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :account_only, :enrollment, :label, :access, :fields

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # user set uid
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # user set resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true },
            
            # account only access
            :'account_only' => { base_name: 'account_only', type: 'BOOLEAN', required: true },
            
            # enrollment required
            :'enrollment' => { base_name: 'enrollment', type: 'BOOLEAN', required: true },
            
            # label
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # access level
            :'access' => { base_name: 'access', type: 'String', required: true },
            
            # a collection of enrollment fields
            :'fields' => { base_name: 'fields', type: 'Array[EnrollmentField]', required: true }
            
          }
        end
      end
    end
  end
end
