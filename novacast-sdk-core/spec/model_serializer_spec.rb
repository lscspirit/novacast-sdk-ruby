require 'spec_helper'

class TestModel
  def attr_1
    'value_1'
  end
end

class TestSerializer < NovacastSDK::ModelSerializer
  def attr_1
    "serializer_#{@model.attr_1}"
  end

  def other_attr_1
    'other_value_1'
  end
end

RSpec.describe 'ModelSerializer' do
  context 'with object' do
    subject { NovacastSDK::ModelSerializer.new obj }
    let(:obj) { TestModel.new }

    it 'returns attribute value through method call' do
      expect(subject.attr_1).to eq(obj.attr_1)
    end

    it 'returns attribute value through []' do
      expect(subject['attr_1']).to eq(obj.attr_1)
    end

    it 'returns attribute value through [] (symbol)' do
      expect(subject[:attr_1]).to eq(obj.attr_1)
    end

    it 'raises error if attribute does not exists (through method call)' do
      expect{ subject.attr_2 }.to raise_error(RuntimeError, 'invalid attribute \'attr_2\' on model')
    end

    it 'raises error if attribute does not exists (through [])' do
      expect{ subject['attr_2'] }.to raise_error(RuntimeError, 'invalid attribute \'attr_2\' on model')
    end

    it 'raises error if attribute does not exists (through [] symbol)' do
      expect{ subject[:attr_2] }.to raise_error(RuntimeError, 'invalid attribute \'attr_2\' on model')
    end
  end

  context 'with hash (symbol key)' do
    subject { NovacastSDK::ModelSerializer.new obj }
    let(:obj) { { attr_1: 'value_1' } }

    it 'returns attribute value through method call' do
      expect(subject.attr_1).to eq(obj[:attr_1])
    end

    it 'returns attribute value through []' do
      expect(subject['attr_1']).to eq(obj[:attr_1])
    end

    it 'returns attribute value through [] (symbol)' do
      expect(subject[:attr_1]).to eq(obj[:attr_1])
    end

    it 'raises error if attribute does not exists (through method call)' do
      expect{ subject.attr_2 }.to raise_error(RuntimeError, 'invalid attribute \'attr_2\' on model')
    end

    it 'raises error if attribute does not exists (through [])' do
      expect{ subject['attr_2'] }.to raise_error(RuntimeError, 'invalid attribute \'attr_2\' on model')
    end

    it 'raises error if attribute does not exists (through [] symbol)' do
      expect{ subject[:attr_2] }.to raise_error(RuntimeError, 'invalid attribute \'attr_2\' on model')
    end
  end

  context 'with hash (string key)' do
    subject { NovacastSDK::ModelSerializer.new obj }
    let(:obj) { { 'attr_1' => 'value_1' } }

    it 'returns attribute value through method call' do
      expect(subject.attr_1).to eq(obj['attr_1'])
    end

    it 'returns attribute value through []' do
      expect(subject['attr_1']).to eq(obj['attr_1'])
    end

    it 'returns attribute value through [] (symbol)' do
      expect(subject[:attr_1]).to eq(obj['attr_1'])
    end

    it 'raises error if attribute does not exists (through method call)' do
      expect{ subject.attr_2 }.to raise_error(RuntimeError, 'invalid attribute \'attr_2\' on model')
    end

    it 'raises error if attribute does not exists (through [])' do
      expect{ subject['attr_2'] }.to raise_error(RuntimeError, 'invalid attribute \'attr_2\' on model')
    end

    it 'raises error if attribute does not exists (through [] symbol)' do
      expect{ subject[:attr_2] }.to raise_error(RuntimeError, 'invalid attribute \'attr_2\' on model')
    end
  end

  context 'with additional attribute in serializer' do
    subject { TestSerializer.new obj }
    let(:obj) { TestModel.new }

    it 'returns the additional attribute value through method call' do
      expect(subject.other_attr_1).to eq('other_value_1')
    end

    it 'returns the additional attribute value through []' do
      expect(subject['other_attr_1']).to eq('other_value_1')
    end

    it 'returns the additional attribute value through [] (symbol)' do
      expect(subject[:other_attr_1]).to eq('other_value_1')
    end
  end

  context 'with attribute override in serializer' do
    subject { TestSerializer.new obj }
    let(:obj) { TestModel.new }

    it 'returns the overridden value through method call' do
      expect(subject.attr_1).to eq("serializer_#{obj.attr_1}")
    end

    it 'returns the overridden value through []' do
      expect(subject['attr_1']).to eq("serializer_#{obj.attr_1}")
    end

    it 'returns the overridden value through [] (symbol)' do
      expect(subject[:attr_1]).to eq("serializer_#{obj.attr_1}")
    end
  end

  context 'with options' do
    subject { TestSerializer.new obj, opt_1: 'option_1' }
    let(:obj) { TestModel.new }

    it 'sets the option in the @opts instance variable' do
      expect(subject.instance_variable_get(:@opts)).to eq({ opt_1: 'option_1' })
    end
  end
end