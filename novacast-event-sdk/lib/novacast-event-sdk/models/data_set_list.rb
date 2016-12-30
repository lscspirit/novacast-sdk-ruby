module NovacastSDK
  module EventV1
    module Models
      # 
      class DataSetList < NovacastSDK::BaseModel
        attr_accessor :data_sets

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # collection of data set objects
            :'data_sets' => { base_name: 'data_sets', type: 'Array[DataSet]', required: true }
          }
        end
      end
    end
  end
end
