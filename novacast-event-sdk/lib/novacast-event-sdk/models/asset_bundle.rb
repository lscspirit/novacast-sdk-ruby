module NovacastSDK
  module EventV1
    module Models
      # 
      class AssetBundle < NovacastSDK::BaseModel
        attr_accessor :uid, :rn, :label, :contents

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            # asset bundle uid
            :'uid' => { base_name: 'uid', type: 'String', required: true },
            # resource name
            :'rn' => { base_name: 'rn', type: 'String', required: true },
            # label
            :'label' => { base_name: 'label', type: 'String', required: true },
            # collection of bundle contents
            :'contents' => { base_name: 'contents', type: 'Array[BundleContent]', required: true }
          }
        end
      end
    end
  end
end
