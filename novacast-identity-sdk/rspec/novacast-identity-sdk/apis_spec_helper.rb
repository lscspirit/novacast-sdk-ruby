require 'json'

module NovacastSDK
  module IdentityV1
    class Utils
      def self.type_check(target, type_name)
        NovacastSDK::Utils.type_check target, type_name do |model_name|
          NovacastSDK::IdentityV1::Models.const_get(model_name)
        end
      end
    end

    class ApiRequests
  
      REQUESTS = { 
        assign_account_role: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'role' => {
            type: 'AssignRoleRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        batch_update_account_roles: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'BatchUpdateRolesRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_access_permission: {
          
          :'permission' => {
            type: 'AccessPermissionInfo',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_access_resource: {
          
          :'resource' => {
            type: 'AccessResourceInfo',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_account: {
          
          :'info' => {
            type: 'AccountRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_account_user_role: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'user_role' => {
            type: 'AccessRoleResource',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_domain: {
          
          :'domain' => {
            type: 'DomainInfo',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_role: {
          
          :'role_set_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'role' => {
            type: 'AccessRoleInfo',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_role_permission: {
          
          :'role_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'role_permission' => {
            type: 'RolePermission',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_role_set: {
          
          :'role_set' => {
            type: 'RoleSetInfo',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        delete_access_permission: {
          
          :'permission_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_access_resource: {
          
          :'resource_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_access_role: {
          
          :'role_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_role_permission: {
          
          :'role_permission_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_user_role: {
          
          :'user_role_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_account: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_account_permissions: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'resources' => {
            type: 'Array[String]',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_account_roles: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'resources' => {
            type: 'Array[String]',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_account_user_roles: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_auth_provider: {
          
          :'auth_provider_id' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_auth_provider_by_name: {
          
          :'auth_provider_name' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_domain: {
          
          :'domain_id' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_domain_accounts: {
          
          :'domain_id' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_domain_by_key: {
          
          :'domain_key' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_role_permissions: {
          
          :'role_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_role_set: {
          
          :'role_set_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_role_set_by_key: {
          
          :'role_set_key' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_roles: {
          
          :'role_set_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        remove_account_role: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'role' => {
            type: 'DeleteRoleRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        sign_in: {
          
          :'info' => {
            type: 'AccountRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        sign_out: {
          
        }, 
        update_access_permission: {
          
          :'permission_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'permission' => {
            type: 'AccessPermissionInfo',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_access_resource: {
          
          :'resource_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'resource' => {
            type: 'AccessResourceInfo',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_role: {
          
          :'role_id' => {
            type: 'Integer',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'role' => {
            type: 'AccessRoleInfo',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        validate_account_permission: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'resource' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          },
          
          :'permission' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          }
          
        }, 
        validate_token: {
          
          :'access_token' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        } 
      }
  

      def self.compare(req_params, api)
        req_def = find_request_definition api

        diff = {}
        req_def.each_pair do |param_name, definition|
          is_body = definition[:body_param]
          is_path = definition[:path_param]
          is_req  = definition[:required]
          data_type = definition[:type]

          # find the particular parameter value
          # if this is a body param, then use the whole request parameter object
          param_val = is_body ? req_params : req_params[param_name]

          if is_path
            # ignore path parameter
            next
          elsif param_val.nil?
            # ignore missing parameter if it is not required
            next unless is_req

            # parameter is missing but is required
            diff[param_name] = :missing
          else
            result    = NovacastSDK::IdentityV1::Utils.type_check param_val, data_type

            if is_body
              # ignore not allowed parameter if this is body parameter
              # because the all request params (i.e. the whole request.params) are included when checking body param
              result.reject! { |k, v| v == :not_allowed } if is_body && !result.nil?

              # merge the result to the top-level diff because
              # body parameters go to the top-level params
              diff.merge!(result) unless result.nil? || result.empty?
            else
              diff[param_name] = result unless result.nil? || result.empty?
            end
          end
        end

        diff.empty? ? nil : diff
      end

      private

      def self.find_request_definition(api)
        raise "Api '#{api}' request definition not found" unless (definition = REQUESTS[api.to_sym])
        definition
      end
    end

    class ApiResponses

      RESPONSES = { 
        assign_account_role: {
          
          200 => 'RoleResourcePermissions',
          
          201 => 'RoleResourcePermissions',
          
          0 => 'Error'
          
        }, 
        batch_update_account_roles: {
          
          200 => 'BatchUpdateRolesResponse',
          
          0 => 'Error'
          
        }, 
        create_access_permission: {
          
          201 => 'AccessPermission',
          
          0 => 'Error'
          
        }, 
        create_access_resource: {
          
          201 => 'AccessResource',
          
          0 => 'Error'
          
        }, 
        create_account: {
          
          201 => 'Account',
          
          0 => 'Error'
          
        }, 
        create_account_user_role: {
          
          200 => 'AccessUserRole',
          
          201 => 'AccessUserRole',
          
          0 => 'Error'
          
        }, 
        create_domain: {
          
          201 => 'Domain',
          
          0 => 'Error'
          
        }, 
        create_role: {
          
          201 => 'AccessRole',
          
          0 => 'Error'
          
        }, 
        create_role_permission: {
          
          200 => 'AccessRolePermission',
          
          201 => 'AccessRolePermission',
          
          0 => 'Error'
          
        }, 
        create_role_set: {
          
          201 => 'RoleSet',
          
          0 => 'Error'
          
        }, 
        delete_access_permission: {
          
          200 => 'AccessPermission',
          
          0 => 'Error'
          
        }, 
        delete_access_resource: {
          
          200 => 'AccessResource',
          
          0 => 'Error'
          
        }, 
        delete_access_role: {
          
          200 => 'AccessRole',
          
          0 => 'Error'
          
        }, 
        delete_role_permission: {
          
          200 => 'AccessRolePermission',
          
          0 => 'Error'
          
        }, 
        delete_user_role: {
          
          200 => 'AccessUserRole',
          
          0 => 'Error'
          
        }, 
        get_account: {
          
          200 => 'Account',
          
          0 => 'Error'
          
        }, 
        get_account_permissions: {
          
          200 => 'ResourcePermissionsList',
          
          0 => 'Error'
          
        }, 
        get_account_roles: {
          
          200 => 'RoleResourcePermissionsList',
          
          0 => 'Error'
          
        }, 
        get_account_user_roles: {
          
          200 => 'AccessUserRoleList',
          
          0 => 'Error'
          
        }, 
        get_auth_provider: {
          
          200 => 'AuthProvider',
          
          0 => 'Error'
          
        }, 
        get_auth_provider_by_name: {
          
          200 => 'AuthProvider',
          
          0 => 'Error'
          
        }, 
        get_domain: {
          
          200 => 'Domain',
          
          0 => 'Error'
          
        }, 
        get_domain_accounts: {
          
          200 => 'AccountRoleList',
          
          0 => 'Error'
          
        }, 
        get_domain_by_key: {
          
          200 => 'Domain',
          
          0 => 'Error'
          
        }, 
        get_role_permissions: {
          
          200 => 'AccessRolePermissionList',
          
          0 => 'Error'
          
        }, 
        get_role_set: {
          
          200 => 'RoleSet',
          
          0 => 'Error'
          
        }, 
        get_role_set_by_key: {
          
          200 => 'RoleSet',
          
          0 => 'Error'
          
        }, 
        get_roles: {
          
          200 => 'AccessRoleList',
          
          0 => 'Error'
          
        }, 
        remove_account_role: {
          
          200 => 'RoleResourcePermissions',
          
          0 => 'Error'
          
        }, 
        sign_in: {
          
          200 => 'LoginResponse',
          
          0 => 'Error'
          
        }, 
        sign_out: {
          
          200 => 'LogoutResponse',
          
          0 => 'Error'
          
        }, 
        update_access_permission: {
          
          200 => 'AccessPermission',
          
          0 => 'Error'
          
        }, 
        update_access_resource: {
          
          200 => 'AccessResource',
          
          0 => 'Error'
          
        }, 
        update_role: {
          
          200 => 'AccessRole',
          
          0 => 'Error'
          
        }, 
        validate_account_permission: {
          
          200 => 'InlineResponse200',
          
          0 => 'Error'
          
        }, 
        validate_token: {
          
          200 => 'Account',
          
          0 => 'Error'
          
        } 
      }


      def self.compare(resp_hash, api, status_code)
        resp_type = find_response_type api, status_code

        if resp_type.blank?
          # if there is no response type, then the response body is expected to be empty
          # if the body is not empty then return :invalid_type
          resp_hash.nil? ? nil : :invalid_type
        else
          NovacastSDK::Utils.type_check resp_hash, resp_type do |model_name|
            NovacastSDK::IdentityV1::Models.const_get(model_name)
          end
        end
      end

      def self.response_type(api, status_code)
        find_response_type api, status_code
      end

      private

      def self.resolve_status(status_code)
        if status_code.is_a?(Symbol)
          Rack::Utils::SYMBOL_TO_STATUS_CODE.fetch(status_code) do
            raise ArgumentError,
                  "Invalid HTTP status: #{status_code.inspect}"
          end
        else
          Integer(status_code)
        end
      end

      def self.find_response_type(api, status_code)
        # convert status_code in symbol into integer code
        status_code = resolve_status status_code

        # raise error if the response definition is not found for this api
        raise ArgumentError, "Api '#{api}' response definition not found" unless (api_def = RESPONSES[api.to_sym])
        # raise error if the response type (or a fallback) is not defined for this status code
        raise ArgumentError, "Status code '#{status_code}' response definition not found for '#{api}'" unless (resp_type = api_def[status_code] || api_def[0])

        resp_type
      end
    end
  end
end

RSpec::Matchers.define :be_api_request do |api|
  match do |request_params|
    @actual = request_params
    @diff   = NovacastSDK::IdentityV1::ApiRequests.compare @actual, api
    @diff.nil?
  end

  failure_message do
    "expected request to be in #{api} format. \n\tDiff: #{@diff.to_s} \n\tactual: #{@actual} (please refer to api specification)"
  end

  failure_message_when_negated do
    "expected reqeust to not be in #{api} format \n\tactual: #{@actual}"
  end
end

RSpec::Matchers.define :be_api_response do |api, status|
  match do |response_body|
    @actual = response_body.blank? ? nil : JSON.parse(response_body)
    @diff   = NovacastSDK::IdentityV1::ApiResponses.compare @actual, api, status
    @diff.nil?
  end

  failure_message do
    expected_type = NovacastSDK::IdentityV1::ApiResponses.response_type api, status
    "expected response body be in #{api} (#{status}) format. \n\tDiff: #{@diff.to_s} \n\tactual: #{@actual} \n\texpected: #{expected_type} object (please refer to api specification)"
  end

  failure_message_when_negated do
    "expected response body to not be in #{api} (#{status}) format \n\tactual: #{@actual}"
  end
end

RSpec.shared_examples 'a novacast IdentityV1 sdk api' do |api, status, error_klass_name = nil, error_message = nil|
  status_code = NovacastSDK::IdentityV1::ApiResponses.resolve_status(status)

  it "accepts request in the format defined in api specification for #{api}" do
    expect(request.params).to be_api_request(api)
  end if status_code.between?(200, 299)

  it "responses in the format defined in api specification for #{api} (#{status})" do
    expect(response.body).to be_api_response(api, status)
  end

  it "responses with a #{status} status" do
    expect(response).to have_http_status(status)
  end

  it "responses with the #{error_klass_name} error" do
    expect(response.body).to match(error_klass_name.to_s)
  end if error_klass_name

  it "responses with the error message" do
    expect(response.body).to match(error_message.to_s)
  end if error_message
end
