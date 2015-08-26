module Novacast
  module API
    module IdentityV1
      module Resources

        #
        ################ Authentication Services ###################
        #

        ############### Object Resources ###################

        class Domain < Novacast::SDK::JsonRepresentation
          property :key
          property :name
        end

        class User < Novacast::SDK::JsonRepresentation
          property :uid
          property :identifier
          property :domain_id
        end

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
          property :user, decorator: User
        end

        class LoginResponse < Novacast::SDK::JsonRepresentation
          property :user, decorator: User
          property :token
        end

        class LogoutResponse < Novacast::SDK::JsonRepresentation
          property :token
          property :revoked_at
        end

        class ValidateTokenResponse < Novacast::SDK::JsonRepresentation
          property :user, decorator: User
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

        class AccessRoleRepresenter < Novacast::SDK::JsonRepresentation
          property :domain_id
          property :name
          property :desc
        end

        class AccessPermissionRepresenter < Novacast::SDK::JsonRepresentation
          property :name
          property :desc
        end

        class AccessResourceRepresenter < Novacast::SDK::JsonRepresentation
          property :name
          property :desc
        end

        class AccessRolePermissionRepresenter < Novacast::SDK::JsonRepresentation
          property :role_id
          property :permission_id
          property :resource_id
        end

        class AccessUserRoleRepresenter < Novacast::SDK::JsonRepresentation
          property :user_id
          property :role_id
        end

        class GenericAccessObjRequest < Novacast::SDK::JsonRepresentation
          property :id
        end

        class CreateRolePermissionRequest < Novacast::SDK::JsonRepresentation
          property :role
          property :permission
          property :resource
        end

        class CreateUserRoleRequest < Novacast::SDK::JsonRepresentation
          property :user_id
          property :role
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

        class GenericAccessObjResponse < Novacast::SDK::JsonRepresentation
          property :success
          property :message
          property :result
        end

      end
    end
  end
end