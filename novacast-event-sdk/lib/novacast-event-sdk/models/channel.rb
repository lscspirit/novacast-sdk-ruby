module NovacastSDK
  module EventV1
    module Models
      # 
      class Channel < NovacastSDK::BaseModel
        attr_accessor :uid, :name

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # channel uid
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # channel name
            :'name' => { base_name: 'name', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
