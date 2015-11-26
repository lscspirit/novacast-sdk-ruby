RSpec.describe 'Utils', '::props_compare' do
  context 'with primitive type' do
    it 'returns nil when type matches' do
      result = NovacastSDK::Utils.type_check 'String Value', 'String'
      expect(result).to be_nil
    end

    it 'returns :invalid_type when type does not match' do
      result = NovacastSDK::Utils.type_check 'String Value', 'Integer'
      expect(result).to eq(:invalid_type)
    end
  end

  context 'with primitive array type' do
    it 'returns nil when all items in the array matches type' do
      result = NovacastSDK::Utils.type_check %w(1 2), 'Array[String]'
      expect(result).to be_nil
    end

    it 'returns :invalid_type at the position of the item' do
      result = NovacastSDK::Utils.type_check ['String 1', 2, 'String 2'], 'Array[String]'
      expect(result).to eq([nil, :invalid_type, nil])
    end
  end

  context 'with model type' do
    context 'that has single required attribute' do
      before :context do
        @model_props = {
            :'name' => { base_name: 'name', type: 'String', required: true }
        }
      end

      it 'returns empty diff when attribute is present' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to be_nil
      end

      it 'returns a diff result when attribute is missing' do
        target = { }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to match(name: :missing)
      end

      it 'returns a diff result when a unknown attribute is present' do
        target = { info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to match(info: :not_allowed, name: :missing)
      end
    end

    context 'that has single optional attribute' do
      before :context do
        @model_props = {
            :'name' => { base_name: 'name', type: 'String', required: false }
        }
      end

      it 'returns empty diff when attribute is present' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to be_nil
      end

      it 'returns empty diff when attribute is missing' do
        target = { }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to be_nil
      end
    end

    context 'that has multiple optional attributes' do
      before :context do
        @model_props = {
            :'name' => { base_name: 'name', type: 'String', required: false },
            :'info' => { base_name: 'info',  type: 'String', required: false }
        }
      end

      it 'returns empty diff no attribute is present' do
        target = { }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to be_nil
      end

      it 'returns empty diff when only some of the attributes are present' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to be_nil
      end

      it 'returns empty diff when all of the attributes are present' do
        target = { name: 'my name', info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to be_nil
      end
    end

    context 'that has multiple required attributes' do
      before :context do
        @model_props = {
            :'name' => { base_name: 'name', type: 'String', required: true },
            :'info' => { base_name: 'info', type: 'String', required: true }
        }
      end

      it 'returns a diff when only some of the attributes are present' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to match(info: :missing)
      end

      it 'returns empty diff when all of the attributes are present' do
        target = { name: 'my name', info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to be_nil
      end
    end

    context 'that has multiple attributes (mix of required and optional)' do
      before :context do
        @model_props = {
            :'name' => { base_name: 'name', type: 'String', required: true },
            :'info' => { base_name: 'info', type: 'String', required: false }
        }
      end

      it 'returns empty diff when all attributes are present' do
        target = { name: 'my name', info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to be_nil
      end

      it 'returns a diff when required attributes are missing' do
        target = { info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to match(name: :missing)
      end

      it 'returns empty diff when optional attributes are missing' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          @model_props
        end

        expect(diff).to be_nil
      end
    end

    context 'that has child association' do
      before :context do
        @model_props = {
            :'BaseModel' => {
                :'child' => { base_name: 'name', type: 'ChildModel', required: true }
            },
            :'ChildModel' => {
                :'name' => { base_name: 'name', type: 'String', required: true }
            }
        }
      end

      it 'returns empty diff when both base and child are valid' do
        target = { child: { name: 'child name' } }
        diff = NovacastSDK::Utils.type_check target, 'BaseModel' do |model_name|
          @model_props[model_name.to_sym]
        end

        expect(diff).to be_nil
      end

      it 'returns a diff when child is invalid' do
        target = { child: { info: 'some info' } }
        diff = NovacastSDK::Utils.type_check target, 'BaseModel' do |model_name|
          @model_props[model_name.to_sym]
        end

        expect(diff).to match(child: { name: :missing, info: :not_allowed })
      end
    end

    context 'that has invalid model type' do
      before :context do
        @model_props = {
            :'BaseModel' => {
                :'child' => { base_name: 'name', type: 'ChildModel', required: true }
            }
        }
      end

      it 'raises exception when root model not found' do
        target = { child: { name: 'child name' } }
        expect do
          NovacastSDK::Utils.type_check target, 'UnknownBaseModel' do |model_name|
            @model_props[model_name.to_sym]
          end
        end.to raise_error.with_message(/properties is nil for 'UnknownBaseModel'/)
      end

      it 'raises exception when child model not found' do
        target = { child: { name: 'child name' } }
        expect do
          NovacastSDK::Utils.type_check target, 'BaseModel' do |model_name|
            @model_props[model_name.to_sym]
          end
        end.to raise_error.with_message(/properties is nil for 'ChildModel'/)
      end
    end
  end

  context 'with non-primitive array type' do
    before :context do
      @model_props = {
        :'name' => { base_name: 'name', type: 'String', required: true }
      }
    end

    it 'returns nil when all items are of the model type' do
      target = [
        { name: 'name 1' },
        { name: 'name 2' }
      ]
      result = NovacastSDK::Utils.type_check target, 'Array[Model]' do
        @model_props
      end
      expect(result).to be_nil
    end

    it 'returns a error diff' do
      target = [
          { name: 'name 1' },
          { info: 'info 1' }
      ]
      result = NovacastSDK::Utils.type_check target, 'Array[Model]' do
        @model_props
      end
      expect(result).to match([nil, { name: :missing, info: :not_allowed }])
    end
  end
end