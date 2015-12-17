module NovacastSDK
  module Rspec
    class Model < NovacastSDK::BaseModel

    end

    class ChildModel < NovacastSDK::BaseModel

    end
  end
end

RSpec.describe 'Utils', '::type_check' do
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

  context 'with hash type of primitive key and value' do
    it 'returns nil when hash key and item matches the types' do
      result = NovacastSDK::Utils.type_check({ 'String key' => 'String value' }, 'Hash[String, String]')
      expect(result).to be_nil
    end

    it 'returns :invalid_type for the value when hash item does not match the type' do
      result = NovacastSDK::Utils.type_check({ 'String key' => 1 }, 'Hash[String, String]')
      expect(result).to eq('String key' => { key: nil, value: :invalid_type })
    end

    it 'returns :invalid_type for the key when hash key does not match the type' do
      result = NovacastSDK::Utils.type_check({ 1 => 'String value' }, 'Hash[String, String]')
      expect(result).to eq(1 => { key: :invalid_type, value: nil })
    end

    it 'returns :invalid_type for both value and key when they do not match the types' do
      result = NovacastSDK::Utils.type_check({ 1 => 2 }, 'Hash[String, String]')
      expect(result).to eq(1 => { key: :invalid_type, value: :invalid_type })
    end
  end

  context 'with hash type of primitive key and model value' do
    before :example do
      allow(NovacastSDK::Rspec::Model).to receive(:model_properties).and_return({ :'name' => { base_name: 'name', type: 'String', required: true } })
    end

    it 'returns nil when hash key and item matches the types' do
      result = NovacastSDK::Utils.type_check({ 'String key' => { 'name': 'model name' } }, 'Hash[String, Model]') do |model_name|
        model_name == 'Model' ? NovacastSDK::Rspec::Model : nil
      end
      expect(result).to be_nil
    end

    it 'returns :invalid_type for the value when hash item does not match the type' do
      result = NovacastSDK::Utils.type_check({ 'String key' => 'String value' }, 'Hash[String, Model]') do |model_name|
        model_name == 'Model' ? NovacastSDK::Rspec::Model : nil
      end
      expect(result).to eq('String key' => { key: nil, value: :invalid_type })
    end

    it 'returns diff result for the value when hash item model is invalid' do
      result = NovacastSDK::Utils.type_check({ 'String key' => { } }, 'Hash[String, Model]') do |model_name|
        model_name == 'Model' ? NovacastSDK::Rspec::Model : nil
      end
      expect(result).to eq('String key' => { key: nil, value: { name: :missing } })
    end
  end

  context 'with model type' do
    context 'that has single required attribute' do
      before :example do
        allow(NovacastSDK::Rspec::Model).to receive(:model_properties).and_return(
            :'name' => { base_name: 'name', type: 'String', required: true }
        )
      end

      it 'returns empty diff when attribute is present' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end

      it 'returns a diff result when attribute is missing' do
        target = { }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to match(name: :missing)
      end

      it 'returns a diff result when a unknown attribute is present' do
        target = { info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to match(info: :not_allowed, name: :missing)
      end
    end

    context 'that has single optional attribute' do
      before :example do
        allow(NovacastSDK::Rspec::Model).to receive(:model_properties).and_return(
            :'name' => { base_name: 'name', type: 'String', required: false }
        )
      end

      it 'returns empty diff when attribute is present' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end

      it 'returns empty diff when attribute is missing' do
        target = { }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end
    end

    context 'that has multiple optional attributes' do
      before :example do
        allow(NovacastSDK::Rspec::Model).to receive(:model_properties).and_return(
            :'name' => { base_name: 'name', type: 'String', required: false },
            :'info' => { base_name: 'info',  type: 'String', required: false }
        )
      end

      it 'returns empty diff no attribute is present' do
        target = { }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end

      it 'returns empty diff when only some of the attributes are present' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end

      it 'returns empty diff when all of the attributes are present' do
        target = { name: 'my name', info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end
    end

    context 'that has multiple required attributes' do
      before :example do
        allow(NovacastSDK::Rspec::Model).to receive(:model_properties).and_return(
            :'name' => { base_name: 'name', type: 'String', required: true },
            :'info' => { base_name: 'info', type: 'String', required: true }
        )
      end

      it 'returns a diff when only some of the attributes are present' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to match(info: :missing)
      end

      it 'returns empty diff when all of the attributes are present' do
        target = { name: 'my name', info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end
    end

    context 'that has multiple attributes (mix of required and optional)' do
      before :example do
        allow(NovacastSDK::Rspec::Model).to receive(:model_properties).and_return(
            :'name' => { base_name: 'name', type: 'String', required: true },
            :'info' => { base_name: 'info', type: 'String', required: false }
        )
      end

      it 'returns empty diff when all attributes are present' do
        target = { name: 'my name', info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end

      it 'returns a diff when required attributes are missing' do
        target = { info: 'some info' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to match(name: :missing)
      end

      it 'returns empty diff when optional attributes are missing' do
        target = { name: 'my name' }
        diff = NovacastSDK::Utils.type_check target, 'Model' do |model_name|
          NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end
    end

    context 'that has child association' do
      before :example do
        allow(NovacastSDK::Rspec::Model).to receive(:model_properties).and_return(
            :'child' => { base_name: 'name', type: 'ChildModel', required: true }
        )
        allow(NovacastSDK::Rspec::ChildModel).to receive(:model_properties).and_return(
            :'name' => { base_name: 'name', type: 'String', required: true }
        )
      end

      it 'returns empty diff when both base and child are valid' do
        target = { child: { name: 'child name' } }
        diff = NovacastSDK::Utils.type_check target, 'BaseModel' do |model_name|
          model_name == 'ChildModel' ? NovacastSDK::Rspec::ChildModel : NovacastSDK::Rspec::Model
        end

        expect(diff).to be_nil
      end

      it 'returns a diff when child is invalid' do
        target = { child: { info: 'some info' } }
        diff = NovacastSDK::Utils.type_check target, 'BaseModel' do |model_name|
          model_name == 'ChildModel' ? NovacastSDK::Rspec::ChildModel : NovacastSDK::Rspec::Model
        end

        expect(diff).to match(child: { name: :missing, info: :not_allowed })
      end
    end

    context 'that has invalid model type' do
      before :example do
        allow(NovacastSDK::Rspec::Model).to receive(:model_properties).and_return(
            :'child' => { base_name: 'name', type: 'ChildModel', required: true }
        )
        allow(NovacastSDK::Rspec::ChildModel).to receive(:model_properties).and_return(
            :'name' => { base_name: 'name', type: 'String', required: true }
        )
      end

      it 'raises exception when root model not found' do
        target = { child: { name: 'child name' } }
        expect do
          NovacastSDK::Utils.type_check target, 'UnknownBaseModel' do |model_name|
            case model_name
              when 'BaseModel'
                NovacastSDK::Rspec::Model
              when 'ChildModel'
                NovacastSDK::Rspec::Model
              else
                nil
            end
          end
        end.to raise_error.with_message(/Invalid model class for 'UnknownBaseModel'/)
      end

      it 'raises exception when child model not found' do
        target = { child: { name: 'child name' } }
        expect do
          NovacastSDK::Utils.type_check target, 'BaseModel' do |model_name|
            case model_name
              when 'BaseModel'
                NovacastSDK::Rspec::Model
              when 'ChildModel'
                nil
              else
                nil
            end
          end
        end.to raise_error.with_message(/Invalid model class for 'ChildModel'/)
      end
    end
  end

  context 'with non-primitive array type' do
    before :example do
      allow(NovacastSDK::Rspec::Model).to receive(:model_properties).and_return(
          :'name' => { base_name: 'name', type: 'String', required: true }
      )
    end

    it 'returns nil when all items are of the model type' do
      target = [
        { name: 'name 1' },
        { name: 'name 2' }
      ]
      result = NovacastSDK::Utils.type_check target, 'Array[Model]' do
        NovacastSDK::Rspec::Model
      end
      expect(result).to be_nil
    end

    it 'returns a error diff' do
      target = [
          { name: 'name 1' },
          { info: 'info 1' }
      ]
      result = NovacastSDK::Utils.type_check target, 'Array[Model]' do
        NovacastSDK::Rspec::Model
      end
      expect(result).to match([nil, { name: :missing, info: :not_allowed }])
    end
  end
end