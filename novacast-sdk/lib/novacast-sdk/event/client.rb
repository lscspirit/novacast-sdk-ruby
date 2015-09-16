module Novacast
  module SDK
    module Event
      def self.init(options = {})
        @opts = options
      end

      def self.client
        Client.new @opts
      end

      class Client < Novacast::SDK::Client
        def access_token=(access_token)
          @access_token = access_token
        end

        def access_token
          @access_token || raise(RuntimeError, 'Access token not found. Please set the token with Client#access_token=')
        end

        private

        def load_api!
          case @api_version
            when '1'
              Novacast::API::EventV1
            else
              raise ArgumentError, "Invalid API version. Version '#{@api_version}' is not a supported version."
          end
        end
      end
    end
  end
end