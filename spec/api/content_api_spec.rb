=begin
#Pulp 3 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for PulpDockerClient::ContentApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContentApi' do
  before do
    # run before each test
    @api_instance = PulpDockerClient::ContentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentApi' do
    it 'should create an instance of ContentApi' do
      expect(@api_instance).to be_instance_of(PulpDockerClient::ContentApi)
    end
  end

  # unit tests for content_docker_blobs_create
  # Create a manifest blob
  # Create a new ManifestBlob from a request.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Blob]
  describe 'content_docker_blobs_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_blobs_list
  # List manifest blobs
  # ViewSet for ManifestBlobs.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :repository_version Repository Version referenced by HREF
  # @option opts [String] :repository_version_added Repository Version referenced by HREF
  # @option opts [String] :repository_version_removed Repository Version referenced by HREF
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @return [InlineResponse200]
  describe 'content_docker_blobs_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_blobs_read
  # Inspect a manifest blob
  # ViewSet for ManifestBlobs.
  # @param manifest_blob_href URI of Manifest Blob. e.g.: /pulp/api/v3/content/docker/blobs/1/
  # @param [Hash] opts the optional parameters
  # @return [Blob]
  describe 'content_docker_blobs_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifest_list_tags_create
  # Create a manifest list tag
  # Create a new ManifestListTag from a request.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [ManifestListTag]
  describe 'content_docker_manifest_list_tags_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifest_list_tags_list
  # List manifest list tags
  # ViewSet for ManifestListTag.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :repository_version Repository Version referenced by HREF
  # @option opts [String] :repository_version_added Repository Version referenced by HREF
  # @option opts [String] :repository_version_removed Repository Version referenced by HREF
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @return [InlineResponse2001]
  describe 'content_docker_manifest_list_tags_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifest_list_tags_read
  # Inspect a manifest list tag
  # ViewSet for ManifestListTag.
  # @param manifest_list_tag_href URI of Manifest List Tag. e.g.: /pulp/api/v3/content/docker/manifest-list-tags/1/
  # @param [Hash] opts the optional parameters
  # @return [ManifestListTag]
  describe 'content_docker_manifest_list_tags_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifest_lists_create
  # Create a manifest list
  # Create a new ManifestList from a request.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [ManifestList]
  describe 'content_docker_manifest_lists_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifest_lists_list
  # List manifest lists
  # ViewSet for ManifestList.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :repository_version Repository Version referenced by HREF
  # @option opts [String] :repository_version_added Repository Version referenced by HREF
  # @option opts [String] :repository_version_removed Repository Version referenced by HREF
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @return [InlineResponse2002]
  describe 'content_docker_manifest_lists_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifest_lists_read
  # Inspect a manifest list
  # ViewSet for ManifestList.
  # @param manifest_list_href URI of Manifest List. e.g.: /pulp/api/v3/content/docker/manifest-lists/1/
  # @param [Hash] opts the optional parameters
  # @return [ManifestList]
  describe 'content_docker_manifest_lists_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifest_tags_create
  # Create a manifest tag
  # Create a new ManifestTag from a request.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [ManifestTag]
  describe 'content_docker_manifest_tags_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifest_tags_list
  # List manifest tags
  # ViewSet for ManifestTag.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :repository_version Repository Version referenced by HREF
  # @option opts [String] :repository_version_added Repository Version referenced by HREF
  # @option opts [String] :repository_version_removed Repository Version referenced by HREF
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @return [InlineResponse2003]
  describe 'content_docker_manifest_tags_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifest_tags_read
  # Inspect a manifest tag
  # ViewSet for ManifestTag.
  # @param manifest_tag_href URI of Manifest Tag. e.g.: /pulp/api/v3/content/docker/manifest-tags/1/
  # @param [Hash] opts the optional parameters
  # @return [ManifestTag]
  describe 'content_docker_manifest_tags_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifests_create
  # Create an image manifest
  # Create a new Manifest from a request.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Manifest]
  describe 'content_docker_manifests_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifests_list
  # List image manifests
  # ViewSet for Manifest.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :repository_version Repository Version referenced by HREF
  # @option opts [String] :repository_version_added Repository Version referenced by HREF
  # @option opts [String] :repository_version_removed Repository Version referenced by HREF
  # @option opts [Integer] :page A page number within the paginated result set.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @return [InlineResponse2004]
  describe 'content_docker_manifests_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for content_docker_manifests_read
  # Inspect an image manifest
  # ViewSet for Manifest.
  # @param image_manifest_href URI of Image Manifest. e.g.: /pulp/api/v3/content/docker/manifests/1/
  # @param [Hash] opts the optional parameters
  # @return [Manifest]
  describe 'content_docker_manifests_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
