module NovacastSDK
  module EventV1
    module Models
      # 
      class PollStatus < NovacastSDK::BaseModel
        attr_accessor :start_time, :end_time, :status, :statistics

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # start time of the poll
            :'start_time' => { base_name: 'start_time', type: 'Integer', required: true },
            # end time of the poll
            :'end_time' => { base_name: 'end_time', type: 'Integer', required: true },
            # the text status of the poll
            :'status' => { base_name: 'status', type: 'String', required: true },
            # stores current statistics of the poll
            :'statistics' => { base_name: 'statistics', type: 'Object', required: true }
          }
        end
      end
    end
  end
end
