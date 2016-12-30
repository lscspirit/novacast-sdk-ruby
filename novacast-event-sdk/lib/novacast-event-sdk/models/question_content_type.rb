module NovacastSDK
  module EventV1
    module Models
      # 
      class QuestionContentType < NovacastSDK::BaseModel
        attr_accessor :name, :desc, :type_key, :params

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # type name
            :'name' => { base_name: 'name', type: 'String', required: true },
            # type description
            :'desc' => { base_name: 'desc', type: 'String', required: false },
            # key name
            :'type_key' => { base_name: 'type_key', type: 'String', required: true },
            # config parameters
            :'params' => { base_name: 'params', type: 'Object', required: true }
          }
        end
      end
    end
  end
end
