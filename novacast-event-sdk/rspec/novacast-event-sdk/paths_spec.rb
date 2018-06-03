module NovacastSDK
  module EventV1
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
        
          ::RSpec.describe 'POST /sessions/{session_uid}/polling/{question_manifest_uid}/submit', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/polling/{question_manifest_uid}/submit', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/questionnaire/{question_manifest_uid}/submit', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/questionnaire/{question_manifest_uid}/submit', path_params))
            end
          end
        
          ::RSpec.describe 'POST /user_sets/{user_set_uid}/whitelist', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/user_sets/{user_set_uid}/whitelist', path_params))
            end
          end
        
          ::RSpec.describe 'POST /assets/{asset_bundle_uid}/pre_upload', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'asset_bundle_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/assets/{asset_bundle_uid}/pre_upload', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}/stage', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}/stage', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /sessions/{session_uid}/close_panels', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/sessions/{session_uid}/close_panels', path_params))
            end
          end
        
          ::RSpec.describe 'POST /assets/{asset_bundle_uid}/confirm', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'asset_bundle_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/assets/{asset_bundle_uid}/confirm', path_params))
            end
          end
        
          ::RSpec.describe 'POST /stream_sources/{stream_source_uid}/confirm', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_source_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/stream_sources/{stream_source_uid}/confirm', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/access_policies', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/access_policies', path_params))
            end
          end
        
          ::RSpec.describe 'POST /events/{event_uid}/active_paths', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/events/{event_uid}/active_paths', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/assets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/assets', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/accounts', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/accounts', path_params))
            end
          end
        
          ::RSpec.describe 'POST /events/{event_uid}/data_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/events/{event_uid}/data_sets', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/events', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/events', path_params))
            end
          end
        
          ::RSpec.describe 'POST /events/{event_uid}/event_pages', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/events/{event_uid}/event_pages', path_params))
            end
          end
        
          ::RSpec.describe 'POST /events/{event_uid}/sessions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/events/{event_uid}/sessions', path_params))
            end
          end
        
          ::RSpec.describe 'POST /mods/forum_post/sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/mods/forum_post/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/polling/{question_manifest_uid}/submissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/polling/{question_manifest_uid}/submissions', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/public_aliases', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/public_aliases', path_params))
            end
          end
        
          ::RSpec.describe 'POST /question_sets/{question_set_uid}/question_contents', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/question_sets/{question_set_uid}/question_contents', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/question_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/question_sets', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/questionnaire/{question_manifest_uid}/submissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/questionnaire/{question_manifest_uid}/submissions', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/slide_decks', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/slide_decks', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/streams', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/streams', path_params))
            end
          end
        
          ::RSpec.describe 'POST /streams/{stream_medium_uid}/sources', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_medium_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/streams/{stream_medium_uid}/sources', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/user_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/user_sets', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /access_policies/{access_policy_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'access_policy_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/access_policies/{access_policy_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /events/{event_uid}/active_paths/{path_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'path_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/events/{event_uid}/active_paths/{path_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /assets/{asset_bundle_uid}/delete_content/{bundle_content_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'asset_bundle_uid' => 'String',
              
                :'bundle_content_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/assets/{asset_bundle_uid}/delete_content/{bundle_content_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /event_pages/{event_page_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_page_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/event_pages/{event_page_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /event_pages/{event_page_uid}/contents/{content_locale}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_page_uid' => 'String',
              
                :'content_locale' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/event_pages/{event_page_uid}/contents/{content_locale}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /public_aliases/{public_alias_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'public_alias_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/public_aliases/{public_alias_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /question_contents/{question_content_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_content_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/question_contents/{question_content_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /question_sets/{question_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/question_sets/{question_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /slide_decks/{slide_deck_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/slide_decks/{slide_deck_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /slide_decks/{slide_deck_uid}/delete_slides', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/slide_decks/{slide_deck_uid}/delete_slides', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /streams/{stream_medium_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_medium_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/streams/{stream_medium_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /stream_sources/{stream_source_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_source_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/stream_sources/{stream_source_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /whitelist_patterns/{pattern_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'pattern_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/whitelist_patterns/{pattern_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'DELETE /mods/forum_post/posts/{forum_post_uid}/publish', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'forum_post_uid' => 'String'
              
              }
              expect_path_routable(:DELETE => generate_path('/api/v1/mods/forum_post/posts/{forum_post_uid}/publish', path_params))
            end
          end
        
          ::RSpec.describe 'POST /user_sets/{user_set_uid}/enroll', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/user_sets/{user_set_uid}/enroll', path_params))
            end
          end
        
          ::RSpec.describe 'GET /preview', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/preview', path_params))
            end
          end
        
          ::RSpec.describe 'GET /access_policies/{access_policy_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'access_policy_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/access_policies/{access_policy_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/access_policies', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/access_policies', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/account_display_infos', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/account_display_infos', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/active_paths/{path_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'path_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/active_paths/{path_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/polling/get_active_polls', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/polling/get_active_polls', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/questionnaire/get_active_questionnaires', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/questionnaire/get_active_questionnaires', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/event_session_commands/active', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/event_session_commands/active', path_params))
            end
          end
        
          ::RSpec.describe 'GET /translation_service/all_filter_options', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/translation_service/all_filter_options', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/archive_session_activities', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/archive_session_activities', path_params))
            end
          end
        
          ::RSpec.describe 'GET /assets/{asset_bundle_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'asset_bundle_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/assets/{asset_bundle_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/assets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/assets', path_params))
            end
          end
        
          ::RSpec.describe 'GET /assets/{asset_bundle_uid}/contents/{file_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'asset_bundle_uid' => 'String',
              
                :'file_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/assets/{asset_bundle_uid}/contents/{file_path}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/accounts', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/accounts', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/events', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/events', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels', path_params))
            end
          end
        
          ::RSpec.describe 'GET /event_pages/{event_page_uid}/contents', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_page_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/event_pages/{event_page_uid}/contents', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_sets/{question_set_uid}/question_contents', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_sets/{question_set_uid}/question_contents', path_params))
            end
          end
        
          ::RSpec.describe 'GET /data_sets/{data_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'data_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/data_sets/{data_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/data_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/data_sets', path_params))
            end
          end
        
          ::RSpec.describe 'GET /data_sets/{data_set_uid}/partitions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'data_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/data_sets/{data_set_uid}/partitions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /translation_service/get_dictionary', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/translation_service/get_dictionary', path_params))
            end
          end
        
          ::RSpec.describe 'GET /user_sets/{user_set_uid}/enrollments', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/user_sets/{user_set_uid}/enrollments', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/active_paths', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/active_paths', path_params))
            end
          end
        
          ::RSpec.describe 'GET /attendances/events/{event_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/attendances/events/{event_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /event_pages/{event_page_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_page_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/event_pages/{event_page_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /event_pages/{event_page_uid}/contents/{content_locale}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_page_uid' => 'String',
              
                :'content_locale' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/event_pages/{event_page_uid}/contents/{content_locale}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/sessions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/sessions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/runtime', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/runtime', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/status', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/status', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/users', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/users', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/user_set', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/user_set', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/forum_post/sessions/{session_uid}/extended', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/forum_post/sessions/{session_uid}/extended', path_params))
            end
          end
        
          ::RSpec.describe 'GET /translation_service/filter_dictionary', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/translation_service/filter_dictionary', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/forum_post/posts/{forum_post_uid}/likes', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'forum_post_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/forum_post/posts/{forum_post_uid}/likes', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/forum_post/sessions/{session_uid}/account/likes', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/forum_post/sessions/{session_uid}/account/likes', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/forum_post/sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/forum_post/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/forum_post/sessions/{session_uid}/with_accounts', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/forum_post/sessions/{session_uid}/with_accounts', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/live_cast/sessions/{session_uid}/page', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/live_cast/sessions/{session_uid}/page', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/live_cast/sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/live_cast/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/event_pages', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/event_pages', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/polling/{question_manifest_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/polling/{question_manifest_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/polling/prior_submissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/polling/prior_submissions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/questionnaire/prior_submissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/questionnaire/prior_submissions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /public_aliases/{public_alias_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'public_alias_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/public_aliases/{public_alias_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /public_aliases/path/{alias_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'alias_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/public_aliases/path/{alias_path}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/public_aliases', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/public_aliases', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_contents/{question_content_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_content_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_contents/{question_content_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_content_types', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_content_types', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_manifests/{question_manifest_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_manifests/{question_manifest_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/question_manifests', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/question_manifests', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_sets/{question_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_sets/{question_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/question_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/question_sets', path_params))
            end
          end
        
          ::RSpec.describe 'GET /question_manifests/{question_manifest_uid}/sessions/{session_uid}/submissions', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_manifest_uid' => 'String',
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/question_manifests/{question_manifest_uid}/sessions/{session_uid}/submissions', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/questionnaire/{question_manifest_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/questionnaire/{question_manifest_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /attendances/sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/attendances/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/event_session_commands', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/event_session_commands', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/enrollments', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/enrollments', path_params))
            end
          end
        
          ::RSpec.describe 'GET /slide_decks/{slide_deck_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/slide_decks/{slide_deck_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/slide_decks', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/slide_decks', path_params))
            end
          end
        
          ::RSpec.describe 'GET /streams/{stream_medium_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_medium_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/streams/{stream_medium_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/streams', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/streams', path_params))
            end
          end
        
          ::RSpec.describe 'GET /template_manifests/find_by_type', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/template_manifests/find_by_type', path_params))
            end
          end
        
          ::RSpec.describe 'GET /mods/user_feedback/{session_uid}/feedbacks', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/mods/user_feedback/{session_uid}/feedbacks', path_params))
            end
          end
        
          ::RSpec.describe 'GET /user_sets/{user_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/user_sets/{user_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}/user_sets', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}/user_sets', path_params))
            end
          end
        
          ::RSpec.describe 'GET /user_sets/{user_set_uid}/whitelist', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/user_sets/{user_set_uid}/whitelist', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /mods/forum_post/posts/{forum_post_uid}/likes', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'forum_post_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/mods/forum_post/posts/{forum_post_uid}/likes', path_params))
            end
          end
        
          ::RSpec.describe 'POST /mods/live_meeting/sessions/{session_uid}/connect', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/mods/live_meeting/sessions/{session_uid}/connect', path_params))
            end
          end
        
          ::RSpec.describe 'POST /mods/live_meeting/meetings/{meeting_uid}/message', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'meeting_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/mods/live_meeting/meetings/{meeting_uid}/message', path_params))
            end
          end
        
          ::RSpec.describe 'POST /mods/user_feedback/{session_uid}/feedbacks', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/mods/user_feedback/{session_uid}/feedbacks', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /mods/forum_post/posts/{forum_post_uid}/publish', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'forum_post_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/mods/forum_post/posts/{forum_post_uid}/publish', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/polling/{question_manifest_uid}/publish', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/polling/{question_manifest_uid}/publish', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/questionnaire/{question_manifest_uid}/publish', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/questionnaire/{question_manifest_uid}/publish', path_params))
            end
          end
        
          ::RSpec.describe 'POST /slide_decks/{slide_deck_uid}/rearrange', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/slide_decks/{slide_deck_uid}/rearrange', path_params))
            end
          end
        
          ::RSpec.describe 'POST /question_sets/{question_set_uid}/reorder', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/question_sets/{question_set_uid}/reorder', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}/data_sets/active', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}/data_sets/active', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/polling/{question_manifest_uid}/start', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/polling/{question_manifest_uid}/start', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/questionnaire/{question_manifest_uid}/start', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/questionnaire/{question_manifest_uid}/start', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/polling/{question_manifest_uid}/stop', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/polling/{question_manifest_uid}/stop', path_params))
            end
          end
        
          ::RSpec.describe 'POST /sessions/{session_uid}/questionnaire/{question_manifest_uid}/stop', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'question_manifest_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/sessions/{session_uid}/questionnaire/{question_manifest_uid}/stop', path_params))
            end
          end
        
          ::RSpec.describe 'POST /streams/{stream_medium_uid}/sources/pre_upload', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_medium_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/streams/{stream_medium_uid}/sources/pre_upload', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}/active_paths/{path_uid}/switch_active_mapping', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'path_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}/active_paths/{path_uid}/switch_active_mapping', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /access_policies/{access_policy_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'access_policy_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/access_policies/{access_policy_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /accounts/{account_uid}/roles', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/accounts/{account_uid}/roles', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}/active_paths/{path_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'path_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}/active_paths/{path_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /channels/{channel_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/channels/{channel_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /translation_service/update_definition', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/translation_service/update_definition', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /events/{event_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/events/{event_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /event_pages/{event_page_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_page_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/event_pages/{event_page_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /event_pages/{event_page_uid}/contents', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_page_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/event_pages/{event_page_uid}/contents', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /mods/forum_post/posts/{forum_post_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'forum_post_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/mods/forum_post/posts/{forum_post_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /mods/live_cast/sessions/{session_uid}/page', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/mods/live_cast/sessions/{session_uid}/page', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /public_aliases/{public_alias_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'public_alias_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/public_aliases/{public_alias_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /question_contents/{question_content_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_content_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/question_contents/{question_content_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /question_sets/{question_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'question_set_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/question_sets/{question_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /sessions/{session_uid}/modules', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/sessions/{session_uid}/modules', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /slides/{slide_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/slides/{slide_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /slide_decks/{slide_deck_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/slide_decks/{slide_deck_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /streams/{stream_medium_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'stream_medium_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/streams/{stream_medium_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'PUT /user_sets/{user_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:PUT => generate_path('/api/v1/user_sets/{user_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /channels/{channel_uid}/accounts/feed', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/{channel_uid}/accounts/feed', path_params))
            end
          end
        
          ::RSpec.describe 'POST /slide_decks/{slide_deck_uid}/upload', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'slide_deck_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/slide_decks/{slide_deck_uid}/upload', path_params))
            end
          end
        
        end
      end
  
  
      class InternalApiPaths
        def self.specs
        
          ::RSpec.describe 'POST /channels/batch_get', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/channels/batch_get', path_params))
            end
          end
        
          ::RSpec.describe 'POST /attendances/batch', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/attendances/batch', path_params))
            end
          end
        
          ::RSpec.describe 'GET /access/accounts/{account_uid}/permission', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/access/accounts/{account_uid}/permission', path_params))
            end
          end
        
          ::RSpec.describe 'POST /user_sets/{user_set_uid}/enroll', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/user_sets/{user_set_uid}/enroll', path_params))
            end
          end
        
          ::RSpec.describe 'POST /access/events/{event_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/access/events/{event_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /access/events/{event_uid}/content{/content_path*}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'content_path' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/access/events/{event_uid}/content{/content_path*}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /access/sessions/{session_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/access/sessions/{session_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /channels/{channel_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'channel_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/channels/{channel_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/contents{/content_path*}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'content_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/contents{/content_path*}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/user_set', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/user_set', path_params))
            end
          end
        
          ::RSpec.describe 'GET /public_aliases/path/{alias_path}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'alias_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/public_aliases/path/{alias_path}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /events/{event_uid}/runtimes{/content_path*}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String',
              
                :'content_path' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/events/{event_uid}/runtimes{/content_path*}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/enrollments/{account_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/enrollments/{account_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /sessions/{session_uid}/user_runtime_data/{account_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'session_uid' => 'String',
              
                :'account_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/sessions/{session_uid}/user_runtime_data/{account_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /user_sets/{user_set_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'user_set_uid' => 'String'
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/user_sets/{user_set_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'POST /attendances/events/{event_uid}', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
                :'event_uid' => 'String'
              
              }
              expect_path_routable(:POST => generate_path('/api/v1/attendances/events/{event_uid}', path_params))
            end
          end
        
          ::RSpec.describe 'GET /preview/validate', type: :routing do
            it 'is a valid endpoint' do
              path_params = {
              
              }
              expect_path_routable(:GET => generate_path('/api/v1/preview/validate', path_params))
            end
          end
        
        end
      end
  
    end
  end
end

RSpec.configure do |c|
  c.include NovacastSDK::EventV1::RSpec::Helpers
end
