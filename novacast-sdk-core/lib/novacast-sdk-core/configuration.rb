require 'uri'
require 'singleton'

module NovacastSDK
  module Client
    class Configuration
      include Singleton

      #
      # Attributes
      #

      # URL scheme (http or https)
      attr_accessor :scheme

      # Server Host
      attr_accessor :host

      # Server Port
      attr_accessor :port

      # Endpoint Base Path
      attr_accessor :base_path

      # APP UID
      attr_accessor :app_uid

      # APP Secret
      attr_accessor :app_secret

      # Access Token
      attr_accessor :access_token

      #
      # Initialization
      #

      def initialize
        # default values
        self.scheme = 'http'
        self.port   = 80
      end

      #
      # Make instance methods available as if they are class methods
      #
      class << self
        def method_missing(method_name, *args, &block)
          config = Configuration.instance
          if config.respond_to?(method_name)
            config.send(method_name, *args, &block)
          else
            super
          end
        end
      end

      #
      # Accessors
      #

      def scheme=(scheme)
        # remove :// from scheme
        if scheme =~ /^(\w+)(?::\/\/)?/
          @scheme = $1
        else
          raise NovacastSDK::ClientErrors::InvalidConfig,
                'Unsupported server scheme. Only "http" or "https" is allowed'
        end
      end

      def host=(host)
        # remove http(s):// and anything after a slash
        @host = host.sub(/https?:\/\//, '').split('/').first
      end

      def base_path=(base_path)
        # Add leading and trailing slashes to base_path
        @base_path = "/#{base_path}".gsub(/\/+/, '/')
        @base_path = '' if @base_path == '/'
      end

      def port=(port)
        port = port.is_a?(Integer) ? port : Integer(port, 10)
        case port
          when 1..65535
            @port = port
          else
            raise NovacastSDK::ClientErrors::InvalidConfig, 'Invalid port number'
        end
      end

      def base_url
        URI.join("#{scheme}://#{host}:#{port}", base_path).to_s
      end
    end
  end
end