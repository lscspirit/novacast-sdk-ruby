require 'addressable/uri'
require 'addressable/template'
require 'novacast-sdk-core/response_object'

module Novacast
  module SDK
    class Operation
      attr_accessor :method, :params, :query
      attr_accessor :request_obj, :request_representation, :response_representation
      attr_accessor :request, :response
      attr_reader   :request_body, :response_obj

      def initialize(path, method = :get, options = nil)
        @path_template = Addressable::Template.new path
        self.method    = method
        @options = options
        @params  = {}
        @query   = {}
      end

      #
      # Accessors
      #

      def path
        check_path_variables!
        @path_template.expand(@params).request_uri
      end

      def method=(m)
        m_sym = m.to_sym
        raise ArgumentError, 'Operation method must be one of :get, :post, :put, :delete' unless [:get, :post, :put, :delete].include?(m_sym)
        @method = m_sym
      end

      def request_representation=(representation)
        raise ArgumentError, 'Representation must be a JsonRepresentation object' unless representation <= JsonRepresentation
        @request_representation = representation
      end

      def request_wrap=(wrap)
        raise ArgumentError, 'Request wrap must either be a String or Symbol' unless wrap.is_a?(Symbol) || wrap.is_a?(String)
        @request_wrap = wrap
      end

      def response_representation=(representation)
        raise ArgumentError, 'Representation must be a JsonRepresentation object' unless representation <= JsonRepresentation
        @response_representation = representation
      end

      def request_obj=(obj)
        raise RuntimeError, 'A :get operation cannot have a request object' if method == :get

        if @request_representation.nil?
          @request_body = obj.to_s
        else
          @request_body = @request_representation.new(obj).to_json(wrap: @request_wrap)
        end
      end

      # Set the Response from the execution of the API request
      # Once set, the :response_obj becomes available if there is a response_representation
      # @param resp [Response] Response object
      def response=(resp)
        @response = resp
        unless @response_representation.nil?
          @response_obj = @response_representation.new(ResponseObject.new).from_json(resp.body)
        end
      end

      private

      # Check the provided path parameters and make sure all of them are set
      def check_path_variables!
        @path_template.variables.each do |var|
          value = @params[var] || @params[var.to_sym]
          raise RuntimeError, "Operation path param '#{var}' is missing or empty." if value.nil? || value.to_s.empty?
        end
      end
    end
  end
end