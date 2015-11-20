module NovacastSDK
  module Client
    class Response
      extend Forwardable

      delegate [:code, :body] => :@http_response

      # Create a new Novacast API Response
      # @param http_response [Net::HTTPResponse] response from Net::HTTP request
      def initialize(http_response)
        raise ArgumentError, 'Invalid request object' unless http_response.is_a?(Net::HTTPResponse)
        @http_response = http_response
      end

      def success?
        status_code = code.to_i
        status_code >= 200 && status_code < 300
      end
    end
  end
end