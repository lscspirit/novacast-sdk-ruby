module Novacast
  module SDK
    # Base class for all Novacast services' Ruby client
    class Client
      attr_reader :base_uri, :request_builder

      # Create a new service client
      # @param  opts [Hash] options to create the client with
      # @option opts [URI::HTTP,URI::HTTPS] :uri          URI instance of the service base URL
      # @option opts [String]               :host         host name of the service base
      # @option opts [Integer]              :port         port of the service
      # @option opts [String]               :path (nil)   base path of the service
      # @option opts [Boolean]              :ssl  (false) whether to use SSL or not
      # @option opts [String]               :api_version  API version to use
      def initialize(opts = {})
        @base_uri        = build_base_uri(opts[:uri] || opts[:host], opts[:port], opts[:path], opts[:ssl])
        @request_builder = RequestBuilder.new self

        raise ArgumentError, 'Must specify an API version' if opts[:api_version].nil?
        @api_version     = opts[:api_version].to_s

        extend_client_ops!
      end

      # Base URL of the service client
      # @return [String] base url of the service
      def base_url
        base_uri.to_s
      end

      # Client's API version
      # @return [String] version string
      def api_version
        @api_version
      end

      protected

      # Execute an API Operation using this client
      # @param op [Operation] API operation
      # @return [Operation] the API operation object
      def execute_operation(op)
        op.request  = @request_builder.build op
        op.response = op.request.send
        op
      end

      private

      # Extend the Client instance with API operations
      # Override this method in Client implementation to load the appropriate API base
      # on the API version supplied
      def extend_client_ops!

      end

      # Construct the base URI of the service
      # @param host_or_uri [String,URI::HTTP,URI:HTTPS] host or uri of the service endpoint
      # @param path [String]  path of the endpoint on the host
      # @param port [Integer] HTTP port of the service endpoint
      # @param ssl  [Boolean] whether to use SSL or not
      # @return [URI::HTTP,URI:HTTPS] URI instance of the service
      def build_base_uri(host_or_uri, port = nil, path = nil, ssl = false)
        case host_or_uri
          when URI::HTTP, URI::HTTPS
            host_or_uri
          when String
            ssl === true ?
              URI::HTTPS.build(host: host_or_uri, port: port, path: path) :
              URI::HTTP.build(host: host_or_uri, port: port, path: path)
          else
            raise ArgumentError, 'Host/URI must be a String or a URI::HTTP/URI::HTTPS'
        end
      end
    end
  end
end