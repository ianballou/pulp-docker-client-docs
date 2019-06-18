# PulpDockerClient::DockerRemote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_href** | **String** |  | [optional] 
**_created** | **DateTime** | Timestamp of creation. | [optional] 
**_type** | **String** |  | [optional] 
**name** | **String** | A unique name for this remote. | 
**url** | **String** | The URL of an external content source. | 
**validate** | **Boolean** | If True, the plugin will validate imported artifacts. | [optional] 
**ssl_ca_certificate** | **String** | A PEM encoded CA certificate used to validate the server certificate presented by the remote server. Returns SHA256 sum on GET. | [optional] 
**ssl_client_certificate** | **String** | A PEM encoded client certificate used for authentication. Returns SHA256 sum on GET. | [optional] 
**ssl_client_key** | **String** | A PEM encoded private key used for authentication. Returns SHA256 sum on GET. | [optional] 
**ssl_validation** | **Boolean** | If True, SSL peer validation must be performed. | [optional] 
**proxy_url** | **String** | The proxy URL. Format: scheme://user:password@host:port | [optional] 
**username** | **String** | The username to be used for authentication when syncing. | [optional] 
**password** | **String** | The password to be used for authentication when syncing. | [optional] 
**_last_updated** | **DateTime** | Timestamp of the most recent update of the remote. | [optional] 
**download_concurrency** | **Integer** | Total number of simultaneous connections. | [optional] 
**policy** | **String** | The policy to use when downloading content. The possible values include: &#39;immediate&#39;, &#39;on_demand&#39;, and &#39;cache_only&#39;. &#39;immediate&#39; is the default. | [optional] [default to &#39;immediate&#39;]
**upstream_name** | **String** | Name of the upstream repository | 
**whitelist_tags** | **String** | Whitelist tags to sync | [optional] 

## Code Sample

```ruby
require 'PulpDockerClient'

instance = PulpDockerClient::DockerRemote.new(_href: null,
                                 _created: null,
                                 _type: null,
                                 name: null,
                                 url: null,
                                 validate: null,
                                 ssl_ca_certificate: null,
                                 ssl_client_certificate: null,
                                 ssl_client_key: null,
                                 ssl_validation: null,
                                 proxy_url: null,
                                 username: null,
                                 password: null,
                                 _last_updated: null,
                                 download_concurrency: null,
                                 policy: null,
                                 upstream_name: null,
                                 whitelist_tags: null)
```


