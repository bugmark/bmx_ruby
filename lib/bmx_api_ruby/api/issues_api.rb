=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require "uri"

module BmxApiRuby
  class IssuesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all issues
    # List all issues
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit count limit
    # @return [Array<IssueOverview>]
    def get_issues(opts = {})
      data, _status_code, _headers = get_issues_with_http_info(opts)
      return data
    end

    # List all issues
    # List all issues
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit count limit
    # @return [Array<(Array<IssueOverview>, Fixnum, Hash)>] Array<IssueOverview> data, response status code and response headers
    def get_issues_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IssuesApi.get_issues ..."
      end
      # resource path
      local_var_path = "/issues"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['base']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<IssueOverview>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssuesApi#get_issues\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show issue detail
    # Show issue detail
    # @param issue_uuid issue uuid
    # @param [Hash] opts the optional parameters
    # @return [IssueDetail]
    def get_issues_issue_uuid(issue_uuid, opts = {})
      data, _status_code, _headers = get_issues_issue_uuid_with_http_info(issue_uuid, opts)
      return data
    end

    # Show issue detail
    # Show issue detail
    # @param issue_uuid issue uuid
    # @param [Hash] opts the optional parameters
    # @return [Array<(IssueDetail, Fixnum, Hash)>] IssueDetail data, response status code and response headers
    def get_issues_issue_uuid_with_http_info(issue_uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IssuesApi.get_issues_issue_uuid ..."
      end
      # verify the required parameter 'issue_uuid' is set
      if @api_client.config.client_side_validation && issue_uuid.nil?
        fail ArgumentError, "Missing the required parameter 'issue_uuid' when calling IssuesApi.get_issues_issue_uuid"
      end
      # resource path
      local_var_path = "/issues/{issue_uuid}".sub('{' + 'issue_uuid' + '}', issue_uuid.to_s)

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
      auth_names = ['base']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IssueDetail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssuesApi#get_issues_issue_uuid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sync
    # Sync
    # @param exid issue exid
    # @param type issue type
    # @param repo_uuid repo uuid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :issue_uuid issue uuid
    # @option opts [String] :title issue title
    # @option opts [String] :status issue status
    # @option opts [String] :labels TBD
    # @option opts [String] :xfields TBD
    # @option opts [String] :jfields TBD
    # @return [IssueDetail]
    def post_issues_exid(exid, type, repo_uuid, opts = {})
      data, _status_code, _headers = post_issues_exid_with_http_info(exid, type, repo_uuid, opts)
      return data
    end

    # Sync
    # Sync
    # @param exid issue exid
    # @param type issue type
    # @param repo_uuid repo uuid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :issue_uuid issue uuid
    # @option opts [String] :title issue title
    # @option opts [String] :status issue status
    # @option opts [String] :labels TBD
    # @option opts [String] :xfields TBD
    # @option opts [String] :jfields TBD
    # @return [Array<(IssueDetail, Fixnum, Hash)>] IssueDetail data, response status code and response headers
    def post_issues_exid_with_http_info(exid, type, repo_uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IssuesApi.post_issues_exid ..."
      end
      # verify the required parameter 'exid' is set
      if @api_client.config.client_side_validation && exid.nil?
        fail ArgumentError, "Missing the required parameter 'exid' when calling IssuesApi.post_issues_exid"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling IssuesApi.post_issues_exid"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Test', 'GitHub'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of Test, GitHub"
      end
      # verify the required parameter 'repo_uuid' is set
      if @api_client.config.client_side_validation && repo_uuid.nil?
        fail ArgumentError, "Missing the required parameter 'repo_uuid' when calling IssuesApi.post_issues_exid"
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['open', 'closed'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of open, closed'
      end
      # resource path
      local_var_path = "/issues/{exid}".sub('{' + 'exid' + '}', exid.to_s)

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
      form_params["type"] = type
      form_params["repo_uuid"] = repo_uuid
      form_params["issue_uuid"] = opts[:'issue_uuid'] if !opts[:'issue_uuid'].nil?
      form_params["title"] = opts[:'title'] if !opts[:'title'].nil?
      form_params["status"] = opts[:'status'] if !opts[:'status'].nil?
      form_params["labels"] = opts[:'labels'] if !opts[:'labels'].nil?
      form_params["xfields"] = opts[:'xfields'] if !opts[:'xfields'].nil?
      form_params["jfields"] = opts[:'jfields'] if !opts[:'jfields'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['base']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IssueDetail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssuesApi#post_issues_exid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
