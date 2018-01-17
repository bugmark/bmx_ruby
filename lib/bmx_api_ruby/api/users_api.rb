=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require "uri"

module BmxApiRuby
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all users
    # List all users
    # @param [Hash] opts the optional parameters
    # @return [Array<UserOverview>]
    def get_users(opts = {})
      data, _status_code, _headers = get_users_with_http_info(opts)
      return data
    end

    # List all users
    # List all users
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<UserOverview>, Fixnum, Hash)>] Array<UserOverview> data, response status code and response headers
    def get_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.get_users ..."
      end
      # resource path
      local_var_path = "/users"

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
        :return_type => 'Array<UserOverview>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show user detail
    # Show user detail
    # @param usermail 
    # @param [Hash] opts the optional parameters
    # @return [UserDetail]
    def get_users_usermail(usermail, opts = {})
      data, _status_code, _headers = get_users_usermail_with_http_info(usermail, opts)
      return data
    end

    # Show user detail
    # Show user detail
    # @param usermail 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserDetail, Fixnum, Hash)>] UserDetail data, response status code and response headers
    def get_users_usermail_with_http_info(usermail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.get_users_usermail ..."
      end
      # verify the required parameter 'usermail' is set
      if @api_client.config.client_side_validation && usermail.nil?
        fail ArgumentError, "Missing the required parameter 'usermail' when calling UsersApi.get_users_usermail"
      end
      # resource path
      local_var_path = "/users/{usermail}".sub('{' + 'usermail' + '}', usermail.to_s)

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
        :return_type => 'UserDetail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_users_usermail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a user
    # Create a user
    # @param usermail 
    # @param password 
    # @param [Hash] opts the optional parameters
    # @return [Status]
    def post_users(usermail, password, opts = {})
      data, _status_code, _headers = post_users_with_http_info(usermail, password, opts)
      return data
    end

    # Create a user
    # Create a user
    # @param usermail 
    # @param password 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def post_users_with_http_info(usermail, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.post_users ..."
      end
      # verify the required parameter 'usermail' is set
      if @api_client.config.client_side_validation && usermail.nil?
        fail ArgumentError, "Missing the required parameter 'usermail' when calling UsersApi.post_users"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling UsersApi.post_users"
      end
      # resource path
      local_var_path = "/users"

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
      form_params["usermail"] = usermail
      form_params["password"] = password

      # http body (model)
      post_body = nil
      auth_names = ['base']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Status')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#post_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deposit funds
    # Deposit funds
    # @param amount 
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [Status]
    def put_users_uuid_deposit(amount, uuid, opts = {})
      data, _status_code, _headers = put_users_uuid_deposit_with_http_info(amount, uuid, opts)
      return data
    end

    # Deposit funds
    # Deposit funds
    # @param amount 
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def put_users_uuid_deposit_with_http_info(amount, uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.put_users_uuid_deposit ..."
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling UsersApi.put_users_uuid_deposit"
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling UsersApi.put_users_uuid_deposit"
      end
      # resource path
      local_var_path = "/users/{uuid}/deposit".sub('{' + 'uuid' + '}', uuid.to_s)

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
      form_params["amount"] = amount

      # http body (model)
      post_body = nil
      auth_names = ['base']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Status')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#put_users_uuid_deposit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Withdraw funds
    # Withdraw funds
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def put_users_uuid_withdraw(uuid, opts = {})
      put_users_uuid_withdraw_with_http_info(uuid, opts)
      return nil
    end

    # Withdraw funds
    # Withdraw funds
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_users_uuid_withdraw_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.put_users_uuid_withdraw ..."
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling UsersApi.put_users_uuid_withdraw"
      end
      # resource path
      local_var_path = "/users/{uuid}/withdraw".sub('{' + 'uuid' + '}', uuid.to_s)

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
      post_body = nil
      auth_names = ['base']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#put_users_uuid_withdraw\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
