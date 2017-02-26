module NovacastSDK
  module EventV1
    module Models
      # 
      class ArchiveActivityList < NovacastSDK::BaseModel
        attr_accessor :activities

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # archive activities
            :'activities' => { base_name: 'activities', type: 'Array[ArchiveActivity]', required: true }
            
          }
        end
      end
    end
  end
end
