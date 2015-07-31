module Novacast
  module SDK
    module Identity
      class Client < Novacast::SDK::Client

        #
        # Identityservice Client initializer
        # Requires the following on top of those required by generic client
        # app_uid - the oauth application uid for the client
        # app_secret - the oauth applicaiton secret for the client
        #
        def initialize(opts = {})

          raise ArgumentError, 'Must specify the App UID & App Secret' if opts[:app_uid].nil? or opts[:app_secret].nil?
          @app_token = opts[:app_uid]+'|'+ opts[:app_secret]

          #call the parent constructor
          super(opts)
        end


        private

        def extend_client_ops!
          case @api_version
            when '1'
              self.extend(Novacast::API::IdentityV1::Operations)
            else
              raise ArgumentError, "Invalid API version. Version '#{@api_version}' is not a supported version."
          end
        end
      end
    end
  end
end