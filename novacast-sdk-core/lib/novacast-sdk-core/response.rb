module Novacast
  module SDK
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
        (200..299).include? code.to_i
      end
    end
  end
end