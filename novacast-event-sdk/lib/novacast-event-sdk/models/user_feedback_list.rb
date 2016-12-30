module NovacastSDK
  module EventV1
    module Models
      # 
      class UserFeedbackList < NovacastSDK::BaseModel
        attr_accessor :feedbacks

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # list of feedbacks
            :'feedbacks' => { base_name: 'feedbacks', type: 'Array[UserFeedback]', required: true }
          }
        end
      end
    end
  end
end
