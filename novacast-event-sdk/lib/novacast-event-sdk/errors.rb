module NovacastSDK
  module EventV1
    module Errors
      class EventNotActive < NovacastSDK::Errors::Base; DEFAULT_STATUS=404; end
      class NotEnrolled < NovacastSDK::Errors::Base; DEFAULT_STATUS=401; end
      class NoChannelEventAccess < NovacastSDK::Errors::Base; DEFAULT_STATUS=401; end
      class EnrollmentExists < NovacastSDK::Errors::Base; DEFAULT_STATUS=400; end
    end
  end
end
