module NovacastSDK
  module EventV1
    module Models
      # 
      class Event < NovacastSDK::BaseModel
        attr_accessor :uid, :name, :stage

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the event
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # name of the event
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # state of the event
            :'stage' => { base_name: 'stage', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
