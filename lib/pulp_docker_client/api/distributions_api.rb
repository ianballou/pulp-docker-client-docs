=begin
#Pulp 3 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'uri'

module PulpDockerClient
  class DistributionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a docker distribution
    # Trigger an asynchronous create task
    # @param data [DockerDistribution] 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def distributions_docker_docker_create(data, opts = {})
      data, _status_code, _headers = distributions_docker_docker_create_with_http_info(data, opts)
      data
    end

    # Create a docker distribution
    # Trigger an asynchronous create task
    # @param data [DockerDistribution] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Integer, Hash)>] AsyncOperationResponse data, response status code and response headers
    def distributions_docker_docker_create_with_http_info(data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsApi.distributions_docker_docker_create ...'
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling DistributionsApi.distributions_docker_docker_create"
      end
      # resource path
      local_var_path = '/pulp/api/v3/distributions/docker/docker/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(data) 

      # return_type
      return_type = opts[:return_type] || 'AsyncOperationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsApi#distributions_docker_docker_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a docker distribution
    # Trigger an asynchronous delete task
    # @param docker_distribution_href [String] URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def distributions_docker_docker_delete(docker_distribution_href, opts = {})
      data, _status_code, _headers = distributions_docker_docker_delete_with_http_info(docker_distribution_href, opts)
      data
    end

    # Delete a docker distribution
    # Trigger an asynchronous delete task
    # @param docker_distribution_href [String] URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Integer, Hash)>] AsyncOperationResponse data, response status code and response headers
    def distributions_docker_docker_delete_with_http_info(docker_distribution_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsApi.distributions_docker_docker_delete ...'
      end
      # verify the required parameter 'docker_distribution_href' is set
      if @api_client.config.client_side_validation && docker_distribution_href.nil?
        fail ArgumentError, "Missing the required parameter 'docker_distribution_href' when calling DistributionsApi.distributions_docker_docker_delete"
      end
      # resource path
      local_var_path = '{docker_distribution_href}'.sub('{' + 'docker_distribution_href' + '}', docker_distribution_href.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AsyncOperationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsApi#distributions_docker_docker_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List docker distributions
    # ViewSet for DockerDistribution model.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [String] :base_path 
    # @option opts [String] :base_path__contains Filter results where base_path contains value
    # @option opts [String] :base_path__icontains Filter results where base_path contains value
    # @option opts [String] :base_path__in Filter results where base_path is in a comma-separated list of values
    # @option opts [Integer] :page A page number within the paginated result set.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @return [InlineResponse2005]
    def distributions_docker_docker_list(opts = {})
      data, _status_code, _headers = distributions_docker_docker_list_with_http_info(opts)
      data
    end

    # List docker distributions
    # ViewSet for DockerDistribution model.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
    # @option opts [String] :base_path 
    # @option opts [String] :base_path__contains Filter results where base_path contains value
    # @option opts [String] :base_path__icontains Filter results where base_path contains value
    # @option opts [String] :base_path__in Filter results where base_path is in a comma-separated list of values
    # @option opts [Integer] :page A page number within the paginated result set.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def distributions_docker_docker_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsApi.distributions_docker_docker_list ...'
      end
      # resource path
      local_var_path = '/pulp/api/v3/distributions/docker/docker/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'name__in'] = opts[:'name__in'] if !opts[:'name__in'].nil?
      query_params[:'base_path'] = opts[:'base_path'] if !opts[:'base_path'].nil?
      query_params[:'base_path__contains'] = opts[:'base_path__contains'] if !opts[:'base_path__contains'].nil?
      query_params[:'base_path__icontains'] = opts[:'base_path__icontains'] if !opts[:'base_path__icontains'].nil?
      query_params[:'base_path__in'] = opts[:'base_path__in'] if !opts[:'base_path__in'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2005' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsApi#distributions_docker_docker_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partially update a docker distribution
    # Trigger an asynchronous partial update task
    # @param docker_distribution_href [String] URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
    # @param data [DockerDistribution] 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def distributions_docker_docker_partial_update(docker_distribution_href, data, opts = {})
      data, _status_code, _headers = distributions_docker_docker_partial_update_with_http_info(docker_distribution_href, data, opts)
      data
    end

    # Partially update a docker distribution
    # Trigger an asynchronous partial update task
    # @param docker_distribution_href [String] URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
    # @param data [DockerDistribution] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Integer, Hash)>] AsyncOperationResponse data, response status code and response headers
    def distributions_docker_docker_partial_update_with_http_info(docker_distribution_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsApi.distributions_docker_docker_partial_update ...'
      end
      # verify the required parameter 'docker_distribution_href' is set
      if @api_client.config.client_side_validation && docker_distribution_href.nil?
        fail ArgumentError, "Missing the required parameter 'docker_distribution_href' when calling DistributionsApi.distributions_docker_docker_partial_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling DistributionsApi.distributions_docker_docker_partial_update"
      end
      # resource path
      local_var_path = '{docker_distribution_href}'.sub('{' + 'docker_distribution_href' + '}', docker_distribution_href.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(data) 

      # return_type
      return_type = opts[:return_type] || 'AsyncOperationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsApi#distributions_docker_docker_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Inspect a docker distribution
    # ViewSet for DockerDistribution model.
    # @param docker_distribution_href [String] URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
    # @param [Hash] opts the optional parameters
    # @return [DockerDistribution]
    def distributions_docker_docker_read(docker_distribution_href, opts = {})
      data, _status_code, _headers = distributions_docker_docker_read_with_http_info(docker_distribution_href, opts)
      data
    end

    # Inspect a docker distribution
    # ViewSet for DockerDistribution model.
    # @param docker_distribution_href [String] URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DockerDistribution, Integer, Hash)>] DockerDistribution data, response status code and response headers
    def distributions_docker_docker_read_with_http_info(docker_distribution_href, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsApi.distributions_docker_docker_read ...'
      end
      # verify the required parameter 'docker_distribution_href' is set
      if @api_client.config.client_side_validation && docker_distribution_href.nil?
        fail ArgumentError, "Missing the required parameter 'docker_distribution_href' when calling DistributionsApi.distributions_docker_docker_read"
      end
      # resource path
      local_var_path = '{docker_distribution_href}'.sub('{' + 'docker_distribution_href' + '}', docker_distribution_href.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'DockerDistribution' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsApi#distributions_docker_docker_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a docker distribution
    # Trigger an asynchronous update task
    # @param docker_distribution_href [String] URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
    # @param data [DockerDistribution] 
    # @param [Hash] opts the optional parameters
    # @return [AsyncOperationResponse]
    def distributions_docker_docker_update(docker_distribution_href, data, opts = {})
      data, _status_code, _headers = distributions_docker_docker_update_with_http_info(docker_distribution_href, data, opts)
      data
    end

    # Update a docker distribution
    # Trigger an asynchronous update task
    # @param docker_distribution_href [String] URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
    # @param data [DockerDistribution] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncOperationResponse, Integer, Hash)>] AsyncOperationResponse data, response status code and response headers
    def distributions_docker_docker_update_with_http_info(docker_distribution_href, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionsApi.distributions_docker_docker_update ...'
      end
      # verify the required parameter 'docker_distribution_href' is set
      if @api_client.config.client_side_validation && docker_distribution_href.nil?
        fail ArgumentError, "Missing the required parameter 'docker_distribution_href' when calling DistributionsApi.distributions_docker_docker_update"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling DistributionsApi.distributions_docker_docker_update"
      end
      # resource path
      local_var_path = '{docker_distribution_href}'.sub('{' + 'docker_distribution_href' + '}', docker_distribution_href.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(data) 

      # return_type
      return_type = opts[:return_type] || 'AsyncOperationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionsApi#distributions_docker_docker_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
