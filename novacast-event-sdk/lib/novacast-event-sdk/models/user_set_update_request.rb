module NovacastSDK
  module EventV1
    module Models
      # 
      class UserSetUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :label, :access, :enrollment, :account_only, :fields

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # label
            :'label' => { base_name: 'label', type: 'String', required: false },
            
            # access level
            :'access' => { base_name: 'access', type: 'String', required: false },
            
            # enrollment required
            :'enrollment' => { base_name: 'enrollment', type: 'BOOLEAN', required: false },
            
            # account only access
            :'account_only' => { base_name: 'account_only', type: 'BOOLEAN', required: false },
            
            # enrollment fields
            :'fields' => { base_name: 'fields', type: 'Array[EnrollmentField]', required: false }
            
          }
        end
      end
    end
  end
end
