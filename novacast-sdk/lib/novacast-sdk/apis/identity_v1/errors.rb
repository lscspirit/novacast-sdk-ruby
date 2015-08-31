module Novacast
  module API
    module IdentityV1
      class InvalidAccessTokenError < Novacast::SDK::Error; DEFAULT_STATUS = :unauthorized; end
    end
  end
end
