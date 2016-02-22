module NovacastSDK
  module ClientErrors
    # Base class for Client Error
    class Base < StandardError; end

    # Configuration Errors
    class InvalidConfig  < Base; end
    class ConfigNotFound < Base; end
  end
end