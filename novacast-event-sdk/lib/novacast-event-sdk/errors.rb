module NovacastSDK
  module EventV1
    module Errors
      class EventNotActive < NovacastSDK::Errors::Base; DEFAULT_STATUS=404; end
      class EventNotInProgress < NovacastSDK::Errors::Base; DEFAULT_STATUS=404; end
      class NotEnrolled < NovacastSDK::Errors::Base; DEFAULT_STATUS=401; end
      class NoChannelEventAccess < NovacastSDK::Errors::Base; DEFAULT_STATUS=401; end
      class EnrollmentExists < NovacastSDK::Errors::Base; DEFAULT_STATUS=400; end
      class EnrollmentError < NovacastSDK::Errors::Base; DEFAULT_STATUS=400; end
      class InvalidPreviewToken < NovacastSDK::Errors::Base; DEFAULT_STATUS=400; end
      class PreviewTokenExpired < NovacastSDK::Errors::Base; DEFAULT_STATUS=400; end
      class NoModuleAccess < NovacastSDK::Errors::Base; DEFAULT_STATUS=400; end
      class RecordLimitExceed < NovacastSDK::Errors::Base; DEFAULT_STATUS=400; end
    end
  end
end
