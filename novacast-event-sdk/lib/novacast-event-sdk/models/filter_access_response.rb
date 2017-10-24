module NovacastSDK
  module EventV1
    module Models
      # 
      class FilterAccessResponse < NovacastSDK::BaseModel
        attr_accessor :preview_mode, :view_event_permission, :actions

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # whether the preview mode is enabled
            :'preview_mode' => { base_name: 'preview_mode', type: 'BOOLEAN', required: false },
            
            # whether the user has the ViewEvent permission on this event
            :'view_event_permission' => { base_name: 'view_event_permission', type: 'BOOLEAN', required: false },
            
            # action list
            :'actions' => { base_name: 'actions', type: 'Array[FilterAccessAction]', required: false }
            
          }
        end
      end
    end
  end
end
