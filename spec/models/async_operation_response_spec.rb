=begin
#Pulp 3 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PulpDockerClient::AsyncOperationResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AsyncOperationResponse' do
  before do
    # run before each test
    @instance = PulpDockerClient::AsyncOperationResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AsyncOperationResponse' do
    it 'should create an instance of AsyncOperationResponse' do
      expect(@instance).to be_instance_of(PulpDockerClient::AsyncOperationResponse)
    end
  end
  describe 'test attribute "task"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end