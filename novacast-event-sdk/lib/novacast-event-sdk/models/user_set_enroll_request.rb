module NovacastSDK
  module EventV1
    module Models
      # 
      class UserSetEnrollRequest < NovacastSDK::BaseModel
        attr_accessor :account_uid, :fields

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the account to enroll
            :'account_uid' => { base_name: 'account_uid', type: 'String', required: true },
            
            # enrollment field values
            :'fields' => { base_name: 'fields', type: 'Array[EnrollmentFieldValue]', required: false }
            
          }
        end
      end
    end
  end
end
