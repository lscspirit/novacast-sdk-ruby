module NovacastSDK
  module EventV1
    module Models
      # 
      class LiveMeetingMessageResponse < NovacastSDK::BaseModel
        attr_accessor :message

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'message' => { base_name: 'message', type: 'ChatMessage', required: true }
            
          }
        end
      end
    end
  end
end
