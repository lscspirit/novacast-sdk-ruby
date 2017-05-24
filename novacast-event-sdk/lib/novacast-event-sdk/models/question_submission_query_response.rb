module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionSubmissionQueryResponse < NovacastSDK::BaseModel
        attr_accessor :submissions_list

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # 
            :'submissions_list' => { base_name: 'submissions_list', type: 'ManifestSubmissions', required: true }
            
          }
        end
      end
    end
  end
end
