# PulpDockerClient::ManifestTag

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_href** | **String** |  | [optional] 
**_created** | **DateTime** | Timestamp of creation. | [optional] 
**_type** | **String** |  | [optional] 
**_artifact** | **String** | Artifact file representing the physical content | 
**_relative_path** | **String** | Path where the artifact is located relative to distributions base_path | 
**name** | **String** | Tag name | 
**manifest** | **String** | Manifest that is tagged | 

## Code Sample

```ruby
require 'PulpDockerClient'

instance = PulpDockerClient::ManifestTag.new(_href: null,
                                 _created: null,
                                 _type: null,
                                 _artifact: null,
                                 _relative_path: null,
                                 name: null,
                                 manifest: null)
```


