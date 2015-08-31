module Novacast
  module SDK
    class ErrorResponse < Novacast::SDK::JsonRepresentation
      property :error,          exec_context: :decorator
      property :error_messages, exec_context: :decorator

      def initialize(represented, error = nil)
        @error = error
        super(represented)
      end

      def error_messages
        msgs = case represented
                 when Exception then represented.message
                 when String    then represented
                 when Array     then represented
                 when ActiveRecord::Base then represented.errors.full_messages
                 else represented.to_s
               end

        Array.wrap msgs
      end

      def error_messages=(val)
        represented.error_messages = val
      end

      def error
        @error
      end

      def error=(err)
        represented.error = err
      end
    end

    module ErrorResponseHelper
      # Render an API error response
      # @param  error_obj [*] the error object to be translated into error messages
      # @param  opts [Hash] error response options
      # @option opts [Novacast::SDK::Error] :error  error class. Default is Novacast::SDK::Error
      # @option opts [Symbol]               :status override the status provide by the error class
      def render_api_error(error_obj, opts = {})
        err_klass = opts[:error] || Novacast::SDK::Error
        raise ArgumentError, ':error must be a Novacast::SDK::Error' unless err_klass <= Novacast::SDK::Error

        status    = opts[:status] || err_klass::DEFAULT_STATUS
        err_code  = err_klass.name.demodulize.underscore.chomp('_error')

        render json: Novacast::SDK::ErrorResponse.new(error_obj, err_code), status: status
      end
    end
  end
end