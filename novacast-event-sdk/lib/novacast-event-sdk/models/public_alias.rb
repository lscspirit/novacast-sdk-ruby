module NovacastSDK
  module EventV1
    module Models
      # 
      class PublicAlias < NovacastSDK::BaseModel
        attr_accessor :uid, :path

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the alias mapping
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # alias path
            :'path' => { base_name: 'path', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
