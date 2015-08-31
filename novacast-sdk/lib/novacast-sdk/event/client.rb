module Novacast
  module SDK
    module Event
      class Client < Novacast::SDK::Client

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