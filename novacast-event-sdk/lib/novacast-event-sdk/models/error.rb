module NovacastSDK
  module EventV1
    module Models
      # 
      class Error < NovacastSDK::BaseModel
        attr_accessor :klass_name, :messages

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # error class name
            :'klass_name' => { base_name: 'klass_name', type: 'String', required: false },
            
            # list of error messages
            :'messages' => { base_name: 'messages', type: 'Array[String]', required: false }
            
          }
        end
      end
    end
  end
end
