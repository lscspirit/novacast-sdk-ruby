require 'novacast-sdk-core'

require 'novacast-identity-sdk/errors.rb'

# Models

require 'novacast-identity-sdk/models/access_permission'

require 'novacast-identity-sdk/models/access_permission_info'

require 'novacast-identity-sdk/models/access_resource'

require 'novacast-identity-sdk/models/access_resource_info'

require 'novacast-identity-sdk/models/access_role'

require 'novacast-identity-sdk/models/access_role_info'

require 'novacast-identity-sdk/models/access_role_list'

require 'novacast-identity-sdk/models/access_role_permission'

require 'novacast-identity-sdk/models/access_role_permission_list'

require 'novacast-identity-sdk/models/access_role_resource'

require 'novacast-identity-sdk/models/access_user_role'

require 'novacast-identity-sdk/models/access_user_role_list'

require 'novacast-identity-sdk/models/account'

require 'novacast-identity-sdk/models/account_request'

require 'novacast-identity-sdk/models/assign_role_request'

require 'novacast-identity-sdk/models/batch_update_roles_request'

require 'novacast-identity-sdk/models/batch_update_roles_response'

require 'novacast-identity-sdk/models/delete_role_request'

require 'novacast-identity-sdk/models/domain'

require 'novacast-identity-sdk/models/domain_info'

require 'novacast-identity-sdk/models/error'

require 'novacast-identity-sdk/models/inline_response_200'

require 'novacast-identity-sdk/models/login_response'

require 'novacast-identity-sdk/models/logout_response'

require 'novacast-identity-sdk/models/resource_permissions'

require 'novacast-identity-sdk/models/resource_permissions_list'

require 'novacast-identity-sdk/models/role_permission'

require 'novacast-identity-sdk/models/role_resource_permissions'

require 'novacast-identity-sdk/models/role_resource_permissions_list'

require 'novacast-identity-sdk/models/role_set'

require 'novacast-identity-sdk/models/role_set_info'


# APIs
require 'novacast-identity-sdk/api/default_api'

module NovacastSDK
  module IdentityV1
    def self.configure
      yield self.config if block_given?
    end

    def self.config
      @config ||= NovacastSDK::Client::Configuration.new
    end
  end
end

NovacastSDK::IdentityV1.config.base_path = '/api/v1'
