module NovacastSDK
  module EventV1
    module Models
      # 
      class ForumPostUpdateRequest < NovacastSDK::BaseModel
        attr_accessor :approved, :hidden, :deleted

        def self.api_model_module
          NovacastSDK::EventV1::Models
        end

        def self.model_properties
          {
            
            # approved by moderator
            :'approved' => { base_name: 'approved', type: 'BOOLEAN', required: false },
            
            # whether the post is hidden
            :'hidden' => { base_name: 'hidden', type: 'BOOLEAN', required: false },
            
            # whether the post is deleted
            :'deleted' => { base_name: 'deleted', type: 'BOOLEAN', required: false }
            
          }
        end
      end
    end
  end
end
