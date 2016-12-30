module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSetInfoList < NovacastSDK::BaseModel
        attr_accessor :sets

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # question set info collection
            :'sets' => { base_name: 'sets', type: 'Array[QuestionSetInfo]', required: true }
          }
        end
      end
    end
  end
end
