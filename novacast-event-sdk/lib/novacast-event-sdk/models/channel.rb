module NovacastSDK
  module EventV1
    module Models
      # 
      class Channel < NovacastSDK::BaseModel
        attr_accessor :name, :uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # channel name
            :'name' => { base_name: 'name', type: 'String', required: true },
            # channel uid
            :'uid' => { base_name: 'uid', type: 'String', required: true }
          }
        end
      end
    end
  end
end
