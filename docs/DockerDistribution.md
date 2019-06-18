# PulpDockerClient::DockerDistribution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_path** | **String** | The base (relative) path component of the published url. Avoid paths that                     overlap with other distribution base paths (e.g. \&quot;foo\&quot; and \&quot;foo/bar\&quot;) | 
**name** | **String** | A unique name. Ex, &#x60;rawhide&#x60; and &#x60;stable&#x60;. | 
**repository** | **String** | The latest RepositoryVersion for this Repository will be served. | [optional] 
**_href** | **String** |  | [optional] 
**content_guard** | **String** | An optional content-guard. | [optional] 
**_created** | **DateTime** | Timestamp of creation. | [optional] 
**repository_version** | **String** | RepositoryVersion to be served | [optional] 
**registry_path** | **String** | The Registry hostame:port/name/ to use with docker pull command defined by this distribution. | [optional] 

## Code Sample

```ruby
require 'PulpDockerClient'

instance = PulpDockerClient::DockerDistribution.new(base_path: null,
                                 name: null,
                                 repository: null,
                                 _href: null,
                                 content_guard: null,
                                 _created: null,
                                 repository_version: null,
                                 registry_path: null)
```


