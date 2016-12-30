module NovacastSDK
  module EventV1
    module Models
      # 
      class Error < NovacastSDK::BaseModel
        attr_accessor :klass_name, :messages, :fields

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # error class name
            :'klass_name' => { base_name: 'klass_name', type: 'String', required: true },
            # list of error messages (from all attributes)
            :'messages' => { base_name: 'messages', type: 'Array[String]', required: true },
            # error fields
            :'fields' => { base_name: 'fields', type: 'Array[ErrorField]', required: false }
          }
        end
      end
    end
  end
end
