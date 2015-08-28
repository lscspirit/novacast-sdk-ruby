require 'uri'
require 'net/http'

module Novacast
  module SDK
    class Request
      attr_reader :client, :endpoint, :endpoint_uri, :method, :body, :query

      # Create a new Novacast API Request
      # @param client   [Client]    Novacast service client
      # @param op       [Operation] operation object to build the request from
      # @param endpoint [String]    API endpoint
      def initialize(client, op, endpoint = nil)
        @client       = client
        @op           = op
        self.method   = op.method
        self.query    = op.query
        self.body     = op.request_body
        self.endpoint = endpoint
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
      end

      def query=(q)
        @query = q
      end

      def body=(b)
        @body = case
                  when b.blank?
                    nil
                  when b.is_a?(String)
                    b
                  when b.respond_to?(:to_s)
                    b.to_s
                  else
                    raise ArgumentError, 'Request body must be a String or can respond to :to_s'
                end
      end

      # Send the request
      # @return [Net::HTTPResponse] http response object
      def send
        uri  = build_uri
        http = Net::HTTP::new(uri.host, uri.port)

        # set timeouts
        http.open_timeout = 10
        http.read_timeout = 10

        request = case method
                    when :get
                      Net::HTTP::Get.new uri.request_uri
                    else
                      Net::HTTP::Post.new uri.request_uri
                  end

        request['Content-Type'] = 'application/json'
        request.use_ssl = true if uri.scheme == 'https'

        # set request body for non 'get' request
        unless method == :get || body.nil? || body.empty?
          request.body = body
        end

        Response.new http.request(request)
      end

      private

      def build_uri
        uri = client.base_uri + endpoint

        q = @op.use_app_credentials? ? { app_token: "#{@client.app_uid}|#{@client.app_secret}" }.merge(query) : query
        uri.query = URI.encode_www_form(q) unless q.blank?

        uri
      end
    end
  end
end