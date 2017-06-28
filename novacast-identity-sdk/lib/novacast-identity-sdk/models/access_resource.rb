module NovacastSDK
  module IdentityV1
    module Models
      # 
      class AccessResource < NovacastSDK::BaseModel
        attr_accessor :name, :desc, :id

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # name of the resource
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # description of the resource
            :'desc' => { base_name: 'desc', type: 'String', required: false },
            
            # access resource id
            :'id' => { base_name: 'id', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
