require 'json'

module NovacastSDK
  module EventV1
    class Utils
      def self.type_check(target, type_name)
        NovacastSDK::Utils.type_check target, type_name do |model_name|
          NovacastSDK::EventV1::Models.const_get(model_name)
        end
      end
    end

    #
    # Request Processing Classes
    #

    class ApiRequests
      REQUESTS = {}

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
            result    = NovacastSDK::EventV1::Utils.type_check param_val, data_type

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
        if (definition = DefaultApiRequests::REQUESTS[api.to_sym])
          return definition
        elsif (definition = InternalApiRequests::REQUESTS[api.to_sym])
          return definition
        end

        raise "Api '#{api}' request definition not found"
      end
    end


    class DefaultApiRequests < ApiRequests
      REQUESTS = { 
        add_poll_stat: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'AddPollStatRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        add_questionnaire_stat: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'AddquestionnaireStatRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        add_whitelist_patterns: {
          
          :'user_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'WhitelistRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        bundle_content_pre_upload: {
          
          :'asset_bundle_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'BundleContentPreUploadRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        change_event_stage: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'EventStageRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        close_session_panels: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        confirm_bundle_content: {
          
          :'asset_bundle_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'BundleContentConfirmRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        confirm_stream_source: {
          
          :'stream_source_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'StreamSourceConfirmRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_access_policy: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'AccessPolicyCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_active_path: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'PathMappingRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_asset_bundle: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'AssetBundleCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_channel: {
          
          :'channel' => {
            type: 'ChannelData',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_channel_account: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'AccountRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_data_set: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'DataSetCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_event: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'EventCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_event_page: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'EventPageCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_event_session: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'EventSessionInfoRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_forum_post: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'ForumPostCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_public_alias: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'PublicAliasCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_question_content: {
          
          :'question_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionContentCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_question_manifest: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionManifestCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_question_set: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionSetCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_question_submission: {
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionSubmissionCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_slide_deck: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'SlideDeckCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_stream_medium: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'StreamMediumCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_stream_source: {
          
          :'stream_medium_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'StreamSourceCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        create_user_set: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'UserSetCreateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        delete_access_policy: {
          
          :'access_policy_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_active_path: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'path_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_bundle_content: {
          
          :'asset_bundle_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'bundle_content_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_event_page: {
          
          :'event_page_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_event_session: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_public_alias: {
          
          :'public_alias_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_question_content: {
          
          :'question_content_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_question_manifest: {
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_question_set: {
          
          :'question_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_slide_deck: {
          
          :'slide_deck_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_slides: {
          
          :'slide_deck_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'SlideDeleteRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        delete_stream_medium: {
          
          :'stream_medium_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_stream_source: {
          
          :'stream_source_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        delete_whitelist_pattern: {
          
          :'pattern_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        dismiss_forum_post: {
          
          :'forum_post_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        enroll_to_user_set: {
          
          :'user_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'UserSetEnrollRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        generate_preview_token: {
          
          :'event_uid' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          },
          
          :'ttl' => {
            type: 'Integer',
            path_param: false,
            body_param: false,
            required: true
          },
          
          :'session_ttl' => {
            type: 'Integer',
            path_param: false,
            body_param: false,
            required: true
          }
          
        }, 
        get_access_policy: {
          
          :'access_policy_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_access_policy_list: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_active_path: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'path_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_active_polls: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_active_questionnaires: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_active_session_commands: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_archive_activities: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_asset_bundle: {
          
          :'asset_bundle_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_asset_bundle_list: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_bundle_content: {
          
          :'asset_bundle_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'file_path' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_channel: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_channel_accounts: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_channel_events: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_channel_list: {
          
        }, 
        get_contents_for_event_page: {
          
          :'event_page_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_contents_for_question_set: {
          
          :'question_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_data_set: {
          
          :'data_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_data_set_list: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_data_set_partitions: {
          
          :'data_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_enrollments: {
          
          :'user_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'page' => {
            type: 'Integer',
            path_param: false,
            body_param: false,
            required: false
          },
          
          :'per_page' => {
            type: 'Integer',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_event: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_event_active_paths: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_event_page: {
          
          :'event_page_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_event_page_content: {
          
          :'event_page_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'content_locale' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_event_session: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_event_session_list: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_event_session_runtime: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_event_user_set: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_extended_forum_posts: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'data_set_uid' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_forum_post_likes: {
          
          :'forum_post_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_forum_post_likes_for_account: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_forum_post_likes_with_accounts: {
          
          :'forum_post_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_forum_posts: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_forum_posts_with_accounts: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'data_set_uid' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_live_cast_page: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_live_cast_state: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_pages_for_event: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_poll_status: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_content_uid' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          }
          
        }, 
        get_prior_poll_submissions: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_prior_questionnaire_submissions: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_public_alias: {
          
          :'public_alias_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_public_alias_by_path: {
          
          :'alias_path' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_public_aliases_for_channel: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_question_content: {
          
          :'question_content_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_question_content_types: {
          
        }, 
        get_question_manifest: {
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_question_manifests: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_question_set: {
          
          :'question_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_question_set_list: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_question_submissions: {
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'max_records' => {
            type: 'Float',
            path_param: false,
            body_param: false,
            required: false
          },
          
          :'from_date' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          },
          
          :'to_date' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_questionnaire_status: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_set_uid' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          }
          
        }, 
        get_session_attendances: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'max_records' => {
            type: 'Float',
            path_param: false,
            body_param: false,
            required: false
          },
          
          :'from_date' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          },
          
          :'to_date' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_session_enrollments: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'page' => {
            type: 'Integer',
            path_param: false,
            body_param: false,
            required: false
          },
          
          :'per_page' => {
            type: 'Integer',
            path_param: false,
            body_param: false,
            required: false
          },
          
          :'max_records' => {
            type: 'Float',
            path_param: false,
            body_param: false,
            required: false
          },
          
          :'from_date' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          },
          
          :'to_date' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_slide_deck: {
          
          :'slide_deck_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_slide_deck_list: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_stream_medium: {
          
          :'stream_medium_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_stream_medium_list: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_template_manifest_by_type: {
          
          :'manifest_type' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          }
          
        }, 
        get_user_feedbacks: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'data_set_uid' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_user_set: {
          
          :'user_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_user_set_list: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_whitelist_patterns: {
          
          :'user_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        like_forum_post: {
          
          :'forum_post_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'ForumPostLikeRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        post_user_feedback: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'UserFeedbackPostRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        publish_forum_post: {
          
          :'forum_post_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        publish_poll: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'PollStatusControlRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        publish_questionnaire: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionnaireStatusControlRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        rearrange_slides: {
          
          :'slide_deck_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'SlideOrderRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        reorder_question_contents: {
          
          :'question_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionContentOrderRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        set_active_data_set: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'ActiveDataSetUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        start_poll: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'PollStatusControlRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        start_questionnaire: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionnaireStatusControlRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        stop_poll: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'PollStatusControlRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        stop_questionnaire: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionnaireStatusControlRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        stream_source_pre_upload: {
          
          :'stream_medium_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'StreamSourcePreUploadRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        switch_active_mapping: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'path_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'SwitchMappingRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_access_policy: {
          
          :'access_policy_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'AccessPolicyUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_account_roles: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'AccountRoleUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_active_path: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'path_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'PathMappingRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_channel: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'channel' => {
            type: 'ChannelData',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_event: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'EventUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_event_page: {
          
          :'event_page_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'EventPageUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_event_page_content: {
          
          :'event_page_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'PageContentUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_event_session: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'EventSessionInfoRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_forum_post: {
          
          :'forum_post_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'ForumPostUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_live_cast_page: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'LiveCastPageChangeRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_public_alias: {
          
          :'public_alias_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'PublicAliasUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_question_content: {
          
          :'question_content_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionContentUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_question_manifest: {
          
          :'question_manifest_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionManifestUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_question_set: {
          
          :'question_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'QuestionSetUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_session_modules: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'SessionModuleUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_slide_deck: {
          
          :'slide_deck_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'SlideDeckUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_stream_medium: {
          
          :'stream_medium_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'StreamMediumUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        update_user_set: {
          
          :'user_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'UserSetUpdateRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        upload_account_feed: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'file' => {
            type: 'Byte',
            path_param: false,
            body_param: false,
            required: true
          }
          
        }, 
        upload_slides: {
          
          :'slide_deck_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'files' => {
            type: 'Array[Byte]',
            path_param: false,
            body_param: false,
            required: true
          }
          
        } 
      }
    end

    class InternalApiRequests < ApiRequests
      REQUESTS = { 
        batch_track_attendance: {
          
          :'body' => {
            type: 'BatchTrackAttendanceRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        check_account_permission: {
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'permission' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          },
          
          :'resource_rn' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          }
          
        }, 
        enroll_to_user_set: {
          
          :'user_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'UserSetEnrollRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        filter_event_access: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'account_uid' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'FilterAccessRequest',
            path_param: false,
            body_param: true,
            required: true
          },
          
          :'preview_token' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        filter_event_content_access: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'content_path' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'account_uid' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'FilterAccessRequest',
            path_param: false,
            body_param: true,
            required: true
          },
          
          :'preview_token' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        filter_session_access: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'account_uid' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'FilterAccessRequest',
            path_param: false,
            body_param: true,
            required: true
          },
          
          :'preview_token' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: false
          }
          
        }, 
        get_channel: {
          
          :'channel_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_content_by_path: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'content_path' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_event: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_event_user_set: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_public_alias_by_path: {
          
          :'alias_path' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_runtime_by_path: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'content_path' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_session_enrollment_by_account: {
          
          :'session_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'account_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        get_user_set: {
          
          :'user_set_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          }
          
        }, 
        track_attendance: {
          
          :'event_uid' => {
            type: 'String',
            path_param: true,
            body_param: false,
            required: true
          },
          
          :'body' => {
            type: 'TrackAttendanceRequest',
            path_param: false,
            body_param: true,
            required: true
          }
          
        }, 
        validate_preview_token: {
          
          :'token' => {
            type: 'String',
            path_param: false,
            body_param: false,
            required: true
          }
          
        } 
      }
    end


    #
    # Response Processing Classes
    #

    class ApiResponses
      RESPONSES = {}

      def self.compare(resp_hash, api, status_code)
        resp_type = find_response_type api, status_code

        if resp_type.nil?
          # if there is no response type, then the response body is expected to be empty
          # if the body is not empty then return :invalid_type
          resp_hash.nil? ? nil : :invalid_type
        else
          NovacastSDK::Utils.type_check resp_hash, resp_type do |model_name|
            NovacastSDK::EventV1::Models.const_get(model_name)
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

        definition = if (resp = DefaultApiResponses::RESPONSES[api.to_sym])
                       resp
                     elsif (resp = InternalApiResponses::RESPONSES[api.to_sym])
                       resp
                     end

        # raise error if the response definition is not found for this api
        raise ArgumentError, "Api '#{api}' response definition not found" unless definition
        # raise error if the response type (or a fallback) is not defined for this status code
        raise ArgumentError, "Status code '#{status_code}' response definition not found for '#{api}'" unless (resp_type = definition[status_code] || definition[0])

        resp_type.empty? ? nil : resp_type
      end
    end


    class DefaultApiResponses < ApiResponses
      RESPONSES = { 
        add_poll_stat: {
          
          200 => 'QuestionSubmissionsList',
          
          0 => 'Error'
          
        }, 
        add_questionnaire_stat: {
          
          200 => 'QuestionSubmissionsList',
          
          0 => 'Error'
          
        }, 
        add_whitelist_patterns: {
          
          200 => 'WhitelistPatternList',
          
          0 => 'Error'
          
        }, 
        bundle_content_pre_upload: {
          
          200 => 'PresignedUpload',
          
          0 => 'Error'
          
        }, 
        change_event_stage: {
          
          200 => 'Event',
          
          0 => 'Error'
          
        }, 
        close_session_panels: {
          
          200 => '',
          
          0 => 'Error'
          
        }, 
        confirm_bundle_content: {
          
          200 => 'BundleContent',
          
          0 => 'Error'
          
        }, 
        confirm_stream_source: {
          
          200 => 'StreamSource',
          
          0 => 'Error'
          
        }, 
        create_access_policy: {
          
          201 => 'AccessPolicyExtended',
          
          0 => 'Error'
          
        }, 
        create_active_path: {
          
          201 => 'ActivePath',
          
          0 => 'Error'
          
        }, 
        create_asset_bundle: {
          
          201 => 'AssetBundleInfo',
          
          0 => 'Error'
          
        }, 
        create_channel: {
          
          201 => 'Channel',
          
          0 => 'Error'
          
        }, 
        create_channel_account: {
          
          201 => 'Account',
          
          0 => 'Error'
          
        }, 
        create_data_set: {
          
          201 => 'DataSet',
          
          0 => 'Error'
          
        }, 
        create_event: {
          
          201 => 'EventExtended',
          
          0 => 'Error'
          
        }, 
        create_event_page: {
          
          201 => 'EventPage',
          
          0 => 'Error'
          
        }, 
        create_event_session: {
          
          201 => 'EventSession',
          
          0 => 'Error'
          
        }, 
        create_forum_post: {
          
          201 => 'ForumPost',
          
          0 => 'Error'
          
        }, 
        create_public_alias: {
          
          201 => 'PublicAlias',
          
          0 => 'Error'
          
        }, 
        create_question_content: {
          
          201 => 'QuestionContent',
          
          0 => 'Error'
          
        }, 
        create_question_manifest: {
          
          201 => 'QuestionManifest',
          
          0 => 'Error'
          
        }, 
        create_question_set: {
          
          201 => 'QuestionSetInfo',
          
          0 => 'Error'
          
        }, 
        create_question_submission: {
          
          201 => 'ManifestSubmissions',
          
          0 => 'Error'
          
        }, 
        create_slide_deck: {
          
          201 => 'SlideDeckInfo',
          
          0 => 'Error'
          
        }, 
        create_stream_medium: {
          
          201 => 'StreamMediumInfo',
          
          0 => 'Error'
          
        }, 
        create_stream_source: {
          
          201 => 'StreamSource',
          
          0 => 'Error'
          
        }, 
        create_user_set: {
          
          201 => 'UserSetExtended',
          
          0 => 'Error'
          
        }, 
        delete_access_policy: {
          
          200 => 'AccessPolicy',
          
          0 => 'Error'
          
        }, 
        delete_active_path: {
          
          200 => 'ActivePath',
          
          0 => 'Error'
          
        }, 
        delete_bundle_content: {
          
          200 => 'BundleContent',
          
          0 => 'Error'
          
        }, 
        delete_event_page: {
          
          200 => 'EventPage',
          
          0 => 'Error'
          
        }, 
        delete_event_session: {
          
          200 => 'EventSession',
          
          0 => 'Error'
          
        }, 
        delete_public_alias: {
          
          200 => 'PublicAlias',
          
          0 => 'Error'
          
        }, 
        delete_question_content: {
          
          200 => 'QuestionContent',
          
          0 => 'Error'
          
        }, 
        delete_question_manifest: {
          
          200 => 'QuestionManifestDeleteResponse',
          
          0 => 'Error'
          
        }, 
        delete_question_set: {
          
          200 => 'QuestionSetInfo',
          
          0 => 'Error'
          
        }, 
        delete_slide_deck: {
          
          200 => 'SlideDeckInfo',
          
          0 => 'Error'
          
        }, 
        delete_slides: {
          
          200 => 'SlideDeck',
          
          0 => 'Error'
          
        }, 
        delete_stream_medium: {
          
          200 => 'StreamMedium',
          
          0 => 'Error'
          
        }, 
        delete_stream_source: {
          
          200 => 'StreamSource',
          
          0 => 'Error'
          
        }, 
        delete_whitelist_pattern: {
          
          200 => 'WhitelistPattern',
          
          0 => 'Error'
          
        }, 
        dismiss_forum_post: {
          
          200 => 'ForumPost',
          
          0 => 'Error'
          
        }, 
        enroll_to_user_set: {
          
          200 => 'Enrollment',
          
          201 => 'Enrollment',
          
          0 => 'Error'
          
        }, 
        generate_preview_token: {
          
          200 => 'PreviewToken',
          
          0 => 'Error'
          
        }, 
        get_access_policy: {
          
          200 => 'AccessPolicyExtended',
          
          0 => 'Error'
          
        }, 
        get_access_policy_list: {
          
          200 => 'AccessPolicyList',
          
          0 => 'Error'
          
        }, 
        get_active_path: {
          
          200 => 'ActivePath',
          
          0 => 'Error'
          
        }, 
        get_active_polls: {
          
          200 => 'ActivePollList',
          
          0 => 'Error'
          
        }, 
        get_active_questionnaires: {
          
          200 => 'ActiveQuestionnaireList',
          
          0 => 'Error'
          
        }, 
        get_active_session_commands: {
          
          200 => 'EventSessionCommandList',
          
          0 => 'Error'
          
        }, 
        get_archive_activities: {
          
          200 => 'ArchiveActivityList',
          
          0 => 'Error'
          
        }, 
        get_asset_bundle: {
          
          200 => 'AssetBundle',
          
          0 => 'Error'
          
        }, 
        get_asset_bundle_list: {
          
          200 => 'AssetBundleInfoList',
          
          0 => 'Error'
          
        }, 
        get_bundle_content: {
          
          200 => 'BundleContent',
          
          0 => 'Error'
          
        }, 
        get_channel: {
          
          200 => 'Channel',
          
          0 => 'Error'
          
        }, 
        get_channel_accounts: {
          
          200 => 'AccountExtendedList',
          
          0 => 'Error'
          
        }, 
        get_channel_events: {
          
          200 => 'EventList',
          
          0 => 'Error'
          
        }, 
        get_channel_list: {
          
          200 => 'ChannelList',
          
          0 => 'Error'
          
        }, 
        get_contents_for_event_page: {
          
          200 => 'PageContentList',
          
          0 => 'Error'
          
        }, 
        get_contents_for_question_set: {
          
          200 => 'QuestionContentList',
          
          0 => 'Error'
          
        }, 
        get_data_set: {
          
          200 => 'DataSet',
          
          0 => 'Error'
          
        }, 
        get_data_set_list: {
          
          200 => 'DataSetList',
          
          0 => 'Error'
          
        }, 
        get_data_set_partitions: {
          
          200 => 'DataSetPartitionList',
          
          0 => 'Error'
          
        }, 
        get_enrollments: {
          
          200 => 'PaginatedEnrollmentList',
          
          0 => 'Error'
          
        }, 
        get_event: {
          
          200 => 'EventExtended',
          
          0 => 'Error'
          
        }, 
        get_event_active_paths: {
          
          200 => 'ActivePathList',
          
          0 => 'Error'
          
        }, 
        get_event_page: {
          
          200 => 'EventPage',
          
          0 => 'Error'
          
        }, 
        get_event_page_content: {
          
          200 => 'PageContent',
          
          0 => 'Error'
          
        }, 
        get_event_session: {
          
          200 => 'EventSessionExtended',
          
          0 => 'Error'
          
        }, 
        get_event_session_list: {
          
          200 => 'EventSessionList',
          
          0 => 'Error'
          
        }, 
        get_event_session_runtime: {
          
          200 => 'SessionRuntime',
          
          0 => 'Error'
          
        }, 
        get_event_user_set: {
          
          200 => 'UserSetExtended',
          
          0 => 'Error'
          
        }, 
        get_extended_forum_posts: {
          
          200 => 'ForumPostExtendedList',
          
          0 => 'Error'
          
        }, 
        get_forum_post_likes: {
          
          200 => 'ForumPostLikeList',
          
          0 => 'Error'
          
        }, 
        get_forum_post_likes_for_account: {
          
          200 => 'ForumPostLikeList',
          
          0 => 'Error'
          
        }, 
        get_forum_post_likes_with_accounts: {
          
          200 => 'ForumPostLikeList',
          
          0 => 'Error'
          
        }, 
        get_forum_posts: {
          
          200 => 'ForumPostList',
          
          0 => 'Error'
          
        }, 
        get_forum_posts_with_accounts: {
          
          200 => 'ForumPostExtendedList',
          
          0 => 'Error'
          
        }, 
        get_live_cast_page: {
          
          200 => 'LiveCastSlidePage',
          
          0 => 'Error'
          
        }, 
        get_live_cast_state: {
          
          200 => 'LiveCastState',
          
          0 => 'Error'
          
        }, 
        get_pages_for_event: {
          
          200 => 'EventPageList',
          
          0 => 'Error'
          
        }, 
        get_poll_status: {
          
          200 => 'PollStatus',
          
          0 => 'Error'
          
        }, 
        get_prior_poll_submissions: {
          
          200 => 'QuestionSubmissionsList',
          
          0 => 'Error'
          
        }, 
        get_prior_questionnaire_submissions: {
          
          200 => 'QuestionSubmissionsList',
          
          0 => 'Error'
          
        }, 
        get_public_alias: {
          
          200 => 'PublicAlias',
          
          0 => 'Error'
          
        }, 
        get_public_alias_by_path: {
          
          200 => 'PublicAlias',
          
          0 => 'Error'
          
        }, 
        get_public_aliases_for_channel: {
          
          200 => 'PublicAliasList',
          
          0 => 'Error'
          
        }, 
        get_question_content: {
          
          200 => 'QuestionContent',
          
          0 => 'Error'
          
        }, 
        get_question_content_types: {
          
          200 => 'QuestionContentTypeList',
          
          0 => 'Error'
          
        }, 
        get_question_manifest: {
          
          200 => 'QuestionManifest',
          
          0 => 'Error'
          
        }, 
        get_question_manifests: {
          
          200 => 'QuestionManifestList',
          
          0 => 'Error'
          
        }, 
        get_question_set: {
          
          200 => 'QuestionSet',
          
          0 => 'Error'
          
        }, 
        get_question_set_list: {
          
          200 => 'QuestionSetList',
          
          0 => 'Error'
          
        }, 
        get_question_submissions: {
          
          200 => 'QuestionSubmissionQueryResponse',
          
          0 => 'Error'
          
        }, 
        get_questionnaire_status: {
          
          200 => 'QuestionnaireStatus',
          
          0 => 'Error'
          
        }, 
        get_session_attendances: {
          
          200 => 'AttendanceList',
          
          0 => 'Error'
          
        }, 
        get_session_enrollments: {
          
          200 => 'FilteredEnrollmentList',
          
          0 => 'Error'
          
        }, 
        get_slide_deck: {
          
          200 => 'SlideDeck',
          
          0 => 'Error'
          
        }, 
        get_slide_deck_list: {
          
          200 => 'SlideDeckInfoList',
          
          0 => 'Error'
          
        }, 
        get_stream_medium: {
          
          200 => 'StreamMedium',
          
          0 => 'Error'
          
        }, 
        get_stream_medium_list: {
          
          200 => 'StreamMediumInfoList',
          
          0 => 'Error'
          
        }, 
        get_template_manifest_by_type: {
          
          200 => 'TemplateManifestList',
          
          0 => 'Error'
          
        }, 
        get_user_feedbacks: {
          
          200 => 'UserFeedbackList',
          
          0 => 'Error'
          
        }, 
        get_user_set: {
          
          200 => 'UserSetExtended',
          
          0 => 'Error'
          
        }, 
        get_user_set_list: {
          
          200 => 'UserSetList',
          
          0 => 'Error'
          
        }, 
        get_whitelist_patterns: {
          
          200 => 'WhitelistPatternList',
          
          0 => 'Error'
          
        }, 
        like_forum_post: {
          
          200 => 'ForumPostLike',
          
          0 => 'Error'
          
        }, 
        post_user_feedback: {
          
          201 => 'UserFeedback',
          
          0 => 'Error'
          
        }, 
        publish_forum_post: {
          
          200 => 'ForumPost',
          
          0 => 'Error'
          
        }, 
        publish_poll: {
          
          200 => 'PollStatus',
          
          0 => 'Error'
          
        }, 
        publish_questionnaire: {
          
          200 => 'QuestionnaireStatus',
          
          0 => 'Error'
          
        }, 
        rearrange_slides: {
          
          200 => 'SlideDeck',
          
          0 => 'Error'
          
        }, 
        reorder_question_contents: {
          
          200 => 'QuestionSet',
          
          0 => 'Error'
          
        }, 
        set_active_data_set: {
          
          200 => 'DataSet',
          
          0 => 'Error'
          
        }, 
        start_poll: {
          
          200 => 'PollStatus',
          
          0 => 'Error'
          
        }, 
        start_questionnaire: {
          
          200 => 'QuestionnaireStatus',
          
          0 => 'Error'
          
        }, 
        stop_poll: {
          
          200 => 'PollStatus',
          
          0 => 'Error'
          
        }, 
        stop_questionnaire: {
          
          200 => 'QuestionnaireStatus',
          
          0 => 'Error'
          
        }, 
        stream_source_pre_upload: {
          
          200 => 'PresignedUpload',
          
          0 => 'Error'
          
        }, 
        switch_active_mapping: {
          
          200 => 'ActivePath',
          
          0 => 'Error'
          
        }, 
        update_access_policy: {
          
          200 => 'AccessPolicyExtended',
          
          0 => 'Error'
          
        }, 
        update_account_roles: {
          
          200 => 'AccountResourceRolesList',
          
          0 => 'Error'
          
        }, 
        update_active_path: {
          
          200 => 'ActivePath',
          
          0 => 'Error'
          
        }, 
        update_channel: {
          
          200 => 'Channel',
          
          0 => 'Error'
          
        }, 
        update_event: {
          
          200 => 'EventExtended',
          
          0 => 'Error'
          
        }, 
        update_event_page: {
          
          200 => 'EventPage',
          
          0 => 'Error'
          
        }, 
        update_event_page_content: {
          
          200 => 'PageContent',
          
          0 => 'Error'
          
        }, 
        update_event_session: {
          
          200 => 'EventSession',
          
          0 => 'Error'
          
        }, 
        update_forum_post: {
          
          200 => 'ForumPostExtended',
          
          0 => 'Error'
          
        }, 
        update_live_cast_page: {
          
          200 => 'LiveCastState',
          
          0 => 'Error'
          
        }, 
        update_public_alias: {
          
          200 => 'PublicAlias',
          
          0 => 'Error'
          
        }, 
        update_question_content: {
          
          200 => 'QuestionContent',
          
          0 => 'Error'
          
        }, 
        update_question_manifest: {
          
          200 => 'QuestionManifest',
          
          0 => 'Error'
          
        }, 
        update_question_set: {
          
          200 => 'QuestionSetInfo',
          
          0 => 'Error'
          
        }, 
        update_session_modules: {
          
          200 => 'SessionModuleList',
          
          0 => 'Error'
          
        }, 
        update_slide_deck: {
          
          200 => 'SlideDeckInfo',
          
          0 => 'Error'
          
        }, 
        update_stream_medium: {
          
          200 => 'StreamMedium',
          
          0 => 'Error'
          
        }, 
        update_user_set: {
          
          200 => 'UserSetExtended',
          
          0 => 'Error'
          
        }, 
        upload_account_feed: {
          
          200 => 'AccountCreationResponseList',
          
          0 => 'Error'
          
        }, 
        upload_slides: {
          
          200 => 'SlideDeck',
          
          0 => 'Error'
          
        } 
      }
    end

    class InternalApiResponses < ApiResponses
      RESPONSES = { 
        batch_track_attendance: {
          
          200 => 'BatchTrackAttendanceResponse',
          
          0 => 'Error'
          
        }, 
        check_account_permission: {
          
          200 => '',
          
          0 => 'Error'
          
        }, 
        enroll_to_user_set: {
          
          200 => 'Enrollment',
          
          201 => 'Enrollment',
          
          0 => 'Error'
          
        }, 
        filter_event_access: {
          
          200 => 'FilterAccessResponse',
          
          0 => 'Error'
          
        }, 
        filter_event_content_access: {
          
          200 => 'FilterAccessResponse',
          
          0 => 'Error'
          
        }, 
        filter_session_access: {
          
          200 => 'FilterAccessResponse',
          
          0 => 'Error'
          
        }, 
        get_channel: {
          
          200 => 'Channel',
          
          0 => 'Error'
          
        }, 
        get_content_by_path: {
          
          200 => 'EventContent',
          
          0 => 'Error'
          
        }, 
        get_event: {
          
          200 => 'EventExtended',
          
          0 => 'Error'
          
        }, 
        get_event_user_set: {
          
          200 => 'UserSetExtended',
          
          0 => 'Error'
          
        }, 
        get_public_alias_by_path: {
          
          200 => 'PublicAlias',
          
          0 => 'Error'
          
        }, 
        get_runtime_by_path: {
          
          200 => 'PageRuntime',
          
          0 => 'Error'
          
        }, 
        get_session_enrollment_by_account: {
          
          200 => 'EnrollmentExtended',
          
          0 => 'Error'
          
        }, 
        get_user_set: {
          
          200 => 'UserSetExtended',
          
          0 => 'Error'
          
        }, 
        track_attendance: {
          
          200 => '',
          
          0 => 'Error'
          
        }, 
        validate_preview_token: {
          
          200 => 'PreviewTokenInfo',
          
          0 => 'Error'
          
        } 
      }
    end

  end
end

RSpec::Matchers.define :be_api_request do |api|
  match do |request_params|
    @actual = request_params
    @diff   = NovacastSDK::EventV1::ApiRequests.compare @actual, api
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
    @actual = (response_body.nil? || response_body.empty?) ? nil : JSON.parse(response_body)
    @diff   = NovacastSDK::EventV1::ApiResponses.compare @actual, api, status
    @diff.nil?
  end

  failure_message do
    expected_type = NovacastSDK::EventV1::ApiResponses.response_type api, status
    "expected response body be in #{api} (#{status}) format. \n\tDiff: #{@diff.to_s} \n\tactual: #{@actual} \n\texpected: #{expected_type} object (please refer to api specification)"
  end

  failure_message_when_negated do
    "expected response body to not be in #{api} (#{status}) format \n\tactual: #{@actual}"
  end
end

RSpec.shared_examples 'a novacast EventV1 sdk api' do |api, status, error_klass_name = nil, error_message = nil|
  status_code = NovacastSDK::EventV1::ApiResponses.resolve_status(status)

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
