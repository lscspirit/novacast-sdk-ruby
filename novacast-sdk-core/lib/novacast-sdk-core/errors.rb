module Novacast
  module SDK
    # Base class for SDK Error
    class Error < StandardError
      # Return the default HTTP status code associated with this error
      DEFAULT_STATUS = :bad_request
    end

    #
    # Generic SDK Errors
    #
    class RuntimeError < Error;           DEFAULT_STATUS = :internal_server_error;  end
    class MethodNotFoundError < Error;    DEFAULT_STATUS = :not_found;              end
    class ResourceNotFoundError < Error;  DEFAULT_STATUS = :not_found;              end
    class InvalidArgumentError < Error;   DEFAULT_STATUS = :bad_request;            end
    class MissingParameterError < Error;  DEFAULT_STATUS = :bad_request;            end
    class NoAccessError < Error;          DEFAULT_STATUS = :unauthorized;           end
    class UnauthorizedAppError < Error;   DEFAULT_STATUS = :unauthorized;           end
  end
end