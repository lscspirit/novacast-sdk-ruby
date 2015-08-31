module Novacast
  module API
    module IdentityV1
      module Resources

        #
        ################ Authentication Services ###################
        #

        ############### Objects ###################

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
          property :user, decorator: User, class: OpenStruct
        end

        class LoginResponse < Novacast::SDK::JsonRepresentation
          property :user, decorator: User, class: OpenStruct
          property :token
        end

        class LogoutResponse < Novacast::SDK::JsonRepresentation
          property :token
          property :revoked_at
        end

        class ValidateTokenResponse < Novacast::SDK::JsonRepresentation
          property :user, decorator: User, class: OpenStruct
        end

        #
        ############# Authorization Services ########################
        #

        ############### Objects ###################

        # Role Set
        class AccessRoleSet < Novacast::SDK::JsonRepresentation
          property :key
          property :desc
        end

        # Role
        class AccessRole < Novacast::SDK::JsonRepresentation
          property :role_set_id
          property :name
          property :desc
        end

        # Role List
        class AccessRoleList < Novacast::SDK::JsonRepresentation
          collection :roles, decorator: AccessRole, class: OpenStruct
        end

        # Permission
        class AccessPermission < Novacast::SDK::JsonRepresentation
          property :name
          property :desc
        end

        # Resource
        class AccessResource < Novacast::SDK::JsonRepresentation
          property :name
          property :desc
        end

        # Role Permission
        class AccessRolePermission < Novacast::SDK::JsonRepresentation
          property :role_id
          property :permission_id
          property :resource_id
        end

        # Role Permission List
        class AccessRolePermissionList < Novacast::SDK::JsonRepresentation
          collection :role_permissions, decorator: AccessRolePermission, class: OpenStruct
        end

        # Role Permission with names
        class Permission < Novacast::SDK::JsonRepresentation
          property :permission_name, as: :permission
          property :resource_name,   as: :resource
        end

        # Role Permission (with names) List
        class RolePermissions < Novacast::SDK::JsonRepresentation
          property   :name, as: :role_name
          collection :role_permissions, as: :permissions, decorator: Permission, class: OpenStruct
        end

        # User and Role mapping
        class AccessUserRole < Novacast::SDK::JsonRepresentation
          property :user_uid
          property :role_id
        end

        # User and Role mapping with names
        class UserRole < Novacast::SDK::JsonRepresentation
          property :role_name, as: :name
          property :role_desc, as: :desc
        end

        # User and Role mapping List
        class AccessUserRoleList < Novacast::SDK::JsonRepresentation
          collection :user_roles, decorator: AccessUserRole, class: OpenStruct
        end

        ################ Request Resources #################

        class UserRolePermissionsRequest < Novacast::SDK::JsonRepresentation
          property :user_uid
        end

        class UserPermissionsRequest < Novacast::SDK::JsonRepresentation
          property :user_uid
        end

        class UserPermissionsValidationRequest < Novacast::SDK::JsonRepresentation
          property :user_uid
          property :permission
          property :resource
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
          property :user_uid
          property :role
        end

        ############### Response Resources ###################

        class UserRolesResponse < Novacast::SDK::JsonRepresentation
          property   :uid, as: :user_uid
          collection :user_roles, as: :roles, decorator: UserRole, class: OpenStruct
        end

        class UserRolePermissionsResponse < Novacast::SDK::JsonRepresentation
          collection :roles, decorator: RolePermissions, class: OpenStruct
        end

        class UserPermissionsResponse < Novacast::SDK::JsonRepresentation
          collection :permissions, decorator: Permission, class: OpenStruct
        end

        class UserPermissionValidationResponse < Novacast::SDK::JsonRepresentation
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