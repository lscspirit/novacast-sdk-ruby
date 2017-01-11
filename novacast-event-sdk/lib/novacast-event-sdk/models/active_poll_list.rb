module NovacastSDK
  module EventV1
    module Models
      # 
      class ActivePollList < NovacastSDK::BaseModel
        attr_accessor :polls

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # active polls collection
            :'polls' => { base_name: 'polls', type: 'Array[ActivePoll]', required: true }
            
          }
        end
      end
    end
  end
end
