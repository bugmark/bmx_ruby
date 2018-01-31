=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require "uri"

module BmxApiRuby
  class ReposApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all repos
    # List all repos
    # @param [Hash] opts the optional parameters
    # @return [Array<RepoOverview>]
    def get_repos(opts = {})
      data, _status_code, _headers = get_repos_with_http_info(opts)
      return data
    end

    # List all repos
    # List all repos
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RepoOverview>, Fixnum, Hash)>] Array<RepoOverview> data, response status code and response headers
    def get_repos_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReposApi.get_repos ..."
      end
      # resource path
      local_var_path = "/repos"

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<RepoOverview>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReposApi#get_repos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show repo detail
    # Show repo detail
    # @param uuid repo UUID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :issues include issues
    # @return [RepoDetail]
    def get_repos_uuid(uuid, opts = {})
      data, _status_code, _headers = get_repos_uuid_with_http_info(uuid, opts)
      return data
    end

    # Show repo detail
    # Show repo detail
    # @param uuid repo UUID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :issues include issues
    # @return [Array<(RepoDetail, Fixnum, Hash)>] RepoDetail data, response status code and response headers
    def get_repos_uuid_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReposApi.get_repos_uuid ..."
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ReposApi.get_repos_uuid"
      end
      # resource path
      local_var_path = "/repos/{uuid}".sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}
      query_params[:'issues'] = opts[:'issues'] if !opts[:'issues'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RepoDetail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReposApi#get_repos_uuid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a repo
    # Create a GitHub repo. 
    # @param name repo name
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :sync sync on create
    # @return [RepoOverview]
    def post_repos(name, opts = {})
      data, _status_code, _headers = post_repos_with_http_info(name, opts)
      return data
    end

    # Create a repo
    # Create a GitHub repo. 
    # @param name repo name
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :sync sync on create
    # @return [Array<(RepoOverview, Fixnum, Hash)>] RepoOverview data, response status code and response headers
    def post_repos_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReposApi.post_repos ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ReposApi.post_repos"
      end
      # resource path
      local_var_path = "/repos"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["name"] = name
      form_params["sync"] = opts[:'sync'] if !opts[:'sync'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RepoOverview')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReposApi#post_repos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sync a repo
    # Sync a GitHub repo. 
    # @param uuid repo uuid
    # @param [Hash] opts the optional parameters
    # @return [Status]
    def put_repos(uuid, opts = {})
      data, _status_code, _headers = put_repos_with_http_info(uuid, opts)
      return data
    end

    # Sync a repo
    # Sync a GitHub repo. 
    # @param uuid repo uuid
    # @param [Hash] opts the optional parameters
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def put_repos_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReposApi.put_repos ..."
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ReposApi.put_repos"
      end
      # resource path
      local_var_path = "/repos"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["uuid"] = uuid

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Status')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReposApi#put_repos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
