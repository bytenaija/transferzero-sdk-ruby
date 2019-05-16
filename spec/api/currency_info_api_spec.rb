=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'

# Unit tests for TransferZero::CurrencyInfoApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CurrencyInfoApi' do
  before do
    # run before each test
    @api_instance = TransferZero::CurrencyInfoApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CurrencyInfoApi' do
    it 'should create an instance of CurrencyInfoApi' do
      expect(@api_instance).to be_instance_of(TransferZero::CurrencyInfoApi)
    end
  end

  # unit tests for info_currencies
  # Getting a list of possible requested currencies
  # Fetches a list of currencies available to use in other API requests. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier.
  # @param [Hash] opts the optional parameters
  # @return [CurrencyListResponse]
  describe 'info_currencies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for info_currencies_in
  # Getting a list of possible input currencies
  # Fetches a list of currencies available to use as the input currency in other API requests. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier. Use this endpoint to determine the current exchange rate from a specific input currency to any output currency that&#39;s available. 
  # @param [Hash] opts the optional parameters
  # @return [CurrencyExchangeListResponse]
  describe 'info_currencies_in test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for info_currencies_out
  # Getting a list of possible output currencies
  # Fetches a list of currencies available to use as the output currency and their exchange rates against the available input currencies. Usually the 3-character alpha ISO 4217 currency code (eg. USD) is used as the identifier. 
  # @param [Hash] opts the optional parameters
  # @return [CurrencyExchangeListResponse]
  describe 'info_currencies_out test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end