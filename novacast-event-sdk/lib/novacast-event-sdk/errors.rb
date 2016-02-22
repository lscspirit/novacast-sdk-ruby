module NovacastSDK
  module EventV1
    module Errors
      class EventNotActive < NovacastSDK::Errors::Base; DEFAULT_STATUS=404; end
      class NoEventAccess < NovacastSDK::Errors::Base; DEFAULT_STATUS=401; end
    end
  end
end
