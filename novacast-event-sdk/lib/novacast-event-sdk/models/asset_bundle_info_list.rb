module NovacastSDK
  module EventV1
    module Models
      # 
      class AssetBundleInfoList < NovacastSDK::BaseModel
        attr_accessor :bundles

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # a collection of asset bundle informations
            :'bundles' => { base_name: 'bundles', type: 'Array[AssetBundleInfo]', required: true }
            
          }
        end
      end
    end
  end
end
