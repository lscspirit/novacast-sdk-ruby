module Novacast
  module SDK
    class RequestBuilder
      # Create a new Request Builder
      # To customize request for a particular service, create a sub-class
      # and assign it to the service Client's @request_builder
      # @param client [Client] Novacast service client
      def initialize(client)
        @client = client
      end

      # Translate a Operation into an actual Request object
      # @param op [Operation] API operation
      # @return [Request] a Request object to be used to send the actual HTTP request
      def build(op)
        endpoint = construct_endpoint op
        Request.new @client, endpoint, op.method, op.query, op.request_body
      end

      private

      # Construct the endpoint name based on the operation and client version
      # @param op [Operation] API operation object
      # @return [String] endpoint string for the operation
      def construct_endpoint(op)
        "/api/v#{@client.api_version}/#{op.path}"
      end
    end
  end
end