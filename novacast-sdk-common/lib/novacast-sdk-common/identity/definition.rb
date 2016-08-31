module NovacastSDK
  module Identity
    module Definition
      ####################################################################
      # Role              | Permissions
      # ------------------------------------------------------------------
      # SysAdmin          | ManageAccount
      #                   | ManageRole
      #                   | AssignRole
      # ------------------------------------------------------------------
      # ChannelMaster     | (all channel permissions)
      # ------------------------------------------------------------------
      #                   | ViewChannel
      # ChannelOwner      | DeleteChannel
      #                   | TransferOwnership
      # ------------------------------------------------------------------
      # ChannelAdmin      | ViewChannel
      #                   | EditChannel
      #                   | ManageRole
      #                   | AssignRole
      #                   | ManageChannelUser
      #                   | ManageResource
      #                   | ViewResource
      #                   | CreateEvent
      # ------------------------------------------------------------------
      # EventAdmin        | ViewEvent
      #                   | EditEvent
      #                   | DeleteEvent
      # ------------------------------------------------------------------
      # ReportViewer      | ViewReport
      # ------------------------------------------------------------------
      # Operator          | OperateSession
      # ------------------------------------------------------------------
      # ResourceViewer    | ViewResource

      ####################################################################
      # Permission        | Level                   | Allow to ...
      # ------------------------------------------------------------------
      # ManageAccount     | System                  | create, edit, and remove any account in the system
      #
      # ManageRole        | System                  | create, edit and remove any role
      # ManageRole        | Channel                 | create, edit and remove any role belonging to the specified channel
      # AssignRole        | System                  | assign any role at any level to any account
      # AssignRole        | Channel                 | assign role belonging to the specified channel to any account at the channel level or below to any user
      #
      # CreateChannel     | System                  | create a new channel
      # ViewChannel       | Channel                 | view settings of the specified channel
      # EditChannel       | Channel                 | edit any settings of the specified channel
      # DeleteChannel     | Channel                 | delete the specified channel
      #
      # TransferOwnership | Channel                 | transfer ownership of the specified channel
      #
      # ManageChannelUser | Channel                 | create, edit and remove the specified channel's private user
      #
      # ViewResource      | Channel                 | view resource in the specified channel
      # ManageResource    | Channel                 | create, edit and remove any resource in the specified channel
      #
      # CreateEvent       | Channel                 | create new event in the specified channel
      # ViewEvent         | Channel                 | view settings of any event in the specified channel
      # ViewEvent         | Event                   | view settings of the specified event
      # EditEvent         | Channel                 | edit any settings of any event in the specified channel
      # EditEvent         | Event                   | edit any settings of the specified event
      # DeleteEvent       | Channel                 | delete any event in the specified channel
      # DeleteEvent       | Event                   | delete the specified event
      #
      # ViewReport        | Channel                 | view any reports of any event in the specified channel
      # ViewReport        | Event                   | view any reports of the specified event
      #
      # OperateSession    | Channel                 | operate any event session of the specified channel through the dashboard
      # OperateSession    | Event                   | operate any event session of the specified event through the dashboard
      # OperateSession    | Event Session           | operate the specified event session

      ROLES = {
        system_admin:  'SysAdmin',
        channel_master: 'ChannelMaster',
        channel_owner: 'ChannelOwner',
        channel_admin: 'ChannelAdmin',
        event_admin:   'EventAdmin',
        report_viewer: 'ReportViewer',
        operator:      'Operator',
        resource_viewer: 'ResourceViewer'
      }

      PERMISSIONS = {
        manage_account:   'ManageAccount',
        manage_role:      'ManageRole',
        assign_role:      'AssignRole',
        create_channel:     'CreateChannel',

        # Channel Permissionsi
        view_channel:     'ViewChannel',
        edit_channel:     'EditChannel',
        delete_channel:   'DeleteChannel',
        transfer_ownership:  'TransferOwnership',
        manage_channel_user: 'ManageChannelUser',
        view_resource:    'ViewResource',
        manage_resource:  'ManageResource',

        # Event Permissions
        create_event:     'CreateEvent',
        view_event:       'ViewEvent',
        edit_event:       'EditEvent',
        delete_event:     'DeleteEvent',
        view_report:      'ViewReport',
        operate_session:  'OperateSession'
      }
    end
  end
end
