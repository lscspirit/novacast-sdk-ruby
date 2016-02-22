require 'json'

module NovacastSDK
  module ErrorResponseHelper
    # Render an API error response
    # @param  error_obj [*] the error object to be translated into error messages
    # @param  opts [Hash] error response options
    # @option opts [NovacastSDK::Errors::Base] :error  error class. Default is NovacastSDK::Errors::Base
    # @option opts [Symbol]                    :status override the status provide by the error class
    def render_api_error(error_obj, opts = {})
      err_klass = opts[:error] || NovacastSDK::Errors::Base
      raise ArgumentError, ':error must be a NovacastSDK::Errors::Base class' unless err_klass <= NovacastSDK::Errors::Base

      status    = opts[:status] || err_klass::DEFAULT_STATUS

      render json: NovacastSDK::Client::ErrorResponse.new(error_obj, err_klass), status: status
    end
  end

  module Client
    class ErrorResponse
      attr_accessor :messages, :klass

      def initialize(err_obj, klass = nil)
        self.messages = err_obj
        self.klass    = klass || NovacastSDK::Errors::Base
      end

      def messages=(err_obj)
        if err_obj.respond_to?(:errors) && err_obj.errors.respond_to?(:full_messages)
          # Separate check for ActiveRecord because client may not always be running within
          # a Rails environment
          msgs = err_obj.errors.full_messages
        else
          msgs = case err_obj
                   when Exception then [err_obj.message]
                   when String    then [err_obj]
                   when Array     then err_obj
                   else [err_obj.to_s]
                 end
        end

        @messages = msgs
      end

      def klass=(k)
        raise ArgumentError, 'ErrorResponse class must be a NovacastSDK::Errors::Base' unless k <= NovacastSDK::Errors::Base
        @klass = k
      end

      def klass_name
        @klass.name
      end

      #
      # Serialization
      #

      def to_json(opts = {})
        { klass_name: klass_name, messages: messages }.to_json
      end

      def self.from_json(json)
        hash  = JSON.parse json
        klass = Object.const_get hash['klass_name']
        self.new hash['messages'], klass
      end
    end
  end
end