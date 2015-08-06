module Novacast
  module API
    module IdentityV1
      module Operations
        def init_op
          @access_obj_representer = {
              'access_role' => Resources::AccessRoleRepresenter,
              'access_permission' => Resources::AccessPermissionRepresenter,
              'access_resource' => Resources::AccessResourceRepresenter,
              'access_role_permission' => Resources::AccessRolePermissionRepresenter,
              'access_user_role' => Resources::AccessUserRoleRepresenter
          }
        end

        def novacast_signup(domain_name, identifier, password)
          path = 'accounts/signup'
          op   = Novacast::SDK::Operation.new path, :post

          op.request_representation  = Resources::SignUpRequest
          op.request_obj             = {
              :domain_name => domain_name,
              :provider_name => 'novacast',
              :identifier => identifier,
              :password => password,
              :access_token => ''
          }
          op.response_representation = Resources::SignUpResponse

          self.execute_operation op
        end

        def oauth_signup(domain_name, provider_name, access_token)
          path = 'accounts/signup'
          op   = Novacast::SDK::Operation.new path, :post

          op.request_representation  = Resources::SignUpRequest
          op.request_obj             = {
              :domain_name => domain_name,
              :provider_name => provider_name,
              :identifier => '',
              :password => '',
              :access_token => access_token
          }
          op.response_representation = Resources::SignUpResponse

          self.execute_operation op
        end

        def novacast_login(domain_name, identifier, password)
          path = 'accounts/login'
          op   = Novacast::SDK::Operation.new path, :post

          op.request_representation  = Resources::LoginRequest
          op.request_obj             = {
              :domain_name => domain_name,
              :provider_name => 'novacast',
              :identifier => identifier,
              :password => password,
              :access_token => ''
          }
          op.response_representation = Resources::LoginResponse

          self.execute_operation op
        end

        def oauth_login(domain_name, provider_name, access_token)
          path = 'accounts/login'
          op   = Novacast::SDK::Operation.new path, :post

          op.request_representation  = Resources::LoginRequest
          op.request_obj             = {
              :domain_name => domain_name,
              :provider_name => provider_name,
              :identifier => '',
              :password => '',
              :access_token => access_token
          }
          op.response_representation = Resources::LoginResponse

          self.execute_operation op
        end

        # @param [String] access_token access_token to revoke
        #
        def logout(access_token)
          path = 'accounts/logout'
          op   = Novacast::SDK::Operation.new path, :post

          op.request_representation  = Resources::LogoutRequest
          op.request_obj             = {
              :access_token => access_token
          }
          op.response_representation = Resources::LogoutResponse

          self.execute_operation op
        end

        # @param [String] access_token access_token
        #
        def validate_token(access_token)
          path = 'accounts/validate_token'
          op   = Novacast::SDK::Operation.new path, :get

          op.request_representation  = Resources::ValidateTokenRequest
          op.query             = {
              :access_token => access_token,
              :app_token => @app_token
          }
          op.response_representation = Resources::ValidateTokenResponse

          self.execute_operation op
        end

        def get_user_role_permissions(user_id)
          path = 'access/get_user_role_permissions'
          op   = Novacast::SDK::Operation.new path, :get

          op.request_representation  = Resources::UserRolePermissionsRequest
          op.query             = {
              :user_id => user_id
          }
          op.response_representation = Resources::UserRolePermissionsResponse

          self.execute_operation op
        end

        def get_user_permissions(user_id)
          path = 'access/get_user_permissions'
          op   = Novacast::SDK::Operation.new path, :get

          op.request_representation  = Resources::UserPermissionsRequest
          op.query             = {
              :user_id => user_id
          }
          op.response_representation = Resources::UserPermissionsResponse

          self.execute_operation op
        end

        # @param [Integer] user_id
        # @param [String] permission The Permissions in question
        # @param [String] resource The resource to be tested for given permission
        def validate_permissions_for_user(user_id, permission, resource)
          path = 'access/validate_permissions_for_user'
          op   = Novacast::SDK::Operation.new path, :get

          op.request_representation  = Resources::UserPermissionsValidationRequest
          op.query             = {
              :user_id => user_id,
              :permission => permission,
              :resource => resource
          }
          op.response_representation = Resources::UserPermissionsValidationResponse

          self.execute_operation op
        end

        def create_role_for_domain(domain_id, role_name, role_desc)
          obj = {
              :domain_id => domain_id,
              :name => role_name,
              :desc => role_desc
          }

          generic_resource_request('access_role', :post, nil, obj)
        end

        def create_access_permission(name, desc)
          obj = {
              :name => name,
              :desc => desc
          }

          generic_resource_request('access_permission', :post, nil, obj)
        end

        def create_access_resource(name, desc)
          obj = {
              :name => name,
              :desc => desc
          }

          generic_resource_request('access_resource', :post, nil, obj)
        end

        def create_access_role_permission(role_id, permission_id, resource_id)
          obj = {
              :role_id => role_id,
              :permission_id => permission_id,
              :resource_id => resource_id
          }

          generic_resource_request('access_role_permission', :post, nil, obj)
        end

        def create_access_user_role(user_id, role_id)
          obj = {
              :user_id => user_id,
              :role_id => role_id
          }

          generic_resource_request('access_user_role', :post, nil, obj)
        end

        #
        # Delete an access related object
        # access_obj can be either access_role / access_permission / access_resource / access_role_permission / access_user_role
        #
        def delete_access_obj(access_obj, id)
          generic_resource_request(access_obj, :delete, id, nil)
        end

        def update_access_obj(access_obj, id, new_obj)
          generic_resource_request(access_obj, :put, id, new_obj)
        end

        #
        # This could be confusing but done in flavor of genericity
        # for access_user_role: id = user_id
        # for access_role: id = domain_id
        # all other objects, this operation is invalid
        #
        def retrieve_access_obj(access_obj, id)
          generic_resource_request(access_obj, :get, id, nil)
        end


        def set_permission_for_role(role, permission, resource)
          path = 'access/set_permission_for_role'
          op   = Novacast::SDK::Operation.new path, :post

          op.request_representation  = Resources::CreateRolePermissionRequest
          op.request_obj             = {
              :role => role,
              :permission => permission,
              :resource => resource
          }
          op.response_representation = Resources::GenericAccessObjResponse

          self.execute_operation op
        end

        def set_role_for_user(user_id, role)
          path = 'access/set_role_for_user'
          op   = Novacast::SDK::Operation.new path, :post

          op.request_representation  = Resources::CreateUserRoleRequest
          op.request_obj             = {
              :user_id => user_id,
              :role => role
          }
          op.response_representation = Resources::GenericAccessObjResponse

          self.execute_operation op
        end

        private

        def generic_resource_request(access_obj, op_name, id, params)
          if ! allowable_access_obj.include? access_obj
            raise ArgumentError.new("invalid access obj used")
          else
            if op_name == :get
              path = '%s'%[access_obj]
              op   = Novacast::SDK::Operation.new path, op_name
              op.query = {
                  :id => id
              }
            else
              if op_name == :post
                #a post aka create does not require an id
                path = '%s'%[access_obj]
              else
                path = '%s/%s'%[access_obj, id]
              end

              op   = Novacast::SDK::Operation.new path, op_name

              if op_name != :delete
                #both post and update needs a request object
                op.request_representation = @access_obj_representer[access_obj]
                op.request_obj = params
              end

            end
            op.response_representation = Resources::GenericAccessObjResponse

            self.execute_operation op
          end
        end

        def allowable_access_obj
          %w(access_role access_permission access_resource access_role_permission access_user_role)
        end

      end
    end
  end
end