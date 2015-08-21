module Novacast
  module API
    module IdentityV1
      module Resources

        #
        ################ Authentication Services ###################
        #

        ########### Request Resources ############

        #
        # SignUpRequest Resources
        #

        class SignUpRequest < Novacast::SDK::JsonRepresentation
          property :domain_name
          property :provider_name
          property :identifier
          property :password
          property :access_token
        end

        #
        # LoginRequest Resources
        #

        class LoginRequest < Novacast::SDK::JsonRepresentation
          property :domain_name
          property :provider_name
          property :identifier
          property :password
          property :access_token
        end

        class LogoutRequest < Novacast::SDK::JsonRepresentation
          property :access_token
        end

        class ValidateTokenRequest < Novacast::SDK::JsonRepresentation
          property :access_token
          property :app_token
        end

        ############### Response Resources ###################

        class SignUpResponse < Novacast::SDK::JsonRepresentation
          property :success
          property :message
        end

        class LoginResponse < Novacast::SDK::JsonRepresentation
          property :success
          property :message
          property :token
        end

        class LogoutResponse < Novacast::SDK::JsonRepresentation
          property :success
        end

        class ValidateTokenResponse < Novacast::SDK::JsonRepresentation
          property :valid
          property :user_id
          property :message
        end

        ############### Object Resources ###################

        class Domain < Novacast::SDK::JsonRepresentation
          property :key
          property :name
        end

        #
        ############# Authorization Services ########################
        #

        ################ Request Resources #################

        class UserRolePermissionsRequest < Novacast::SDK::JsonRepresentation
          property :user_id
        end

        class UserPermissionsRequest < Novacast::SDK::JsonRepresentation
          property :user_id
        end

        class UserPermissionsValidationRequest < Novacast::SDK::JsonRepresentation
          property :user_id
          property :permission
          property :resource
        end

        ############### Response Resources ###################

        class PermissionRepresenter < Novacast::SDK::JsonRepresentation
          property :permission
          property :resource
        end

        class Permissions < OpenStruct
        end

        class RolePermissionRepresenter < Novacast::SDK::JsonRepresentation
          property :role_name
          collection :permissions, extend: PermissionRepresenter, class: Permissions
        end

        class RolePermissions < OpenStruct
        end

        class UserRolePermissionsResponse < Novacast::SDK::JsonRepresentation
          collection :roles, extend: RolePermissionRepresenter,class: RolePermissions
        end

        class UserPermissionsResponse < Novacast::SDK::JsonRepresentation
          collection :permissions, extend: PermissionRepresenter, class: Permissions
        end

        class UserPermissionsValidationResponse < Novacast::SDK::JsonRepresentation
          property :valid
        end

      end
    end
  end
end