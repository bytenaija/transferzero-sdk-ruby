=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'

# Unit tests for TransferZero::DocumentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DocumentsApi' do
  before do
    # run before each test
    @api_instance = TransferZero::DocumentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DocumentsApi' do
    it 'should create an instance of DocumentsApi' do
      expect(@api_instance).to be_instance_of(TransferZero::DocumentsApi)
    end
  end

  # unit tests for delete_document
  # Deleting a document
  # Deletes a single document by the Document ID
  # @param document_id ID of the document to delete.  Example: &#x60;/v1/document/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sender_id Allows filtering results by &#x60;sender_id&#x60;.  Example: &#x60;/v1/transactions?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60;
  # @return [DocumentResponse]
  describe 'delete_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_document
  # Fetching a document
  # Returns a single document by the Documents ID
  # @param document_id ID of the document to get.  Example: &#x60;/v1/documents/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sender_id Allows filtering results by &#x60;sender_id&#x60;.  Example: &#x60;/v1/transactions?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60;
  # @return [DocumentResponse]
  describe 'get_document test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_documents
  # Getting a list of documents
  # Fetches a list of documents.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page number to request (defaults to 1)
  # @option opts [Integer] :per The number of results to load per page (defaults to 10)
  # @option opts [String] :sender_id Allows filtering results by &#x60;sender_id&#x60;.  Example: &#x60;/v1/transactions?sender_id&#x3D;b41d3cb7-6c54-4245-85fc-8e30690eb0f7&#x60;
  # @return [DocumentListResponse]
  describe 'get_documents test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_documents
  # Creating a document
  # Creates a new document
  # @param document_request 
  # @param [Hash] opts the optional parameters
  # @return [DocumentResponse]
  describe 'post_documents test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
