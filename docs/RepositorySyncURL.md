# PulpDockerClient::RepositorySyncURL

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repository** | **String** | A URI of the repository to be synchronized. | 
**mirror** | **Boolean** | If &#x60;&#x60;True&#x60;&#x60;, synchronization will remove all content that is not present in the remote repository. If &#x60;&#x60;False&#x60;&#x60;, sync will be additive only. | [optional] [default to false]

## Code Sample

```ruby
require 'PulpDockerClient'

instance = PulpDockerClient::RepositorySyncURL.new(repository: null,
                                 mirror: null)
```


