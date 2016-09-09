module NovacastSDK
  module EventV1
    module Models
      # 
      class FilterAccessResponse < NovacastSDK::BaseModel
        attr_accessor :preview_mode, :view_perm

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # whether the preview mode is enabled
            :'preview_mode' => { base_name: 'preview_mode', type: 'BOOLEAN', required: false },
            
            # whether the user has view event permission
            :'view_perm' => { base_name: 'view_perm', type: 'BOOLEAN', required: false }
            
          }
        end
      end
    end
  end
end
