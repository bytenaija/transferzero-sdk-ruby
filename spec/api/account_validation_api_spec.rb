=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'

# Unit tests for TransferZero::AccountValidationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountValidationApi' do
  before do
    # run before each test
    @api_instance = TransferZero::AccountValidationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountValidationApi' do
    it 'should create an instance of AccountValidationApi' do
      expect(@api_instance).to be_instance_of(TransferZero::AccountValidationApi)
    end
  end

  # unit tests for post_account_validations
  # Validates the existence of a bank account
  # Validates the existence of a bank account and returns the associated customer name
  # @param account_validation_request 
  # @param [Hash] opts the optional parameters
  # @return [AccountValidationResponse]
  describe 'post_account_validations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end