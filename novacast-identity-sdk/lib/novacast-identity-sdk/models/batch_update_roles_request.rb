module NovacastSDK
  module IdentityV1
    module Models
      # 
      class BatchUpdateRolesRequest < NovacastSDK::BaseModel
        attr_accessor :assign, :delete

        def self.api_model_module
          NovacastSDK::IdentityV1::Models
        end

        def self.model_properties
          {
            # list of assign role request
            :'assign' => { base_name: 'assign', type: 'Array[AssignRoleRequest]', required: false },
            # list of delete role request
            :'delete' => { base_name: 'delete', type: 'Array[DeleteRoleRequest]', required: false }
          }
        end
      end
    end
  end
end
