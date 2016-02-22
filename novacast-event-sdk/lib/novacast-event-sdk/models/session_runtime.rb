module NovacastSDK
  module EventV1
    module Models
      # 
      class SessionRuntime < NovacastSDK::BaseModel
        attr_accessor :session_uid, :modules

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the current session
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: true },
            
            # runtime config for individual module
            :'modules' => { base_name: 'modules', type: 'Array[ModuleRuntime]', required: true }
            
          }
        end
      end
    end
  end
end
