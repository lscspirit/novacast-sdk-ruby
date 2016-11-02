module NovacastSDK
  module EventV1
    module Models
      # 
      class SwitchMappingRequest < NovacastSDK::BaseModel
        attr_accessor :new_active_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid for the new mapping
            :'new_active_uid' => { base_name: 'new_active_uid', type: 'String', required: true }
            
          }
        end
      end
    end
  end
end
