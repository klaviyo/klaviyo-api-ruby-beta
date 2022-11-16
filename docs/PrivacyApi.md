# KlaviyoBetaAPI::PrivacyApi

All URIs are relative to *https://a.klaviyo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_data_privacy_deletion_job**](PrivacyApi.md#create_data_privacy_deletion_job) | **POST** /api/data-privacy-deletion-jobs/ | Create Data Privacy Deletion Job |


## create_data_privacy_deletion_job

> create_data_privacy_deletion_job(data_privacy_create_deletion_job_query)

Create Data Privacy Deletion Job

Request a data privacy-compliant deletion for the person record corresponding to email address, phone number or person identifier<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Data Privacy Write`

### Examples

```ruby
require 'time'
require 'klaviyo-api-beta-sdk'
# setup authorization
KlaviyoBetaAPI.configure do |config|
  # Configure API key authorization: Klaviyo-API-Key
  config.api_key['Klaviyo-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Klaviyo-API-Key'] = 'Bearer'
end

api_instance = KlaviyoBetaAPI::PrivacyApi.new
data_privacy_create_deletion_job_query = KlaviyoBetaAPI::DataPrivacyCreateDeletionJobQuery.new({data: KlaviyoBetaAPI::DataPrivacyCreateDeletionJobQueryAsSubResource.new({type: 'data-privacy-deletion-job', attributes: KlaviyoBetaAPI::DataPrivacyCreateDeletionJobQueryAsSubResourceAttributes.new})}) # DataPrivacyCreateDeletionJobQuery | 

begin
  # Create Data Privacy Deletion Job
  api_instance.create_data_privacy_deletion_job(data_privacy_create_deletion_job_query)
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling PrivacyApi->create_data_privacy_deletion_job: #{e}"
end
```

#### Using the create_data_privacy_deletion_job_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_data_privacy_deletion_job_with_http_info(data_privacy_create_deletion_job_query)

```ruby
begin
  # Create Data Privacy Deletion Job
  data, status_code, headers = api_instance.create_data_privacy_deletion_job_with_http_info(data_privacy_create_deletion_job_query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KlaviyoBetaAPI::ApiError => e
  puts "Error when calling PrivacyApi->create_data_privacy_deletion_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_privacy_create_deletion_job_query** | [**DataPrivacyCreateDeletionJobQuery**](DataPrivacyCreateDeletionJobQuery.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[Klaviyo-API-Key](../README.md#Klaviyo-API-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

