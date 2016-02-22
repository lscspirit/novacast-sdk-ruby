module NovacastSDK
  module EventV1
    module Models
      # 
      class EventUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :name, :asset_bundle_uid, :user_set_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # name of the event
            :'name' => { base_name: 'name', type: 'String', required: false },
            
            # uid of the asset bundle
            :'asset_bundle_uid' => { base_name: 'asset_bundle_uid', type: 'String', required: false },
            
            # uid of the user set
            :'user_set_uid' => { base_name: 'user_set_uid', type: 'String', required: false }
            
          }
        end
      end
    end
  end
end
