require 'addressable/uri'
require 'addressable/template'

module NovacastSDK
  module Client
    class Operation
      attr_accessor :method
      attr_accessor :params, :headers, :query, :body
      attr_accessor :auths
      attr_writer   :endpoint

      def initialize(ep, method)
        self.endpoint = ep
        self.method   = method
        @params  = nil
        @headers = nil
        @query   = nil
        @body    = nil
        @auths   = []
      end

      def params=(values)
        raise ArgumentError, 'Operation path param values must be a key-value Hash' unless values.nil? || values.is_a?(Hash)
        @params = values
      end

      def headers=(values)
        raise ArgumentError, 'Operation header values must be a key-value Hash' unless values.nil? || values.is_a?(Hash)
        @headers = values
      end

      def query=(values)
        raise ArgumentError, 'Operation query param values must be a key-value Hash' unless values.nil? || values.is_a?(Hash)
        @query = values
      end

      def method=(m)
        m_sym = m.downcase.to_sym
        raise ArgumentError, 'Operation method must be one of :get, :post, :put, :delete' unless [:get, :post, :put, :delete].include?(m_sym)
        @method = m_sym
      end

      def endpoint=(ep)
        @endpoint = Addressable::Template.new ep
      end

      def endpoint_path
        check_endpoint_params!
        @endpoint.expand(@params).to_s
      end

      def auths=(values)
        # essentially Array::wrap in Rails
        @auths = case
                   when values.nil?
                     []
                   when values.is_a?(Array)
                     values
                   when values.respond_to?(:to_ary)
                     values.to_ary || [values]
                   else
                     [values]
                 end
      end

      private

      def check_endpoint_params!
        @endpoint.variables.each do |var|
          value = @params[var] || @params[var.to_sym]
          raise RuntimeError, "Operation endpoint param '#{var}' is missing or empty." if value.nil? || value.to_s.empty?
        end
      end
    end
  end
end