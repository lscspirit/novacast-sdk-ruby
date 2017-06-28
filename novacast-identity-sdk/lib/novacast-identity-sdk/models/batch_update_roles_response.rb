module NovacastSDK
  module IdentityV1
    module Models
      # 
      class BatchUpdateRolesResponse < NovacastSDK::BaseModel
        attr_accessor :assigned, :deleted

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            
            # list of assigned role resource permissions
            :'assigned' => { base_name: 'assigned', type: 'Array[RoleResourcePermissions]', required: false },
            
            # list of deleted role resource permissions
            :'deleted' => { base_name: 'deleted', type: 'Array[RoleResourcePermissions]', required: false }
            
          }
        end
      end
    end
  end
end
