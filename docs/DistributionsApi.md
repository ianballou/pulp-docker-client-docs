# PulpDockerClient::DistributionsApi

All URIs are relative to *http://localhost:24817*

Method | HTTP request | Description
------------- | ------------- | -------------
[**distributions_docker_docker_create**](DistributionsApi.md#distributions_docker_docker_create) | **POST** /pulp/api/v3/distributions/docker/docker/ | Create a docker distribution
[**distributions_docker_docker_delete**](DistributionsApi.md#distributions_docker_docker_delete) | **DELETE** {docker_distribution_href} | Delete a docker distribution
[**distributions_docker_docker_list**](DistributionsApi.md#distributions_docker_docker_list) | **GET** /pulp/api/v3/distributions/docker/docker/ | List docker distributions
[**distributions_docker_docker_partial_update**](DistributionsApi.md#distributions_docker_docker_partial_update) | **PATCH** {docker_distribution_href} | Partially update a docker distribution
[**distributions_docker_docker_read**](DistributionsApi.md#distributions_docker_docker_read) | **GET** {docker_distribution_href} | Inspect a docker distribution
[**distributions_docker_docker_update**](DistributionsApi.md#distributions_docker_docker_update) | **PUT** {docker_distribution_href} | Update a docker distribution



## distributions_docker_docker_create

> AsyncOperationResponse distributions_docker_docker_create(data)

Create a docker distribution

Trigger an asynchronous create task

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

api_instance = PulpDockerClient::DistributionsApi.new
data = PulpDockerClient::DockerDistribution.new # DockerDistribution | 

begin
  #Create a docker distribution
  result = api_instance.distributions_docker_docker_create(data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling DistributionsApi->distributions_docker_docker_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**DockerDistribution**](DockerDistribution.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## distributions_docker_docker_delete

> AsyncOperationResponse distributions_docker_docker_delete(docker_distribution_href)

Delete a docker distribution

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

api_instance = PulpDockerClient::DistributionsApi.new
docker_distribution_href = 'docker_distribution_href_example' # String | URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/

begin
  #Delete a docker distribution
  result = api_instance.distributions_docker_docker_delete(docker_distribution_href)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling DistributionsApi->distributions_docker_docker_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docker_distribution_href** | **String**| URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/ | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## distributions_docker_docker_list

> InlineResponse2005 distributions_docker_docker_list(opts)

List docker distributions

ViewSet for DockerDistribution model.

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

api_instance = PulpDockerClient::DistributionsApi.new
opts = {
  name: 'name_example', # String | 
  name__in: 'name__in_example', # String | Filter results where name is in a comma-separated list of values
  base_path: 'base_path_example', # String | 
  base_path__contains: 'base_path__contains_example', # String | Filter results where base_path contains value
  base_path__icontains: 'base_path__icontains_example', # String | Filter results where base_path contains value
  base_path__in: 'base_path__in_example', # String | Filter results where base_path is in a comma-separated list of values
  page: 56, # Integer | A page number within the paginated result set.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  #List docker distributions
  result = api_instance.distributions_docker_docker_list(opts)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling DistributionsApi->distributions_docker_docker_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 
 **name__in** | **String**| Filter results where name is in a comma-separated list of values | [optional] 
 **base_path** | **String**|  | [optional] 
 **base_path__contains** | **String**| Filter results where base_path contains value | [optional] 
 **base_path__icontains** | **String**| Filter results where base_path contains value | [optional] 
 **base_path__in** | **String**| Filter results where base_path is in a comma-separated list of values | [optional] 
 **page** | **Integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## distributions_docker_docker_partial_update

> AsyncOperationResponse distributions_docker_docker_partial_update(docker_distribution_href, data)

Partially update a docker distribution

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

api_instance = PulpDockerClient::DistributionsApi.new
docker_distribution_href = 'docker_distribution_href_example' # String | URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
data = PulpDockerClient::DockerDistribution.new # DockerDistribution | 

begin
  #Partially update a docker distribution
  result = api_instance.distributions_docker_docker_partial_update(docker_distribution_href, data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling DistributionsApi->distributions_docker_docker_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docker_distribution_href** | **String**| URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/ | 
 **data** | [**DockerDistribution**](DockerDistribution.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## distributions_docker_docker_read

> DockerDistribution distributions_docker_docker_read(docker_distribution_href)

Inspect a docker distribution

ViewSet for DockerDistribution model.

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

api_instance = PulpDockerClient::DistributionsApi.new
docker_distribution_href = 'docker_distribution_href_example' # String | URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/

begin
  #Inspect a docker distribution
  result = api_instance.distributions_docker_docker_read(docker_distribution_href)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling DistributionsApi->distributions_docker_docker_read: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docker_distribution_href** | **String**| URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/ | 

### Return type

[**DockerDistribution**](DockerDistribution.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## distributions_docker_docker_update

> AsyncOperationResponse distributions_docker_docker_update(docker_distribution_href, data)

Update a docker distribution

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

api_instance = PulpDockerClient::DistributionsApi.new
docker_distribution_href = 'docker_distribution_href_example' # String | URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/
data = PulpDockerClient::DockerDistribution.new # DockerDistribution | 

begin
  #Update a docker distribution
  result = api_instance.distributions_docker_docker_update(docker_distribution_href, data)
  p result
rescue PulpDockerClient::ApiError => e
  puts "Exception when calling DistributionsApi->distributions_docker_docker_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **docker_distribution_href** | **String**| URI of Docker Distribution. e.g.: /pulp/api/v3/distributions/docker/docker/1/ | 
 **data** | [**DockerDistribution**](DockerDistribution.md)|  | 

### Return type

[**AsyncOperationResponse**](AsyncOperationResponse.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

