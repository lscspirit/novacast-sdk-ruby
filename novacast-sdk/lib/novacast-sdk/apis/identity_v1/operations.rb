module Novacast
  module API
    module IdentityV1
      module Operations
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

        # @param [String] access_token access_token to revoke
        #
        # @param [String] app_token application_uid | application_secret
        def validate_token(access_token, app_token)
          path = 'accounts/validate_token'
          op   = Novacast::SDK::Operation.new path, :get

          op.request_representation  = Resources::ValidateTokenRequest
          op.query             = {
              :access_token => access_token,
              :app_token => app_token
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

     end
    end
  end
end