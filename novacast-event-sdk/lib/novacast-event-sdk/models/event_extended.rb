module NovacastSDK
  module EventV1
    module Models
      # 
      class EventExtended < NovacastSDK::BaseModel
        attr_accessor :asset_bundle_uid, :uid, :public_aliases, :event_pages, :stage, :name, :page_mappings, :user_set_uid, :default_session_uid, :event_sessions

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # asset bundle uid
            :'asset_bundle_uid' => { base_name: 'asset_bundle_uid', type: 'String', required: false },
            
            # uid of the event
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # list of public aliases
            :'public_aliases' => { base_name: 'public_aliases', type: 'Array[PublicAlias]', required: true },
            
            # list of pages
            :'event_pages' => { base_name: 'event_pages', type: 'Array[EventPage]', required: true },
            
            # state of the event
            :'stage' => { base_name: 'stage', type: 'String', required: true },
            
            # name of the event
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # list of page mappings
            :'page_mappings' => { base_name: 'page_mappings', type: 'Array[PageMapping]', required: true },
            
            # user set uid
            :'user_set_uid' => { base_name: 'user_set_uid', type: 'String', required: false },
            
            # default session uid
            :'default_session_uid' => { base_name: 'default_session_uid', type: 'String', required: true },
            
            # list of sessions
            :'event_sessions' => { base_name: 'event_sessions', type: 'Array[EventSession]', required: true }
            
          }
        end
      end
    end
  end
end
