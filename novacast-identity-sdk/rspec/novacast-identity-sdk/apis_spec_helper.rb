require 'json'

module NovacastSDK
  module IdentityV1
    class ApiResponses

      RESPONSES = { 
        :validate_token => {
          
          200 => 'Account',
          
          0 => 'Error'
          
        }, 
        :create_account => {
          
          201 => 'Account',
          
          0 => 'Error'
          
        }, 
        :sign_in => {
          
          200 => 'LoginResponse',
          
          0 => 'Error'
          
        }, 
        :sign_out => {
          
          200 => 'LogoutResponse',
          
          0 => 'Error'
          
        }, 
        :get_account => {
          
          200 => 'Account',
          
          0 => 'Error'
          
        }, 
        :get_account_permissions => {
          
          200 => 'ResourcePermissionsList',
          
          0 => 'Error'
          
        }, 
        :validate_account_permission => {
          
          200 => 'InlineResponse200',
          
          0 => 'Error'
          
        }, 
        :get_account_roles => {
          
          200 => 'RoleResourcePermissionsList',
          
          0 => 'Error'
          
        }, 
        :get_account_user_roles => {
          
          200 => 'AccessUserRoleList',
          
          0 => 'Error'
          
        }, 
        :create_account_user_role => {
          
          200 => 'AccessUserRole',
          
          201 => 'AccessUserRole',
          
          0 => 'Error'
          
        }, 
        :create_domain => {
          
          201 => 'Domain',
          
          0 => 'Error'
          
        }, 
        :get_domain_by_key => {
          
          200 => 'Domain',
          
          0 => 'Error'
          
        }, 
        :get_domain => {
          
          200 => 'Domain',
          
          0 => 'Error'
          
        }, 
        :create_access_permission => {
          
          201 => 'AccessPermission',
          
          0 => 'Error'
          
        }, 
        :update_access_permission => {
          
          200 => 'AccessPermission',
          
          0 => 'Error'
          
        }, 
        :delete_access_permission => {
          
          200 => 'AccessPermission',
          
          0 => 'Error'
          
        }, 
        :create_access_resource => {
          
          201 => 'AccessResource',
          
          0 => 'Error'
          
        }, 
        :update_access_resource => {
          
          200 => 'AccessResource',
          
          0 => 'Error'
          
        }, 
        :delete_access_resource => {
          
          200 => 'AccessResource',
          
          0 => 'Error'
          
        }, 
        :delete_role_permission => {
          
          200 => 'AccessRolePermission',
          
          0 => 'Error'
          
        }, 
        :create_role_set => {
          
          201 => 'RoleSet',
          
          0 => 'Error'
          
        }, 
        :get_role_set_by_key => {
          
          200 => 'RoleSet',
          
          0 => 'Error'
          
        }, 
        :get_role_set => {
          
          200 => 'RoleSet',
          
          0 => 'Error'
          
        }, 
        :get_roles => {
          
          200 => 'AccessRoleList',
          
          0 => 'Error'
          
        }, 
        :create_role => {
          
          201 => 'AccessRole',
          
          0 => 'Error'
          
        }, 
        :update_role => {
          
          200 => 'AccessRole',
          
          0 => 'Error'
          
        }, 
        :delete_access_role => {
          
          200 => 'AccessRole',
          
          0 => 'Error'
          
        }, 
        :get_role_permissions => {
          
          200 => 'AccessRolePermissionList',
          
          0 => 'Error'
          
        }, 
        :create_role_permission => {
          
          200 => 'AccessRolePermission',
          
          201 => 'AccessRolePermission',
          
          0 => 'Error'
          
        }, 
        :delete_user_role => {
          
          200 => 'AccessUserRole',
          
          0 => 'Error'
          
        } 
      }


      def self.compare(resp_hash, api, status_code)
        resp_type = find_response_type api, status_code

        NovacastSDK::Utils.type_check resp_hash, resp_type do |model_name|
          NovacastSDK::IdentityV1::Models.const_get(model_name).model_properties
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
        raise ArgumentError, "Api '#{api}' response definition not found" unless (api = RESPONSES[api.to_sym])
        # raise error if the response type (or a fallback) is not defined for this status code
        raise ArgumentError, "Status code '#{status_code}' response definition not found for '#{api}'" unless (resp_type = api[status_code] || api[0])

        resp_type
      end
    end
  end
end

RSpec::Matchers.define :be_api_response do |api, status|
  match do |response_body|
    @actual = JSON.parse response_body
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

RSpec.shared_examples 'an api response' do |api, status, error_klass_name = nil, error_message = nil|
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
