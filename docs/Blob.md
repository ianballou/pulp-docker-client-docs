# PulpDockerClient::Blob

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_href** | **String** |  | [optional] 
**_created** | **DateTime** | Timestamp of creation. | [optional] 
**_type** | **String** |  | [optional] 
**_artifact** | **String** | Artifact file representing the physical content | 
**_relative_path** | **String** | Path where the artifact is located relative to distributions base_path | 
**digest** | **String** | sha256 of the Blob file | 
**media_type** | **String** | Docker media type of the file | 

## Code Sample

```ruby
require 'PulpDockerClient'

instance = PulpDockerClient::Blob.new(_href: null,
                                 _created: null,
                                 _type: null,
                                 _artifact: null,
                                 _relative_path: null,
                                 digest: null,
                                 media_type: null)
```


