module NovacastSDK
  module EventV1
    module Models
      # 
      class DataSetPartitionList < NovacastSDK::BaseModel
        attr_accessor :partitions

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # collection of data set partition objects
            :'partitions' => { base_name: 'partitions', type: 'Array[DataSetPartition]', required: true }
          }
        end
      end
    end
  end
end
