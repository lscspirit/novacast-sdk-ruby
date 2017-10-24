module NovacastSDK
  module EventV1
    module Models
      # 
      class FilterAccessAction < NovacastSDK::BaseModel
        attr_accessor :action, :target, :value

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # action to be performed as a result of the event access filtering
            :'action' => { base_name: 'action', type: 'String', required: false },
            
            # target for the action
            :'target' => { base_name: 'target', type: 'String', required: false },
            
            # value for the action
            :'value' => { base_name: 'value', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
