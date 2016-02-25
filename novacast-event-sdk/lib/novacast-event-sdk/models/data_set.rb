module NovacastSDK
  module EventV1
    module Models
      # 
      class DataSet < NovacastSDK::BaseModel
        attr_accessor :uid, :label, :production, :active

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # uid of the stream
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            
            # stream label
            :'label' => { base_name: 'label', type: 'String', required: true },
            
            # production use
            :'production' => { base_name: 'production', type: 'BOOLEAN', required: true },
            
            # active data set
            :'active' => { base_name: 'active', type: 'BOOLEAN', required: true }
            
          }
        end
      end
    end
  end
end
