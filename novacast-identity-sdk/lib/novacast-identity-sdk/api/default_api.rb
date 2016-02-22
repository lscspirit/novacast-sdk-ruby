module NovacastSDK
  module IdentityV1
    class DefaultApi < NovacastSDK::Client::BaseClient
      # SDK Configuration
      def self.config
        NovacastSDK::IdentityV1.config
      end


      # 
      # Validates an access token
      # @param access_token Access token
      # @return [Account]
      def validate_token(access_token)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "access_token"' if access_token.nil?
        

        op = NovacastSDK::Client::Operation.new '/access_tokens/{access_token}', :GET

        # path parameters
        path_params = {}
        path_params['access_token'] = access_token
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'appSecret', key: 'app_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::Account.from_json resp.body
        
      end

      # 
      # Creates a new `Account`
      # @param info Account Information
      # @return [Account]
      def create_account(info)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "info"' if info.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts', :POST

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = info.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::Account.from_json resp.body
        
      end

      # 
      # Sign in
      # @param info Account Information
      # @return [LoginResponse]
      def sign_in(info)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "info"' if info.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts/login', :POST

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = info.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::LoginResponse.from_json resp.body
        
      end

      # 
      # Sign out
      # @return [LogoutResponse]
      def sign_out()
        # checks if all required parameters are set
        

        op = NovacastSDK::Client::Operation.new '/accounts/logout', :GET

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'accessKey', key: 'access_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::LogoutResponse.from_json resp.body
        
      end

      # 
      # Gets the `User` object for the account
      # @param account_uid Account UID
      # @return [Account]
      def get_account(account_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "account_uid"' if account_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts/{account_uid}', :GET

        # path parameters
        path_params = {}
        path_params['account_uid'] = account_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        
        # authentication requirement
        op.auths = [
          { name: 'appSecret', key: 'app_token', in_query: true }
        ]
        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::Account.from_json resp.body
        
      end

      # 
      # Get all permissions associated with this account
      # @param account_uid uid of the Account
      # @param [Hash] opts the optional parameters
      # @option opts [Array[String]] :resources filter the result by resource names
      # @return [ResourcePermissionsList]
      def get_account_permissions(account_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "account_uid"' if account_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts/{account_uid}/permissions', :GET

        # path parameters
        path_params = {}
        path_params['account_uid'] = account_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['resources'] = opts['resources'] if opts['resources']
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::ResourcePermissionsList.from_json resp.body
        
      end

      # 
      # Validate whether the Account has a particular permission on a resource
      # @param account_uid uid of the Account
      # @param resource name of the resource
      # @param permission name of the permission
      # @return [InlineResponse200]
      def validate_account_permission(account_uid, resource, permission)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "account_uid"' if account_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "resource"' if resource.nil?
        
        raise ArgumentError, 'Missing required parameter "permission"' if permission.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts/{account_uid}/permissions/validate', :GET

        # path parameters
        path_params = {}
        path_params['account_uid'] = account_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['resource'] = resource
        query_params['permission'] = permission
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::InlineResponse200.from_json resp.body
        
      end

      # 
      # Get all roles on resources, along with corresponding permissions, associated with this account
      # @param account_uid uid of the Account
      # @param [Hash] opts the optional parameters
      # @option opts [Array[String]] :resources filter the result by resource names
      # @return [RoleResourcePermissionsList]
      def get_account_roles(account_uid, opts = {})
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "account_uid"' if account_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts/{account_uid}/roles', :GET

        # path parameters
        path_params = {}
        path_params['account_uid'] = account_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        query_params['resources'] = opts['resources'] if opts['resources']
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::RoleResourcePermissionsList.from_json resp.body
        
      end

      # 
      # Assign a role to an account
      # @param account_uid uid of the Account
      # @param role role data
      # @return [RoleResourcePermissions]
      def assign_account_role(account_uid, role)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "account_uid"' if account_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "role"' if role.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts/{account_uid}/roles', :POST

        # path parameters
        path_params = {}
        path_params['account_uid'] = account_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = role.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::RoleResourcePermissions.from_json resp.body
        
      end

      # 
      # Get all `AccessUserRole`
      # @param account_uid uid of the user account
      # @return [AccessUserRoleList]
      def get_account_user_roles(account_uid)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "account_uid"' if account_uid.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts/{account_uid}/user_roles', :GET

        # path parameters
        path_params = {}
        path_params['account_uid'] = account_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessUserRoleList.from_json resp.body
        
      end

      # 
      # Create a new `AccessUserRole`
      # @param account_uid uid of the user account
      # @param user_role User role
      # @return [AccessUserRole]
      def create_account_user_role(account_uid, user_role)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "account_uid"' if account_uid.nil?
        
        raise ArgumentError, 'Missing required parameter "user_role"' if user_role.nil?
        

        op = NovacastSDK::Client::Operation.new '/accounts/{account_uid}/user_roles', :POST

        # path parameters
        path_params = {}
        path_params['account_uid'] = account_uid
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = user_role.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessUserRole.from_json resp.body
        
      end

      # 
      # Create a new `Domain`
      # @param domain domain details
      # @return [Domain]
      def create_domain(domain)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "domain"' if domain.nil?
        

        op = NovacastSDK::Client::Operation.new '/domains', :POST

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = domain.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::Domain.from_json resp.body
        
      end

      # 
      # Get a `Domain` using the domain key
      # @param domain_key Domain key
      # @return [Domain]
      def get_domain_by_key(domain_key)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "domain_key"' if domain_key.nil?
        

        op = NovacastSDK::Client::Operation.new '/domains/key/{domain_key}', :GET

        # path parameters
        path_params = {}
        path_params['domain_key'] = domain_key
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::Domain.from_json resp.body
        
      end

      # 
      # Get a `Domain`
      # @param domain_id Account Information
      # @return [Domain]
      def get_domain(domain_id)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "domain_id"' if domain_id.nil?
        

        op = NovacastSDK::Client::Operation.new '/domains/{domain_id}', :GET

        # path parameters
        path_params = {}
        path_params['domain_id'] = domain_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::Domain.from_json resp.body
        
      end

      # 
      # Create a new `AccessPermission`
      # @param permission Details of the permission
      # @return [AccessPermission]
      def create_access_permission(permission)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "permission"' if permission.nil?
        

        op = NovacastSDK::Client::Operation.new '/permissions', :POST

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = permission.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessPermission.from_json resp.body
        
      end

      # 
      # Update an `AccessPermission`
      # @param permission_id AccessPermission id
      # @param permission Details of the permission
      # @return [AccessPermission]
      def update_access_permission(permission_id, permission)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "permission_id"' if permission_id.nil?
        
        raise ArgumentError, 'Missing required parameter "permission"' if permission.nil?
        

        op = NovacastSDK::Client::Operation.new '/permissions/{permission_id}', :PUT

        # path parameters
        path_params = {}
        path_params['permission_id'] = permission_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = permission.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessPermission.from_json resp.body
        
      end

      # 
      # Delete an `AccessPermission`
      # @param permission_id AccessPermission id
      # @return [AccessPermission]
      def delete_access_permission(permission_id)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "permission_id"' if permission_id.nil?
        

        op = NovacastSDK::Client::Operation.new '/permissions/{permission_id}', :DELETE

        # path parameters
        path_params = {}
        path_params['permission_id'] = permission_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessPermission.from_json resp.body
        
      end

      # 
      # Create a new `AccessResource`
      # @param resource Details of the resource
      # @return [AccessResource]
      def create_access_resource(resource)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "resource"' if resource.nil?
        

        op = NovacastSDK::Client::Operation.new '/resources', :POST

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = resource.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessResource.from_json resp.body
        
      end

      # 
      # Update an `AccessResource`
      # @param resource_id AccessResource id
      # @param resource Name of the resource
      # @return [AccessResource]
      def update_access_resource(resource_id, resource)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "resource_id"' if resource_id.nil?
        
        raise ArgumentError, 'Missing required parameter "resource"' if resource.nil?
        

        op = NovacastSDK::Client::Operation.new '/resources/{resource_id}', :PUT

        # path parameters
        path_params = {}
        path_params['resource_id'] = resource_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = resource.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessResource.from_json resp.body
        
      end

      # 
      # Delete an `AccessResource`
      # @param resource_id AccessResource id
      # @return [AccessResource]
      def delete_access_resource(resource_id)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "resource_id"' if resource_id.nil?
        

        op = NovacastSDK::Client::Operation.new '/resources/{resource_id}', :DELETE

        # path parameters
        path_params = {}
        path_params['resource_id'] = resource_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessResource.from_json resp.body
        
      end

      # 
      # Delete a `AccessRolePermission`
      # @param role_permission_id AccessRolePermission id
      # @return [AccessRolePermission]
      def delete_role_permission(role_permission_id)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_permission_id"' if role_permission_id.nil?
        

        op = NovacastSDK::Client::Operation.new '/role_permissions/{role_permission_id}', :DELETE

        # path parameters
        path_params = {}
        path_params['role_permission_id'] = role_permission_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessRolePermission.from_json resp.body
        
      end

      # 
      # Create a new `RoleSet`
      # @param role_set RoleSet Details
      # @return [RoleSet]
      def create_role_set(role_set)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_set"' if role_set.nil?
        

        op = NovacastSDK::Client::Operation.new '/role_sets', :POST

        # path parameters
        path_params = {}
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = role_set.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::RoleSet.from_json resp.body
        
      end

      # 
      # Get a `RoleSet` using the role set key
      # @param role_set_key RoleSet key
      # @return [RoleSet]
      def get_role_set_by_key(role_set_key)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_set_key"' if role_set_key.nil?
        

        op = NovacastSDK::Client::Operation.new '/role_sets/key/{role_set_key}', :GET

        # path parameters
        path_params = {}
        path_params['role_set_key'] = role_set_key
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::RoleSet.from_json resp.body
        
      end

      # 
      # Get a `RoleSet`
      # @param role_set_id RoleSet Id
      # @return [RoleSet]
      def get_role_set(role_set_id)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_set_id"' if role_set_id.nil?
        

        op = NovacastSDK::Client::Operation.new '/role_sets/{role_set_id}', :GET

        # path parameters
        path_params = {}
        path_params['role_set_id'] = role_set_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::RoleSet.from_json resp.body
        
      end

      # 
      # Get all `AccessRole` in the `AccessRoleSet`
      # @param role_set_id AccessRoleSet id
      # @return [AccessRoleList]
      def get_roles(role_set_id)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_set_id"' if role_set_id.nil?
        

        op = NovacastSDK::Client::Operation.new '/role_sets/{role_set_id}/roles', :GET

        # path parameters
        path_params = {}
        path_params['role_set_id'] = role_set_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessRoleList.from_json resp.body
        
      end

      # 
      # Create a new `AccessRole`
      # @param role_set_id AccessRoleSet id
      # @param role Access role details
      # @return [AccessRole]
      def create_role(role_set_id, role)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_set_id"' if role_set_id.nil?
        
        raise ArgumentError, 'Missing required parameter "role"' if role.nil?
        

        op = NovacastSDK::Client::Operation.new '/role_sets/{role_set_id}/roles', :POST

        # path parameters
        path_params = {}
        path_params['role_set_id'] = role_set_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = role.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessRole.from_json resp.body
        
      end

      # 
      # Update an `AccessRole`
      # @param role_id AccessRole id
      # @param role Access role details
      # @return [AccessRole]
      def update_role(role_id, role)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_id"' if role_id.nil?
        
        raise ArgumentError, 'Missing required parameter "role"' if role.nil?
        

        op = NovacastSDK::Client::Operation.new '/roles/{role_id}', :PUT

        # path parameters
        path_params = {}
        path_params['role_id'] = role_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = role.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessRole.from_json resp.body
        
      end

      # 
      # Delete an `AccessRole`
      # @param role_id AccessRole id
      # @return [AccessRole]
      def delete_access_role(role_id)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_id"' if role_id.nil?
        

        op = NovacastSDK::Client::Operation.new '/roles/{role_id}', :DELETE

        # path parameters
        path_params = {}
        path_params['role_id'] = role_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessRole.from_json resp.body
        
      end

      # 
      # Get `AccessRolePermission`
      # @param role_id AccessRole id
      # @return [AccessRolePermissionList]
      def get_role_permissions(role_id)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_id"' if role_id.nil?
        

        op = NovacastSDK::Client::Operation.new '/roles/{role_id}/permissions', :GET

        # path parameters
        path_params = {}
        path_params['role_id'] = role_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessRolePermissionList.from_json resp.body
        
      end

      # 
      # Create a new `AccessRolePermission`
      # @param role_id AccessRole id
      # @param role_permission role permission
      # @return [AccessRolePermission]
      def create_role_permission(role_id, role_permission)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "role_id"' if role_id.nil?
        
        raise ArgumentError, 'Missing required parameter "role_permission"' if role_permission.nil?
        

        op = NovacastSDK::Client::Operation.new '/roles/{role_id}/permissions', :POST

        # path parameters
        path_params = {}
        path_params['role_id'] = role_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        
        op.body = role_permission.to_json
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessRolePermission.from_json resp.body
        
      end

      # 
      # Delete an `AccessUserRole`
      # @param user_role_id AccessUserRole id
      # @return [AccessUserRole]
      def delete_user_role(user_role_id)
        # checks if all required parameters are set
        
        raise ArgumentError, 'Missing required parameter "user_role_id"' if user_role_id.nil?
        

        op = NovacastSDK::Client::Operation.new '/user_roles/{user_role_id}', :DELETE

        # path parameters
        path_params = {}
        path_params['user_role_id'] = user_role_id
        op.params = path_params

        # header parameters
        header_params = {}
        op.headers = header_params

        # query parameters
        query_params = {}
        op.query = query_params

        # http body (model)
        

        

        resp = call_api op

        
        NovacastSDK::IdentityV1::Models::AccessUserRole.from_json resp.body
        
      end
    end
  end
end
