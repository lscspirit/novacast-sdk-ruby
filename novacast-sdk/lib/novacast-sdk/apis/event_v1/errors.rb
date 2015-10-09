module Novacast
  module API
    module EventV1
      class EventNotActiveError < Novacast::SDK::Error; DEFAULT_STATUS = :forbidden;    end
      class NoEventAccessError  < Novacast::SDK::Error; DEFAULT_STATUS = :unauthorized; end
    end
  end
end