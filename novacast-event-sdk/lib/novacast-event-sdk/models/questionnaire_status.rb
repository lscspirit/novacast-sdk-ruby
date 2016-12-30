module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionnaireStatus < NovacastSDK::BaseModel
        attr_accessor :start_time, :end_time, :status, :statistics

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # start time of the questionnaire
            :'start_time' => { base_name: 'start_time', type: 'Integer', required: true },
            # end time of the questionnaire
            :'end_time' => { base_name: 'end_time', type: 'Integer', required: true },
            # the text status of the questionnaire
            :'status' => { base_name: 'status', type: 'String', required: true },
            # stores current statistics of the questionnaire
            :'statistics' => { base_name: 'statistics', type: 'Object', required: true }
          }
        end
      end
    end
  end
end
