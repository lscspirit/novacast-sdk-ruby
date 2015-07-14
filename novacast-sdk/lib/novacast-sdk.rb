require 'novacast-sdk-core'

module Novacast
  module API
    autoload :Resources, 'novacast-sdk/apis/resources'
    autoload :EventV1,   'novacast-sdk/apis/event_v1'
  end

  module SDK
    #
    # Autoload all services
    #
    autoload :Event,    'novacast-sdk/event/service'
    autoload :Identity, 'novacast-sdk/identity/service'
  end
end