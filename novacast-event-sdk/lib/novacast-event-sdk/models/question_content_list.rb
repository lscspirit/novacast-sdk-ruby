module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionContentList < NovacastSDK::BaseModel
        attr_accessor :contents

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # question content collection
            :'contents' => { base_name: 'contents', type: 'Array[QuestionContent]', required: true }
            
          }
        end
      end
    end
  end
end
