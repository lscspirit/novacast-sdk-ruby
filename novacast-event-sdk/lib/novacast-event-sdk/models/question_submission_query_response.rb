module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmissionQueryResponse < NovacastSDK::BaseModel
        attr_accessor :submissions_list, :record_exceeded

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # 
            :'submissions_list' => { base_name: 'submissions_list', type: 'QuestionSubmissionList', required: true },
            # indicate if number of records exceeded limit
            :'record_exceeded' => { base_name: 'record_exceeded', type: 'BOOLEAN', required: true }
          }
        end
      end
    end
  end
end
