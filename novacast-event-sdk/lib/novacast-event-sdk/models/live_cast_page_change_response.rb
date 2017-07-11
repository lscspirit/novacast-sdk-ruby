module NovacastSDK
  module EventV1
    module Models
      # 
      class LiveCastPageChangeResponse < NovacastSDK::BaseModel
        attr_accessor :state, :sync_errors

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'state' => { base_name: 'state', type: 'LiveCastState', required: true },
            
            # slide sync error messages
            :'sync_errors' => { base_name: 'sync_errors', type: 'Array[String]', required: false }
            
          }
        end
      end
    end
  end
end
