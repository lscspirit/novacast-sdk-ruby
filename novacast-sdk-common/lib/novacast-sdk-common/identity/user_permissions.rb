module NovacastSDK
  module Identity
    class UserPermissions
      # Create an instance of a user permission cache
      # @yield [resources] a block that fetches and returns user roles/permissions for a list of resources
      # @yieldparam resources [Array<String>] a list of resources
      # @yieldreturn [Array<RoleResourcePermissions>]
      #
      # @example
      #   user_uid = '1234567'
      #   UserPermissions.new do |resources|
      #     result = NovacastSDK::IdentityV1::DefaultApi.client.get_account_roles user_uid, resources: resources
      #     result.items
      #   end
      def initialize(&block)
        raise ArgumentError, 'must specify a permission fetch block' unless block_given?

        @fetch_block = block
        @resource_permissions = Hash.new { Set.new }
        @resource_roles       = Hash.new { Set.new }
      end

      #
      # Accessor Methods
      #

      # Checks if the user has any of the provided permission on the corresponding resource
      #
      # @param resource_permissions [Hash<String => Symbol>] a mapping of resource to permission
      # @return [true, false] true if the user has at least one of the required permission; false otherwise
      def has_permissions?(resource_permissions)
        fetch_permissions! resource_permissions.keys

        resource_permissions.detect do |res, perm|
          @resource_permissions[res].include? Definition::PERMISSIONS[perm]
        end
      end

      # Checks if the user has any of the provided role on the corresponding resource
      #
      # @param resource_roles [Hash<String => Symbol>] a mapping of resource to role
      # @return [true, false] true if the user has at least one of the required role; false otherwise
      def has_roles?(resource_roles)
        fetch_permissions! resource_roles.keys

        resource_roles.detect do |res, role|
          @resource_roles[res].include? Definition::ROLES[role]
        end
      end

      private

      def fetch_permissions!(resources)
        # filter out resources that has already been cached
        missing = Array.wrap(resources).reject { |target| @resource_permissions.has_key? target }

        # call the fetch block to perform the fetch
        result  = @fetch_block.call missing

        fetched_roles = Hash.new
        fetched_perms = Hash.new

        missing.each do |m|
          fetched_roles[m] = Set.new
          fetched_perms[m] = Set.new
        end

        result.each do |r|
          res  = r.resource
          role = r.role

          fetched_roles[res] << role
          fetched_perms[res] += r.permissions
        end

        # update the role and permission caches with the latest data
        @resource_roles.merge! fetched_roles
        @resource_permissions.merge! fetched_perms
      end
    end
  end
end