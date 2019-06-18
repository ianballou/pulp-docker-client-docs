# PulpDockerClient::ManifestList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_href** | **String** |  | [optional] 
**_created** | **DateTime** | Timestamp of creation. | [optional] 
**_type** | **String** |  | [optional] 
**_artifact** | **String** | Artifact file representing the physical content | 
**_relative_path** | **String** | Path where the artifact is located relative to distributions base_path | 
**digest** | **String** | sha256 of the ManifestList file | 
**schema_version** | **Integer** | Docker schema version | 
**media_type** | **String** | Docker media type of the file | 
**manifests** | **Array&lt;String&gt;** | Manifests that are referenced by this Manifest List | 

## Code Sample

```ruby
require 'PulpDockerClient'

instance = PulpDockerClient::ManifestList.new(_href: null,
                                 _created: null,
                                 _type: null,
                                 _artifact: null,
                                 _relative_path: null,
                                 digest: null,
                                 schema_version: null,
                                 media_type: null,
                                 manifests: null)
```


