module NovacastSDK
  module EventV1
    module Models
      # 
      class EventExtended < NovacastSDK::BaseModel
        attr_accessor :name, :uid, :public_aliases, :stage

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # name of the event
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # uid of the event
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # list of public aliases
            :'public_aliases' => { base_name: 'public_aliases', type: 'Array[PublicAlias]', required: true },
            
            # state of the event
            :'stage' => { base_name: 'stage', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
