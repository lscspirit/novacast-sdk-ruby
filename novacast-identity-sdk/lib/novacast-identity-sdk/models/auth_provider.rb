module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AuthProvider < NovacastSDK::BaseModel
        attr_accessor :id, :name, :auth_type

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # provider id
            :'id' => { base_name: 'id', type: 'Integer', required: true },
            
            # name of the provider
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # authentication type
            :'auth_type' => { base_name: 'auth_type', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
