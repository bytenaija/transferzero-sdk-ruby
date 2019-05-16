=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TransferZero::AccountValidationRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountValidationRequest' do
  before do
    # run before each test
    @instance = TransferZero::AccountValidationRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountValidationRequest' do
    it 'should create an instance of AccountValidationRequest' do
      expect(@instance).to be_instance_of(TransferZero::AccountValidationRequest)
    end
  end
  describe 'test attribute "bank_account"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "bank_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "country"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NG", "GH"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.country = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "currency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NGN", "GHS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.currency = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["bank"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.method = value }.not_to raise_error
      # end
    end
  end

end
