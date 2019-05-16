=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'uri'

module TransferZero
  class DocumentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Fetching a document
    # Returns a single document by the Documents ID
    # @param document_id ID of the document to get.  Example: &#x60;/v1/documents/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param [Hash] opts the optional parameters
    # @return [DocumentResponse]
    def get_document(document_id, opts = {})
      data, _status_code, _headers = get_document_with_http_info(document_id, opts)
      data
    end

    # Fetching a document
    # Returns a single document by the Documents ID
    # @param document_id ID of the document to get.  Example: &#x60;/v1/documents/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def get_document_with_http_info(document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentsApi.get_document ...'
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling DocumentsApi.get_document"
      end
      # resource path
      local_var_path = '/documents/{Document ID}'.sub('{' + 'Document ID' + '}', document_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    def get_documents_all(opts = {})
      result = []
      response = get_documents(opts)
      result += response["object"]
      while next_page = response["meta"]["pagination"]["next_page"]
        response = get_documents(opts.merge(page: next_page))
        result += response["object"]
      end
      result
    end

    # Getting a list of documents
    # Fetches a list of documents.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @return [DocumentListResponse]
    def get_documents(opts = {})
      data, _status_code, _headers = get_documents_with_http_info(opts)
      data
    end

    # Getting a list of documents
    # Fetches a list of documents.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page number to request (defaults to 1)
    # @option opts [Integer] :per The number of results to load per page (defaults to 10)
    # @return [Array<(DocumentListResponse, Fixnum, Hash)>] DocumentListResponse data, response status code and response headers
    def get_documents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentsApi.get_documents ...'
      end
      # resource path
      local_var_path = '/documents'

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per'] = opts[:'per'] if !opts[:'per'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#get_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Creating a document
    # Creates a new document
    # @param document_request 
    # @param [Hash] opts the optional parameters
    # @return [DocumentResponse]
    def post_documents(document_request, opts = {})
      data, _status_code, _headers = post_documents_with_http_info(document_request, opts)
      data
    end

    # Creating a document
    # Creates a new document
    # @param document_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_documents_with_http_info(document_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentsApi.post_documents ...'
      end
      # verify the required parameter 'document_request' is set
      if @api_client.config.client_side_validation && document_request.nil?
        fail ArgumentError, "Missing the required parameter 'document_request' when calling DocumentsApi.post_documents"
      end
      # resource path
      local_var_path = '/documents'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(document_request)
      auth_names = ['AuthorizationKey', 'AuthorizationNonce', 'AuthorizationSecret', 'AuthorizationSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#post_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end