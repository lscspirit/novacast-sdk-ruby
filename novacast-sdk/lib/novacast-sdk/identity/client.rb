module Novacast
  module SDK
    module Identity
      def self.init(options = {})
        @opts = options
      end

      def self.client
        Client.new @opts
      end

      class Client < Novacast::SDK::Client

        #
        # Identityservice Client initializer
        # Requires the following on top of those required by generic client
        # app_uid - the oauth application uid for the client
        # app_secret - the oauth applicaiton secret for the client
        #
        def initialize(opts = {})
          #call the parent constructor
          super(opts)

          raise ArgumentError, 'Must specify the App UID & App Secret' if @app_uid.blank? or @app_secret.blank?
        end


        private

        def load_api!
          case @api_version
            when '1'
              Novacast::API::IdentityV1
            else
              raise ArgumentError, "Invalid API version. Version '#{@api_version}' is not a supported version."
          end
        end
      end
    end
  end
end