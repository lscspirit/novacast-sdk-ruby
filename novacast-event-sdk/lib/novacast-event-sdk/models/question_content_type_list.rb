module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionContentTypeList < NovacastSDK::BaseModel
        attr_accessor :types

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # question content types collection
            :'types' => { base_name: 'types', type: 'Array[QuestionContentType]', required: true }
            
          }
        end
      end
    end
  end
end
