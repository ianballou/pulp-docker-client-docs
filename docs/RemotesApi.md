# PulpDockerClient::RemotesApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**remotes_docker_docker_create**](RemotesApi.md#remotes_docker_docker_create) | **POST** /pulp/api/v3/remotes/docker/docker/ | Create a docker remote
[**remotes_docker_docker_delete**](RemotesApi.md#remotes_docker_docker_delete) | **DELETE** {docker_remote_href} | Delete a docker remote
[**remotes_docker_docker_list**](RemotesApi.md#remotes_docker_docker_list) | **GET** /pulp/api/v3/remotes/docker/docker/ | List docker remotes
[**remotes_docker_docker_partial_update**](RemotesApi.md#remotes_docker_docker_partial_update) | **PATCH** {docker_remote_href} | Partially update a docker remote
[**remotes_docker_docker_read**](RemotesApi.md#remotes_docker_docker_read) | **GET** {docker_remote_href} | Inspect a docker remote
[**remotes_docker_docker_sync**](RemotesApi.md#remotes_docker_docker_sync) | **POST** {docker_remote_href}sync/ | 
[**remotes_docker_docker_update**](RemotesApi.md#remotes_docker_docker_update) | **PUT** {docker_remote_href} | Update a docker remote



## remotes_docker_docker_create

> DockerRemote remotes_docker_docker_create(data)

Create a docker remote

A ViewSet for DockerRemote.

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

api_instance = PulpDockerClient::RemotesApi.new
data = PulpDockerClient::DockerRemote.new # DockerRemote | 

begin
  #Create a docker remote
  result = api_instance.remotes_docker_docker_create(data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling RemotesApi->remotes_docker_docker_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**DockerRemote**](DockerRemote.md)|  | 

### Return type

[**DockerRemote**](DockerRemote.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remotes_docker_docker_delete

> AsyncOperationResponse remotes_docker_docker_delete(docker_remote_href)

Delete a docker remote

Trigger an asynchronous delete task

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

api_instance = PulpDockerClient::RemotesApi.new
docker_remote_href = 'docker_remote_href_example' # String | URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/

begin
  #Delete a docker remote
  result = api_instance.remotes_docker_docker_delete(docker_remote_href)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling RemotesApi->remotes_docker_docker_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docker_remote_href** | **String**| URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/ | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remotes_docker_docker_list

> InlineResponse2006 remotes_docker_docker_list(opts)

List docker remotes

A ViewSet for DockerRemote.

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

api_instance = PulpDockerClient::RemotesApi.new
opts = {
  name: 'name_example', # String | 
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  _last_updated__lt: '_last_updated__lt_example', # String | Filter results where _last_updated is less than value
  _last_updated__lte: '_last_updated__lte_example', # String | Filter results where _last_updated is less than or equal to value
  _last_updated__gt: '_last_updated__gt_example', # String | Filter results where _last_updated is greater than value
  _last_updated__gte: '_last_updated__gte_example', # String | Filter results where _last_updated is greater than or equal to value
  _last_updated__range: '_last_updated__range_example', # String | Filter results where _last_updated is between two comma separated values
  _last_updated: '_last_updated_example', # String | ISO 8601 formatted dates are supported
  page: 56, # Integer | A page number within the paginated result set.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  #List docker remotes
  result = api_instance.remotes_docker_docker_list(opts)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling RemotesApi->remotes_docker_docker_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **name__in** | **String**| Filter results where name is in a comma-separated list of values | [optional] 
 **_last_updated__lt** | **String**| Filter results where _last_updated is less than value | [optional] 
 **_last_updated__lte** | **String**| Filter results where _last_updated is less than or equal to value | [optional] 
 **_last_updated__gt** | **String**| Filter results where _last_updated is greater than value | [optional] 
 **_last_updated__gte** | **String**| Filter results where _last_updated is greater than or equal to value | [optional] 
 **_last_updated__range** | **String**| Filter results where _last_updated is between two comma separated values | [optional] 
 **_last_updated** | **String**| ISO 8601 formatted dates are supported | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remotes_docker_docker_partial_update

> AsyncOperationResponse remotes_docker_docker_partial_update(docker_remote_href, data)

Partially update a docker remote

Trigger an asynchronous partial update task

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

api_instance = PulpDockerClient::RemotesApi.new
docker_remote_href = 'docker_remote_href_example' # String | URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/
data = PulpDockerClient::DockerRemote.new # DockerRemote | 

begin
  #Partially update a docker remote
  result = api_instance.remotes_docker_docker_partial_update(docker_remote_href, data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling RemotesApi->remotes_docker_docker_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docker_remote_href** | **String**| URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/ | 
 **data** | [**DockerRemote**](DockerRemote.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remotes_docker_docker_read

> DockerRemote remotes_docker_docker_read(docker_remote_href)

Inspect a docker remote

A ViewSet for DockerRemote.

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

api_instance = PulpDockerClient::RemotesApi.new
docker_remote_href = 'docker_remote_href_example' # String | URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/

begin
  #Inspect a docker remote
  result = api_instance.remotes_docker_docker_read(docker_remote_href)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling RemotesApi->remotes_docker_docker_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docker_remote_href** | **String**| URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/ | 

### Return type

[**DockerRemote**](DockerRemote.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remotes_docker_docker_sync

> AsyncOperationResponse remotes_docker_docker_sync(docker_remote_href, data)



Trigger an asynchronous task to sync content

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

api_instance = PulpDockerClient::RemotesApi.new
docker_remote_href = 'docker_remote_href_example' # String | URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/
data = PulpDockerClient::RepositorySyncURL.new # RepositorySyncURL | 

begin
  result = api_instance.remotes_docker_docker_sync(docker_remote_href, data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling RemotesApi->remotes_docker_docker_sync: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docker_remote_href** | **String**| URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/ | 
 **data** | [**RepositorySyncURL**](RepositorySyncURL.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remotes_docker_docker_update

> AsyncOperationResponse remotes_docker_docker_update(docker_remote_href, data)

Update a docker remote

Trigger an asynchronous update task

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

api_instance = PulpDockerClient::RemotesApi.new
docker_remote_href = 'docker_remote_href_example' # String | URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/
data = PulpDockerClient::DockerRemote.new # DockerRemote | 

begin
  #Update a docker remote
  result = api_instance.remotes_docker_docker_update(docker_remote_href, data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling RemotesApi->remotes_docker_docker_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docker_remote_href** | **String**| URI of Docker Remote. e.g.: /pulp/api/v3/remotes/docker/docker/1/ | 
 **data** | [**DockerRemote**](DockerRemote.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

