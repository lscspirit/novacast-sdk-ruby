module NovacastSDK
  module EventV1
    module Models
      # 
      class EventExtended < NovacastSDK::BaseModel
        attr_accessor :channel_uid, :uid, :name, :stage, :default_session_uid, :access_policy_uid, :asset_bundle_uid, :user_set_uid, :public_aliases, :page_mappings, :event_sessions, :event_pages, :active_data_set_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the channel the event belongs to
            :'channel_uid' => { base_name: 'channel_uid', type: 'String', required: false },
            
            # uid of the event
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # name of the event
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # state of the event
            :'stage' => { base_name: 'stage', type: 'String', required: true },
            
            # default session uid
            :'default_session_uid' => { base_name: 'default_session_uid', type: 'String', required: true },
            
            # uid of the access policy
            :'access_policy_uid' => { base_name: 'access_policy_uid', type: 'String', required: false },
            
            # asset bundle uid
            :'asset_bundle_uid' => { base_name: 'asset_bundle_uid', type: 'String', required: false },
            
            # user set uid
            :'user_set_uid' => { base_name: 'user_set_uid', type: 'String', required: false },
            
            # list of public aliases
            :'public_aliases' => { base_name: 'public_aliases', type: 'Array[PublicAlias]', required: true },
            
            # list of page mappings
            :'page_mappings' => { base_name: 'page_mappings', type: 'Array[PageMapping]', required: true },
            
            # list of sessions
            :'event_sessions' => { base_name: 'event_sessions', type: 'Array[EventSession]', required: true },
            
            # list of pages
            :'event_pages' => { base_name: 'event_pages', type: 'Array[EventPage]', required: true },
            
            # uid of the active data set
            :'active_data_set_uid' => { base_name: 'active_data_set_uid', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
