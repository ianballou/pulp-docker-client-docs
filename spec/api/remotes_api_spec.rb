=begin
#Pulp 3 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for PulpDockerClient::RemotesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RemotesApi' do
  before do
    # run before each test
    @api_instance = PulpDockerClient::RemotesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RemotesApi' do
    it 'should create an instance of RemotesApi' do
      expect(@api_instance).to be_instance_of(PulpDockerClient::RemotesApi)
    end
  end

  # unit tests for remotes_docker_docker_create
  # Create a docker remote
  # A ViewSet for DockerRemote.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [DockerRemote]
  describe 'remotes_docker_docker_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remotes_docker_docker_delete
  # Delete a docker remote
  # Trigger an asynchronous delete task
  # @param docker_remote_href URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'remotes_docker_docker_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remotes_docker_docker_list
  # List docker remotes
  # A ViewSet for DockerRemote.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name 
  # @option opts [String] :name__in Filter results where name is in a comma-separated list of values
  # @option opts [String] :_last_updated__lt Filter results where _last_updated is less than value
  # @option opts [String] :_last_updated__lte Filter results where _last_updated is less than or equal to value
  # @option opts [String] :_last_updated__gt Filter results where _last_updated is greater than value
  # @option opts [String] :_last_updated__gte Filter results where _last_updated is greater than or equal to value
  # @option opts [String] :_last_updated__range Filter results where _last_updated is between two comma separated values
  # @option opts [String] :_last_updated ISO 8601 formatted dates are supported
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @return [InlineResponse2006]
  describe 'remotes_docker_docker_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remotes_docker_docker_partial_update
  # Partially update a docker remote
  # Trigger an asynchronous partial update task
  # @param docker_remote_href URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'remotes_docker_docker_partial_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remotes_docker_docker_read
  # Inspect a docker remote
  # A ViewSet for DockerRemote.
  # @param docker_remote_href URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/
  # @param [Hash] opts the optional parameters
  # @return [DockerRemote]
  describe 'remotes_docker_docker_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remotes_docker_docker_sync
  # Trigger an asynchronous task to sync content
  # @param docker_remote_href URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'remotes_docker_docker_sync test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remotes_docker_docker_update
  # Update a docker remote
  # Trigger an asynchronous update task
  # @param docker_remote_href URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AsyncOperationResponse]
  describe 'remotes_docker_docker_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
