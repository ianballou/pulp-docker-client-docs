# PulpDockerClient::ContentApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**content_docker_blobs_create**](ContentApi.md#content_docker_blobs_create) | **POST** /pulp/api/v3/content/docker/blobs/ | Create a manifest blob
[**content_docker_blobs_list**](ContentApi.md#content_docker_blobs_list) | **GET** /pulp/api/v3/content/docker/blobs/ | List manifest blobs
[**content_docker_blobs_read**](ContentApi.md#content_docker_blobs_read) | **GET** {manifest_blob_href} | Inspect a manifest blob
[**content_docker_manifest_list_tags_create**](ContentApi.md#content_docker_manifest_list_tags_create) | **POST** /pulp/api/v3/content/docker/manifest-list-tags/ | Create a manifest list tag
[**content_docker_manifest_list_tags_list**](ContentApi.md#content_docker_manifest_list_tags_list) | **GET** /pulp/api/v3/content/docker/manifest-list-tags/ | List manifest list tags
[**content_docker_manifest_list_tags_read**](ContentApi.md#content_docker_manifest_list_tags_read) | **GET** {manifest_list_tag_href} | Inspect a manifest list tag
[**content_docker_manifest_lists_create**](ContentApi.md#content_docker_manifest_lists_create) | **POST** /pulp/api/v3/content/docker/manifest-lists/ | Create a manifest list
[**content_docker_manifest_lists_list**](ContentApi.md#content_docker_manifest_lists_list) | **GET** /pulp/api/v3/content/docker/manifest-lists/ | List manifest lists
[**content_docker_manifest_lists_read**](ContentApi.md#content_docker_manifest_lists_read) | **GET** {manifest_list_href} | Inspect a manifest list
[**content_docker_manifest_tags_create**](ContentApi.md#content_docker_manifest_tags_create) | **POST** /pulp/api/v3/content/docker/manifest-tags/ | Create a manifest tag
[**content_docker_manifest_tags_list**](ContentApi.md#content_docker_manifest_tags_list) | **GET** /pulp/api/v3/content/docker/manifest-tags/ | List manifest tags
[**content_docker_manifest_tags_read**](ContentApi.md#content_docker_manifest_tags_read) | **GET** {manifest_tag_href} | Inspect a manifest tag
[**content_docker_manifests_create**](ContentApi.md#content_docker_manifests_create) | **POST** /pulp/api/v3/content/docker/manifests/ | Create an image manifest
[**content_docker_manifests_list**](ContentApi.md#content_docker_manifests_list) | **GET** /pulp/api/v3/content/docker/manifests/ | List image manifests
[**content_docker_manifests_read**](ContentApi.md#content_docker_manifests_read) | **GET** {image_manifest_href} | Inspect an image manifest



## content_docker_blobs_create

> Blob content_docker_blobs_create(data)

Create a manifest blob

Create a new ManifestBlob from a request.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
data = PulpDockerClient::Blob.new # Blob | 

begin
  #Create a manifest blob
  result = api_instance.content_docker_blobs_create(data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_blobs_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Blob**](Blob.md)|  | 

### Return type

[**Blob**](Blob.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## content_docker_blobs_list

> InlineResponse200 content_docker_blobs_list(opts)

List manifest blobs

ViewSet for ManifestBlobs.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
opts = {
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  page: 56, # Integer | A page number within the paginated result set.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  #List manifest blobs
  result = api_instance.content_docker_blobs_list(opts)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_blobs_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## content_docker_blobs_read

> Blob content_docker_blobs_read(manifest_blob_href)

Inspect a manifest blob

ViewSet for ManifestBlobs.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
manifest_blob_href = 'manifest_blob_href_example' # String | URI of Manifest Blob. e.g.: /pulp/api/v3/content/docker/blobs/1/

begin
  #Inspect a manifest blob
  result = api_instance.content_docker_blobs_read(manifest_blob_href)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_blobs_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifest_blob_href** | **String**| URI of Manifest Blob. e.g.: /pulp/api/v3/content/docker/blobs/1/ | 

### Return type

[**Blob**](Blob.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## content_docker_manifest_list_tags_create

> ManifestListTag content_docker_manifest_list_tags_create(data)

Create a manifest list tag

Create a new ManifestListTag from a request.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
data = PulpDockerClient::ManifestListTag.new # ManifestListTag | 

begin
  #Create a manifest list tag
  result = api_instance.content_docker_manifest_list_tags_create(data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifest_list_tags_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ManifestListTag**](ManifestListTag.md)|  | 

### Return type

[**ManifestListTag**](ManifestListTag.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## content_docker_manifest_list_tags_list

> InlineResponse2001 content_docker_manifest_list_tags_list(opts)

List manifest list tags

ViewSet for ManifestListTag.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
opts = {
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  page: 56, # Integer | A page number within the paginated result set.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  #List manifest list tags
  result = api_instance.content_docker_manifest_list_tags_list(opts)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifest_list_tags_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## content_docker_manifest_list_tags_read

> ManifestListTag content_docker_manifest_list_tags_read(manifest_list_tag_href)

Inspect a manifest list tag

ViewSet for ManifestListTag.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
manifest_list_tag_href = 'manifest_list_tag_href_example' # String | URI of Manifest List Tag. e.g.: /pulp/api/v3/content/docker/manifest-list-tags/1/

begin
  #Inspect a manifest list tag
  result = api_instance.content_docker_manifest_list_tags_read(manifest_list_tag_href)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifest_list_tags_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifest_list_tag_href** | **String**| URI of Manifest List Tag. e.g.: /pulp/api/v3/content/docker/manifest-list-tags/1/ | 

### Return type

[**ManifestListTag**](ManifestListTag.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## content_docker_manifest_lists_create

> ManifestList content_docker_manifest_lists_create(data)

Create a manifest list

Create a new ManifestList from a request.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
data = PulpDockerClient::ManifestList.new # ManifestList | 

begin
  #Create a manifest list
  result = api_instance.content_docker_manifest_lists_create(data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifest_lists_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ManifestList**](ManifestList.md)|  | 

### Return type

[**ManifestList**](ManifestList.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## content_docker_manifest_lists_list

> InlineResponse2002 content_docker_manifest_lists_list(opts)

List manifest lists

ViewSet for ManifestList.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
opts = {
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  page: 56, # Integer | A page number within the paginated result set.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  #List manifest lists
  result = api_instance.content_docker_manifest_lists_list(opts)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifest_lists_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## content_docker_manifest_lists_read

> ManifestList content_docker_manifest_lists_read(manifest_list_href)

Inspect a manifest list

ViewSet for ManifestList.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
manifest_list_href = 'manifest_list_href_example' # String | URI of Manifest List. e.g.: /pulp/api/v3/content/docker/manifest-lists/1/

begin
  #Inspect a manifest list
  result = api_instance.content_docker_manifest_lists_read(manifest_list_href)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifest_lists_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifest_list_href** | **String**| URI of Manifest List. e.g.: /pulp/api/v3/content/docker/manifest-lists/1/ | 

### Return type

[**ManifestList**](ManifestList.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## content_docker_manifest_tags_create

> ManifestTag content_docker_manifest_tags_create(data)

Create a manifest tag

Create a new ManifestTag from a request.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
data = PulpDockerClient::ManifestTag.new # ManifestTag | 

begin
  #Create a manifest tag
  result = api_instance.content_docker_manifest_tags_create(data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifest_tags_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ManifestTag**](ManifestTag.md)|  | 

### Return type

[**ManifestTag**](ManifestTag.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## content_docker_manifest_tags_list

> InlineResponse2003 content_docker_manifest_tags_list(opts)

List manifest tags

ViewSet for ManifestTag.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
opts = {
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  page: 56, # Integer | A page number within the paginated result set.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  #List manifest tags
  result = api_instance.content_docker_manifest_tags_list(opts)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifest_tags_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## content_docker_manifest_tags_read

> ManifestTag content_docker_manifest_tags_read(manifest_tag_href)

Inspect a manifest tag

ViewSet for ManifestTag.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
manifest_tag_href = 'manifest_tag_href_example' # String | URI of Manifest Tag. e.g.: /pulp/api/v3/content/docker/manifest-tags/1/

begin
  #Inspect a manifest tag
  result = api_instance.content_docker_manifest_tags_read(manifest_tag_href)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifest_tags_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifest_tag_href** | **String**| URI of Manifest Tag. e.g.: /pulp/api/v3/content/docker/manifest-tags/1/ | 

### Return type

[**ManifestTag**](ManifestTag.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## content_docker_manifests_create

> Manifest content_docker_manifests_create(data)

Create an image manifest

Create a new Manifest from a request.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
data = PulpDockerClient::Manifest.new # Manifest | 

begin
  #Create an image manifest
  result = api_instance.content_docker_manifests_create(data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifests_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Manifest**](Manifest.md)|  | 

### Return type

[**Manifest**](Manifest.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## content_docker_manifests_list

> InlineResponse2004 content_docker_manifests_list(opts)

List image manifests

ViewSet for Manifest.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
opts = {
  repository_version: 'repository_version_example', # String | Repository Version referenced by HREF
  repository_version_added: 'repository_version_added_example', # String | Repository Version referenced by HREF
  repository_version_removed: 'repository_version_removed_example', # String | Repository Version referenced by HREF
  page: 56, # Integer | A page number within the paginated result set.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  #List image manifests
  result = api_instance.content_docker_manifests_list(opts)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifests_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_version** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_added** | **String**| Repository Version referenced by HREF | [optional] 
 **repository_version_removed** | **String**| Repository Version referenced by HREF | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## content_docker_manifests_read

> Manifest content_docker_manifests_read(image_manifest_href)

Inspect an image manifest

ViewSet for Manifest.

### Example

```ruby
# load the gem
require 'pulp_docker_client'
# setup authorization
PulpDockerClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PulpDockerClient::ContentApi.new
image_manifest_href = 'image_manifest_href_example' # String | URI of Image Manifest. e.g.: /pulp/api/v3/content/docker/manifests/1/

begin
  #Inspect an image manifest
  result = api_instance.content_docker_manifests_read(image_manifest_href)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling ContentApi->content_docker_manifests_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_manifest_href** | **String**| URI of Image Manifest. e.g.: /pulp/api/v3/content/docker/manifests/1/ | 

### Return type

[**Manifest**](Manifest.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

