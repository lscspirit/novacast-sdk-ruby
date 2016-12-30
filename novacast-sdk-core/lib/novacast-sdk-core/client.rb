require 'novacast-sdk-core/client_errors'
require 'novacast-sdk-core/configuration'
require 'novacast-sdk-core/request'
require 'novacast-sdk-core/response'
require 'novacast-sdk-core/operation'
require 'novacast-sdk-core/error_response'

module NovacastSDK
  module Client
    class BaseClient
      #
      # Client configuration
      #

      def self.config
        Configuration
      end


      #
      # Initialization
      #

      def self.client(opts = {})
        self.new opts
      end

      def initialize(opts = {})
        @access_token  = opts[:access_token]
        @preview_token = opts[:preview_token]
      end

      protected

      def call_api(op)
        url = _build_request_url op
        headers, query = _headers_query_with_security op

        req  = NovacastSDK::Client::Request.new url, op.method, query, op.body, headers
        resp = NovacastSDK::Client::Response.new req.send

        unless resp.success?
          # parse error response and raise error
          err_resp = ErrorResponse.from_json resp.body
          raise err_resp.klass.new(err_resp.messages.join(', '), err_resp.messages, err_resp.fields)
        end

        resp
      end

      private

      def _build_request_url(op)
        self.class.config.base_url + op.endpoint_path
      end

      # Injects security credentials into headers/query if needed by the operation
      def _headers_query_with_security(op)
        auths = op.auths

        if auths.empty?
          [op.headers, op.query]
        else
          headers = {}.merge(op.headers)  # creates a new copy of header params
          query   = {}.merge(op.query)    # creates a new copy of query params

          auths.each do |auth_def|
            param_key  = auth_def[:key]
            auth_value = case auth_def[:name]
                           when 'appSecret'
                             _get_app_secret
                           when 'accessKey'
                             _get_access_key
                           when 'previewToken'
                             _get_preview_token
                           else
                             nil
                         end

            next unless auth_value
            
            auth_def[:in_query] ?
                query[param_key]   = auth_value :
                headers[param_key] = auth_value
          end

          [headers, query]
        end
      end

      def _get_app_secret
        app_uid    = self.class.config.app_uid
        app_secret = self.class.config.app_secret

        raise NovacastSDK::ClientErrors::ConfigNotFound, 'App UID is not configured in client' if app_uid.nil? || app_uid.empty?
        raise NovacastSDK::ClientErrors::ConfigNotFound, 'App secret is not configured in client' if app_secret.nil? || app_secret.empty?

        "#{app_uid}|#{app_secret}"
      end

      def _get_access_key
        access_key = @access_token || self.class.config.access_token
        raise NovacastSDK::ClientErrors::ConfigNotFound, 'Access token is not configured in client' if access_key.nil? || access_key.empty?
        access_key
      end

      def _get_preview_token
        @preview_token
      end
    end
  end
end