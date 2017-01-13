require 'uri'
require 'net/http'

module NovacastSDK
  module Client
    class Request
      attr_accessor :path, :method, :query, :body, :headers

      # Create a new HTTP Request
      # @param path   [String]         API endpoint
      # @param method [String, Symbol] HTTP method (:get, :post, :put, :delete)
      # @param query  [Hash]           Query parameters
      # @param body   [String, #to_s]  Request body
      def initialize(path, method, query = nil, body = nil, headers = nil)
        self.path    = path
        self.method  = method
        self.query   = query
        self.body    = body
        self.headers = headers
      end

      # Send the request
      # @return [Net::HTTPResponse] http response object
      def send
        uri  = self.uri
        http = Net::HTTP::new(uri.host, uri.port)

        # set timeouts
        http.open_timeout = 10
        http.read_timeout = 10

        request = case method
                    when :get
                      Net::HTTP::Get.new uri.request_uri
                    when :put
                      Net::HTTP::Put.new uri.request_uri
                    else
                      Net::HTTP::Post.new uri.request_uri
                  end

        request['Content-Type'] = 'application/json'
        request.use_ssl = true if uri.scheme == 'https'

        # set request headers
        unless headers.nil? || headers.empty?
          headers.each_pair do |key, value|
            request[key] = value unless value.nil? || value.empty?
          end
        end

        # set request body for non 'get' request
        unless method == :get || body.nil? || body.empty?
          request.body = body
        end

        http.request(request)
      end


      #
      # Accessors
      #

      def method=(m)
        m_sym = m.is_a?(String) ? m.downcase.to_sym : m.to_sym
        raise ArgumentError, 'Invalid request method. Must be a valid HTTP method' unless [:get, :post, :put, :delete].include? m_sym
        @method = m_sym
      end

      def body=(b)
        @body = case
                  when b.nil?
                    nil
                  when b.is_a?(String)
                    b.empty? ? nil : b
                  when b.respond_to?(:to_s)
                    b.to_s
                  else
                    raise ArgumentError, 'Request body must be a String or can respond to :to_s'
                end
      end

      def uri
        uri = URI.parse self.path
        uri.query = URI.encode_www_form(self.query) unless self.query.nil? || self.query.empty?

        uri
      end
    end
  end
end