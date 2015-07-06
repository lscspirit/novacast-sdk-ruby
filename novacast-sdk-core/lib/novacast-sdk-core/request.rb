require 'uri'
require 'net/http'

module Novacast
  module SDK
    class Request
      attr_reader :client, :endpoint, :endpoint_uri, :method, :body

      # Create a new Novacast API Request
      # @param client   [Client] Novacast service client
      # @param endpoint [String] API endpoint
      # @param method   [Symbol,String] http method (:get, :post, :put, :delete)
      # @param query    [Hash]   query parameters to be included
      # @param body     [String] request body (except for :get)
      def initialize(client, endpoint = nil, method = :get, query = nil, body = nil)
        @client       = client
        self.method   = method
        self.endpoint = endpoint
        self.query    = query
        self.body     = body unless body.nil?
      end

      #
      # Accessors
      #

      def method=(m)
        m_sym = m.is_a?(String) ? m.downcase.to_sym : m.to_sym
        raise ArgumentError, 'Invalid request method. Must be a valid HTTP method' unless [:get, :post, :put, :delete].include? m_sym
        @method = m_sym
      end

      def endpoint=(path)
        @endpoint = path || ''
        # build the final endpoint url
        @endpoint_uri = client.base_uri + endpoint
      end

      def query=(q)
        @endpoint_uri.query = URI.encode_www_form(q) unless q.nil? || q.empty?
      end

      def body=(b)
        raise ArgumentError, 'Request body must be a String' unless b.is_a?(String)
        @body = b
      end

      # Send the request
      # @return [Net::HTTPResponse] http response object
      def send
        http = Net::HTTP::new(endpoint_uri.host, endpoint_uri.port)

        # set timeouts
        http.open_timeout = 10
        http.read_timeout = 10

        request = case method
                    when :get
                      Net::HTTP::Get.new endpoint_uri.request_uri
                    else
                      Net::HTTP::Post.new endpoint_uri.request_uri
                  end

        request.use_ssl = true if endpoint_uri.scheme == 'https'

        # set request body for non 'get' request
        unless method == :get || body.nil? || body.empty?
          request.body = body
        end

        Response.new http.request(request)
      end
    end
  end
end