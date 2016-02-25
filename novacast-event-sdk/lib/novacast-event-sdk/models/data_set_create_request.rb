module NovacastSDK
  module EventV1
    module Models
      # 
      class DataSetCreateRequest < NovacastSDK::BaseModel
        attr_accessor :label, :production, :active

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # stream label
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # production use
            :'production' => { base_name: 'production', type: 'BOOLEAN', required: false },
            
            # active data set
            :'active' => { base_name: 'active', type: 'BOOLEAN', required: false }
            
          }
        end
      end
    end
  end
end
