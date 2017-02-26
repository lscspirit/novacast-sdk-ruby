module NovacastSDK
  module EventV1
    module Models
      # 
      class ArchiveActivity < NovacastSDK::BaseModel
        attr_accessor :uid, :time_code, :activity_type, :config

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the activity
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # the time code in seconds
            :'time_code' => { base_name: 'time_code', type: 'Integer', required: true },
            
            # name of the activity
            :'activity_type' => { base_name: 'activity_type', type: 'String', required: true },
            
            # the details for this archive activity
            :'config' => { base_name: 'config', type: 'Object', required: true }
            
          }
        end
      end
    end
  end
end
