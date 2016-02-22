module NovacastSDK
  module EventV1
    module Models
      # 
      class UserSet < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :label, :access, :enrollment, :account_only

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
            
            # access level
            :'access' => { base_name: 'access', type: 'String', required: true },
            
            # enrollment required
            :'enrollment' => { base_name: 'enrollment', type: 'BOOLEAN', required: true },
            
            # account only access
            :'account_only' => { base_name: 'account_only', type: 'BOOLEAN', required: true }
            
          }
        end
      end
    end
  end
end
