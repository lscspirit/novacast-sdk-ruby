module NovacastSDK
  module EventV1
    module Models
      # 
      class EnrollmentField < NovacastSDK::BaseModel
        attr_accessor :name, :data_type, :label, :optional, :index

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # name of the field
            :'name' => { base_name: 'name', type: 'String', required: true },
            
            # data type of the field
            :'data_type' => { base_name: 'data_type', type: 'String', required: true },
            
            # label of the field
            :'label' => { base_name: 'label', type: 'String', required: false },
            
            # whether the field is required
            :'optional' => { base_name: 'optional', type: 'BOOLEAN', required: true },
            
            # index of the field
            :'index' => { base_name: 'index', type: 'Integer', required: true }
            
          }
        end
      end
    end
  end
end
