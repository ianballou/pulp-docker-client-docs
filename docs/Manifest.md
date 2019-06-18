# PulpDockerClient::Manifest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_href** | **String** |  | [optional] 
**_created** | **DateTime** | Timestamp of creation. | [optional] 
**_type** | **String** |  | [optional] 
**_artifact** | **String** | Artifact file representing the physical content | 
**_relative_path** | **String** | Path where the artifact is located relative to distributions base_path | 
**digest** | **String** | sha256 of the Manifest file | 
**schema_version** | **Integer** | Docker schema version | 
**media_type** | **String** | Docker media type of the file | 
**blobs** | **Array&lt;String&gt;** | Blobs that are referenced by this Manifest | 
**config_blob** | **String** | Blob that contains configuration for this Manifest | 

## Code Sample

```ruby
require 'PulpDockerClient'

instance = PulpDockerClient::Manifest.new(_href: null,
                                 _created: null,
                                 _type: null,
                                 _artifact: null,
                                 _relative_path: null,
                                 digest: null,
                                 schema_version: null,
                                 media_type: null,
                                 blobs: null,
                                 config_blob: null)
```


