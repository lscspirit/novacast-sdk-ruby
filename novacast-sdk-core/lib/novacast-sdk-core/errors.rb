module NovacastSDK
  module Errors
    # Base class for SDK Error
    class Base < StandardError
      attr_reader :full_messages

      # Return the default HTTP status code associated with this error
      DEFAULT_STATUS = :bad_request

      def initialize(msg = nil, full_messages = nil)
        @full_messages = full_messages
        super msg
      end
    end

    #
    # Common SDK Errors
    #

    # Runtime Errors
    class Runtime            < Base; DEFAULT_STATUS = :internal_server_error; end
    class ResourceNotFound   < Base; DEFAULT_STATUS = :not_found;             end

    # API Operation Errors
    class InvalidRecord      < Base; DEFAULT_STATUS = :bad_request;           end
    class MethodNotFound     < Base; DEFAULT_STATUS = :not_found;             end
    class InvalidArgument    < Base; DEFAULT_STATUS = :bad_request;           end
    class MissingParameter   < Base; DEFAULT_STATUS = :bad_request;           end

    # Access Errors
    class NoAccess           < Base; DEFAULT_STATUS = :unauthorized;          end
    class UnauthorizedApp    < Base; DEFAULT_STATUS = :unauthorized;          end
    class InvalidAccessToken < Base; DEFAULT_STATUS = :unauthorized;          end
  end
end