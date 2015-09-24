require 'novacast-sdk-core'

module Novacast
  module API
    autoload :EventV1,   'novacast-sdk/apis/event_v1'
    autoload :IdentityV1,   'novacast-sdk/apis/identity_v1'
  end

  module SDK
    #
    # Autoload all services
    #
    autoload :Event,    'novacast-sdk/event/service'
    autoload :Identity, 'novacast-sdk/identity/service'
  end
end