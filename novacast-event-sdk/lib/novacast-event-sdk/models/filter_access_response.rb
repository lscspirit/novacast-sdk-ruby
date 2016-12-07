module NovacastSDK
  module EventV1
    module Models
      # 
      class FilterAccessResponse < NovacastSDK::BaseModel
        attr_accessor :preview_mode, :view_event_permission, :action, :action_target

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # whether the preview mode is enabled
            :'preview_mode' => { base_name: 'preview_mode', type: 'BOOLEAN', required: false },
            
            # whether the user has the ViewEvent permission on this event
            :'view_event_permission' => { base_name: 'view_event_permission', type: 'BOOLEAN', required: false },
            
            # action to be performed as a result of the event access filtering
            :'action' => { base_name: 'action', type: 'String', required: false },
            
            # target for the action
            :'action_target' => { base_name: 'action_target', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
