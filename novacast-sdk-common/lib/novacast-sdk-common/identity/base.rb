require 'novacast-sdk-common/identity/definition'
require 'novacast-sdk-common/identity/user_permissions'

module NovacastSDK
  module Identity
    # Construct a permission map that has the specified permission at different resource levels
    #
    # @param permission [Symbol] a permission (see NovacastSDK::Identity::Definition::PERMISSIONS)
    # @param channel_rn [String] resource name of a channel
    # @param event_rn [String] resource name of a event
    # @param session_rn [String] resource name of a session
    #
    # @example
    #   permission_chain(:view_event, 'channel:1234', 'event:5678') #=> { 'channel:*' => :view_event, 'channel:1234' => :view_event, 'event:5678' => :view_event }
    def self.permission_chain(permission, channel_rn = nil, event_rn = nil, session_rn = nil)
      chain = {}

      chain['channel:*'] = permission   # all channels
      chain[channel_rn]  = permission if channel_rn
      chain[event_rn]    = permission if event_rn
      chain[session_rn]  = permission if session_rn

      chain
    end
  end
end