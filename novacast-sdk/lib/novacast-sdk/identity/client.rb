module Novacast
  module SDK
    module Identity
      class Client < Novacast::SDK::Client

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