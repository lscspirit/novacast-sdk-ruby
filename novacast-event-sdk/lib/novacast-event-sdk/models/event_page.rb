module NovacastSDK
  module EventV1
    module Models
      # 
      class EventPage < NovacastSDK::BaseModel
        attr_accessor :uid, :label, :page_config

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # uid of the page
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            # label of the page
            :'label' => { base_name: 'label', type: 'String', required: true },
            # page configuration in json
            :'page_config' => { base_name: 'page_config', type: 'String', required: false }
          }
        end
      end
    end
  end
end
