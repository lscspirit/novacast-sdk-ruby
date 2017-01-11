module NovacastSDK
  module EventV1
    module Models
      # 
      class PageRuntime < NovacastSDK::BaseModel
        attr_accessor :session_uid, :modules, :info

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the current session
            :'session_uid' => { base_name: 'session_uid', type: 'String', required: false },
            
            # runtime config for individual module
            :'modules' => { base_name: 'modules', type: 'Array[ModuleRuntime]', required: false },
            
            # 
            :'info' => { base_name: 'info', type: 'RuntimeInfo', required: false }
            
          }
        end
      end
    end
  end
end
