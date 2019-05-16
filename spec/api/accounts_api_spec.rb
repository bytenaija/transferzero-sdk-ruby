=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'

# Unit tests for TransferZero::AccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @api_instance = TransferZero::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@api_instance).to be_instance_of(TransferZero::AccountsApi)
    end
  end

  # unit tests for get_account
  # Fetches account balance for specified currrency
  # Fetches account balance for specified currrency, and returns current balance and associated currency code
  # @param currency Currency code of account balance to fetch  Example: &#x60;/v1/accounts/USD&#x60;
  # @param [Hash] opts the optional parameters
  # @return [AccountResponse]
  describe 'get_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_accounts
  # Fetches account balances for all currencies
  # Fetches account balances for all currencies, and returns an array of the current balances and associated currency codes.
  # @param [Hash] opts the optional parameters
  # @return [AccountListResponse]
  describe 'get_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end