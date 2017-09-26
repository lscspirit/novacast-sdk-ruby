module NovacastSDK
  module IdentityV1
    module RSpec
      module Helpers
        def generate_path(template, params)
          path = template.sub('{format}','json')
          params.reduce(path) do |result, (key, type)|
            value = case type.downcase
                      when 'integer', 'number'
                        123456
                      when 'boolean'
                        true
                      else
                        'string'
                    end
            result.sub("{#{key}}", value.to_s)
          end
        end

        def expect_path_routable(path)
          expect(path).to be_routable
        end
      end

  
      class DefaultApiPaths
        def self.specs
        
          ::RSpec.describe 'POST /accounts/{account_uid}/roles', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/accounts/{account_uid}/roles', path_params))
            end
          end
        
          ::RSpec.describe 'POST /accounts/batch_get', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/accounts/batch_get', path_params))
            end
          end
        
          ::RSpec.describe 'POST /domains/batch_get', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/domains/batch_get', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /accounts/{account_uid}/roles/batch', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/accounts/{account_uid}/roles/batch', path_params))
            end
          end
        
          ::RSpec.describe 'POST /permissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/permissions', path_params))
            end
          end
        
          ::RSpec.describe 'POST /resources', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/resources', path_params))
            end
          end
        
          ::RSpec.describe 'POST /accounts', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/accounts', path_params))
            end
          end
        
          ::RSpec.describe 'POST /accounts/{account_uid}/user_roles', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/accounts/{account_uid}/user_roles', path_params))
            end
          end
        
          ::RSpec.describe 'POST /auth_providers', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/auth_providers', path_params))
            end
          end
        
          ::RSpec.describe 'POST /domains', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/domains', path_params))
            end
          end
        
          ::RSpec.describe 'POST /role_sets/{role_set_id}/roles', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'role_set_id' => 'Integer'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/role_sets/{role_set_id}/roles', path_params))
            end
          end
        
          ::RSpec.describe 'POST /roles/{role_id}/permissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'role_id' => 'Integer'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/roles/{role_id}/permissions', path_params))
            end
          end
        
          ::RSpec.describe 'POST /role_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/role_sets', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /permissions/{permission_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'permission_id' => 'Integer'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/permissions/{permission_id}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /resources/{resource_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'resource_id' => 'Integer'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/resources/{resource_id}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /roles/{role_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'role_id' => 'Integer'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/roles/{role_id}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /role_permissions/{role_permission_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'role_permission_id' => 'Integer'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/role_permissions/{role_permission_id}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /user_roles/{user_role_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_role_id' => 'Integer'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/user_roles/{user_role_id}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /accounts/{account_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/accounts/{account_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /accounts/{account_uid}/permissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/accounts/{account_uid}/permissions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /accounts/{account_uid}/user_roles', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/accounts/{account_uid}/user_roles', path_params))
            end
          end
        
          ::RSpec.describe 'GET /auth_providers/{auth_provider_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'auth_provider_id' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/auth_providers/{auth_provider_id}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /auth_providers/name/{auth_provider_name}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'auth_provider_name' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/auth_providers/name/{auth_provider_name}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /domains/{domain_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'domain_id' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/domains/{domain_id}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /domains/{domain_id}/accounts', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'domain_id' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/domains/{domain_id}/accounts', path_params))
            end
          end
        
          ::RSpec.describe 'GET /domains/key/{domain_key}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'domain_key' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/domains/key/{domain_key}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /roles/{role_id}/permissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'role_id' => 'Integer'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/roles/{role_id}/permissions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /role_sets/{role_set_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'role_set_id' => 'Integer'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/role_sets/{role_set_id}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /role_sets/key/{role_set_key}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'role_set_key' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/role_sets/key/{role_set_key}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /role_sets/{role_set_id}/roles', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'role_set_id' => 'Integer'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/role_sets/{role_set_id}/roles', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /accounts/{account_uid}/roles', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/accounts/{account_uid}/roles', path_params))
            end
          end
        
          ::RSpec.describe 'POST /accounts/login', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/accounts/login', path_params))
            end
          end
        
          ::RSpec.describe 'GET /accounts/logout', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/accounts/logout', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /permissions/{permission_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'permission_id' => 'Integer'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/permissions/{permission_id}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /resources/{resource_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'resource_id' => 'Integer'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/resources/{resource_id}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /roles/{role_id}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'role_id' => 'Integer'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/roles/{role_id}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /accounts/{account_uid}/permissions/validate', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/accounts/{account_uid}/permissions/validate', path_params))
            end
          end
        
          ::RSpec.describe 'GET /access_tokens/{access_token}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'access_token' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/access_tokens/{access_token}', path_params))
            end
          end
        
        end
      end
  
    end
  end
end

RSpec.configure do |c|
  c.include NovacastSDK::IdentityV1::RSpec::Helpers
end
