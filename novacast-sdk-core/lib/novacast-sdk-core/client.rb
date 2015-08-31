module Novacast
  module SDK
    # Base class for all Novacast services' Ruby client
    class Client
      attr_reader :base_uri, :request_builder
      attr_reader :app_uid, :app_secret

      # Create a new service client
      # @param  opts [Hash] options to create the client with
      # @option opts [URI::HTTP,URI::HTTPS] :uri          URI instance of the service base URL
      # @option opts [String]               :host         host name of the service base
      # @option opts [Integer]              :port         port of the service
      # @option opts [String]               :path (nil)   base path of the service
      # @option opts [Boolean]              :ssl  (false) whether to use SSL or not
      # @option opts [String]               :api_version  API version to use
      # @option opts [String]               :app_uid      application uid
      # @option opts [String]               :app_secret   application secret
      def initialize(opts = {})
        @base_uri        = build_base_uri(opts[:uri] || opts[:host], opts[:port], opts[:path], opts[:ssl])
        @request_builder = RequestBuilder.new self

        raise ArgumentError, 'Must specify an API version' if opts[:api_version].nil?
        @api_version = opts[:api_version].to_s
        @api         = load_api!

        @app_uid     = opts[:app_uid]
        @app_secret  = opts[:app_secret]
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

      # Route method call to API operations
      # All API method calls will go through this method_missing function
      # @example Simple API call
      #   IdentityClient.validate_token 'ad3de482'    #=> returns an Operation regardless of response status
      # @example Simple API call that raise exception on failure
      #   IdentityClient.validate_token! 'ad3de482'   #=> returns an Operation if successful; otherwise raise the corresponding Novacast::SDK::Error returned by server
      def method_missing(m, *args, &block)
        op_name, bang = m.to_s.match(/^([^!]*)(!?)$/).captures
        bang == '!' ? execute_operation!(op_name, *args) : execute_operation(op_name, *args)
      end

      private

      # Extend the Client instance with API operations
      # Override this method in Client implementation to load the appropriate API base
      # on the API version supplied
      def load_api!

      end

      # Execute an API Operation using this client
      # @param op_name [String] API operation name
      # @return [Operation] the API operation object
      def execute_operation(op_name, *args)
        op = @api::Operations.instance_method(op_name).bind(self).call(*args)

        op.request  = @request_builder.build op
        op.response = op.request.send
        op
      end

      def execute_operation!(op_name, *args)
        op = execute_operation op_name, *args

        unless op.success?
          raise find_error_class(op.error_code), op.error_messages.join(', ')
        end

        op
      end

      def find_error_class(error_code)
        klass_name = error_code.camelize
        klass      = Novacast::SDK::Error

        ["#{@api.name}::#{klass_name}Error", "Novacast::SDK::#{klass_name}Error"].find do |full_klass_name|
          begin
            klass = full_klass_name.constantize
          rescue NameError
            false
          end
        end

        klass
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