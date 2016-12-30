module NovacastSDK
  module EventV1
    module Models
      # 
      class ActiveDataSetUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :data_set_uid

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # uid of the data set to be set as active
            :'data_set_uid' => { base_name: 'data_set_uid', type: 'String', required: true }
          }
        end
      end
    end
  end
end
