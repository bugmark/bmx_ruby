=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require "uri"

module BmxApiRuby
  class HostApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # counts
    # Show host object counts: number of users, offers, contracts, etc. 
    # @param [Hash] opts the optional parameters
    # @return [HostCount]
    def get_host_counts(opts = {})
      data, _status_code, _headers = get_host_counts_with_http_info(opts)
      return data
    end

    # counts
    # Show host object counts: number of users, offers, contracts, etc. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(HostCount, Fixnum, Hash)>] HostCount data, response status code and response headers
    def get_host_counts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.get_host_counts ..."
      end
      # resource path
      local_var_path = "/host/counts"

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
        :return_type => 'HostCount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#get_host_counts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get host info
    # Show host info: host-time, day offset, datastore type, etc. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :strftime STRFTIME string for host_time
    # @return [HostInfo]
    def get_host_info(opts = {})
      data, _status_code, _headers = get_host_info_with_http_info(opts)
      return data
    end

    # get host info
    # Show host info: host-time, day offset, datastore type, etc. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :strftime STRFTIME string for host_time
    # @return [Array<(HostInfo, Fixnum, Hash)>] HostInfo data, response status code and response headers
    def get_host_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.get_host_info ..."
      end
      # resource path
      local_var_path = "/host/info"

      # query parameters
      query_params = {}
      query_params[:'strftime'] = opts[:'strftime'] if !opts[:'strftime'].nil?

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
        :return_type => 'HostInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#get_host_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # next week-ends
    # next week-ends
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 4)
    # @return [NextWeekEnds]
    def get_host_next_week_ends(opts = {})
      data, _status_code, _headers = get_host_next_week_ends_with_http_info(opts)
      return data
    end

    # next week-ends
    # next week-ends
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 4)
    # @return [Array<(NextWeekEnds, Fixnum, Hash)>] NextWeekEnds data, response status code and response headers
    def get_host_next_week_ends_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.get_host_next_week_ends ..."
      end
      # resource path
      local_var_path = "/host/next_week_ends"

      # query parameters
      query_params = {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

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
        :return_type => 'NextWeekEnds')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#get_host_next_week_ends\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # check server access
    # check server access
    # @param [Hash] opts the optional parameters
    # @return [Status]
    def get_host_ping(opts = {})
      data, _status_code, _headers = get_host_ping_with_http_info(opts)
      return data
    end

    # check server access
    # check server access
    # @param [Hash] opts the optional parameters
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def get_host_ping_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.get_host_ping ..."
      end
      # resource path
      local_var_path = "/host/ping"

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
        :return_type => 'Status')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#get_host_ping\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # rebuild
    # Destroy all data and rebuild the system. The rebuilt system  will have one user: `user/pass` = `admin@bugmark.net/bugmark`.  To run this command, you must post a confirmation parameter:  `/host/rebuild?confirm=destroy_all_data`  Optionally, you can use the 'with_day_offset' param to set the start  date for your system.  This can be used for simulations where you want to use historical data:  `host/rebuild?confirm=destroy_all_data&with_day_offset=-90`  The rebuild command is intended for use on hosts dedicated for  research and testing. (and not production!)  The rebuild command will work for hosts with `mutable` datastores, and will fail for hosts with `permanent` datastores.  View the datastore setting with the `/hosts/info` command. 
    # @param affirm confirmation
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :with_day_offset initial day offset
    # @return [Status]
    def post_host_rebuild(affirm, opts = {})
      data, _status_code, _headers = post_host_rebuild_with_http_info(affirm, opts)
      return data
    end

    # rebuild
    # Destroy all data and rebuild the system. The rebuilt system  will have one user: &#x60;user/pass&#x60; &#x3D; &#x60;admin@bugmark.net/bugmark&#x60;.  To run this command, you must post a confirmation parameter:  &#x60;/host/rebuild?confirm&#x3D;destroy_all_data&#x60;  Optionally, you can use the &#39;with_day_offset&#39; param to set the start  date for your system.  This can be used for simulations where you want to use historical data:  &#x60;host/rebuild?confirm&#x3D;destroy_all_data&amp;with_day_offset&#x3D;-90&#x60;  The rebuild command is intended for use on hosts dedicated for  research and testing. (and not production!)  The rebuild command will work for hosts with &#x60;mutable&#x60; datastores, and will fail for hosts with &#x60;permanent&#x60; datastores.  View the datastore setting with the &#x60;/hosts/info&#x60; command. 
    # @param affirm confirmation
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :with_day_offset initial day offset
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def post_host_rebuild_with_http_info(affirm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.post_host_rebuild ..."
      end
      # verify the required parameter 'affirm' is set
      if @api_client.config.client_side_validation && affirm.nil?
        fail ArgumentError, "Missing the required parameter 'affirm' when calling HostApi.post_host_rebuild"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['destroy_all_data'].include?(affirm)
        fail ArgumentError, "invalid value for 'affirm', must be one of destroy_all_data"
      end
      # resource path
      local_var_path = "/host/rebuild"

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
      form_params["affirm"] = affirm
      form_params["with_day_offset"] = opts[:'with_day_offset'] if !opts[:'with_day_offset'].nil?

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
        @api_client.config.logger.debug "API called: HostApi#post_host_rebuild\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # go past end-of-day
    # go past end-of-day
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Status]
    def put_host_go_past_end_of_day(opts = {})
      data, _status_code, _headers = put_host_go_past_end_of_day_with_http_info(opts)
      return data
    end

    # go past end-of-day
    # go past end-of-day
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def put_host_go_past_end_of_day_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.put_host_go_past_end_of_day ..."
      end
      # resource path
      local_var_path = "/host/go_past_end_of_day"

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
      form_params["count"] = opts[:'count'] if !opts[:'count'].nil?

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
        @api_client.config.logger.debug "API called: HostApi#put_host_go_past_end_of_day\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # go past end-of-month
    # go past end-of-month
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Status]
    def put_host_go_past_end_of_month(opts = {})
      data, _status_code, _headers = put_host_go_past_end_of_month_with_http_info(opts)
      return data
    end

    # go past end-of-month
    # go past end-of-month
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def put_host_go_past_end_of_month_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.put_host_go_past_end_of_month ..."
      end
      # resource path
      local_var_path = "/host/go_past_end_of_month"

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
      form_params["count"] = opts[:'count'] if !opts[:'count'].nil?

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
        @api_client.config.logger.debug "API called: HostApi#put_host_go_past_end_of_month\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # go past end-of-week
    # go past end-of-week
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Status]
    def put_host_go_past_end_of_week(opts = {})
      data, _status_code, _headers = put_host_go_past_end_of_week_with_http_info(opts)
      return data
    end

    # go past end-of-week
    # go past end-of-week
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def put_host_go_past_end_of_week_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.put_host_go_past_end_of_week ..."
      end
      # resource path
      local_var_path = "/host/go_past_end_of_week"

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
      form_params["count"] = opts[:'count'] if !opts[:'count'].nil?

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
        @api_client.config.logger.debug "API called: HostApi#put_host_go_past_end_of_week\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # increment day offset
    # increment day offset
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Status]
    def put_host_increment_day_offset(opts = {})
      data, _status_code, _headers = put_host_increment_day_offset_with_http_info(opts)
      return data
    end

    # increment day offset
    # increment day offset
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def put_host_increment_day_offset_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.put_host_increment_day_offset ..."
      end
      # resource path
      local_var_path = "/host/increment_day_offset"

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
      form_params["count"] = opts[:'count'] if !opts[:'count'].nil?

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
        @api_client.config.logger.debug "API called: HostApi#put_host_increment_day_offset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # increment hour offset
    # increment hour offset
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Status]
    def put_host_increment_hour_offset(opts = {})
      data, _status_code, _headers = put_host_increment_hour_offset_with_http_info(opts)
      return data
    end

    # increment hour offset
    # increment hour offset
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count count (default 1)
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def put_host_increment_hour_offset_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.put_host_increment_hour_offset ..."
      end
      # resource path
      local_var_path = "/host/increment_hour_offset"

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
      form_params["count"] = opts[:'count'] if !opts[:'count'].nil?

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
        @api_client.config.logger.debug "API called: HostApi#put_host_increment_hour_offset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # set current time
    # set current time
    # @param [Hash] opts the optional parameters
    # @return [Status]
    def put_host_set_current_time(opts = {})
      data, _status_code, _headers = put_host_set_current_time_with_http_info(opts)
      return data
    end

    # set current time
    # set current time
    # @param [Hash] opts the optional parameters
    # @return [Array<(Status, Fixnum, Hash)>] Status data, response status code and response headers
    def put_host_set_current_time_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: HostApi.put_host_set_current_time ..."
      end
      # resource path
      local_var_path = "/host/set_current_time"

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
        :auth_names => auth_names,
        :return_type => 'Status')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostApi#put_host_set_current_time\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
