# VolumeConfigurationsApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateVolumeConfiguration**](VolumeConfigurationsApi.md#CreateVolumeConfiguration) | **POST** /v1/volumeconfigurations | Create a volume configuration in GDS.
[**DeleteVolumeConfiguration**](VolumeConfigurationsApi.md#DeleteVolumeConfiguration) | **DELETE** /v1/volumeconfigurations/{volumeConfigurationName} | Deletes a volume configuration by Id or name
[**GetVolumeConfiguration**](VolumeConfigurationsApi.md#GetVolumeConfiguration) | **GET** /v1/volumeconfigurations/{volumeConfigurationName} | Get information for the specified volume configuration name or Id
[**ListVolumeConfigurations**](VolumeConfigurationsApi.md#ListVolumeConfigurations) | **GET** /v1/volumeconfigurations | Get a list of volumes
[**ValidateVolumeConfiguration**](VolumeConfigurationsApi.md#ValidateVolumeConfiguration) | **POST** /v1/volumeconfigurations/{volumeConfigurationName}:validate | Validate a volume configuration


# **CreateVolumeConfiguration**
> VolumeConfigurationResponse CreateVolumeConfiguration(body)

Create a volume configuration in GDS.

Create a volume configuration in GDS. This contains the object store details that will be used to create volumes.

### Example
```R
library(icar1)

# Create a volume configuration in GDS.
#
# prepare function argument(s)
var_body <- CreateVolumeConfigurationRequest$new("name_example", ObjectStoreSettings$new(AWSS3ObjectStoreSetting$new("bucketName_example", "keyPrefix_example", "serverSideEncryptionAlgorithm_example", "serverSideEncryptionKey_example"), "secretName_example", "secretId_example"), "versioningEnabled_example", RestoreType$new()) # CreateVolumeConfigurationRequest | 

api_instance <- VolumeConfigurationsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVolumeConfigurationRequest**](CreateVolumeConfigurationRequest.md)|  | 

### Return type

[**VolumeConfigurationResponse**](VolumeConfigurationResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created new Volume Configuration. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **409** | A conflict was found. Make sure the new Volume configuration name doesn&#39;t already exist. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **DeleteVolumeConfiguration**
> VolumeResponse DeleteVolumeConfiguration(volume_configuration_name)

Deletes a volume configuration by Id or name

### Example
```R
library(icar1)

# Deletes a volume configuration by Id or name
#
# prepare function argument(s)
var_volume_configuration_name <- "volume_configuration_name_example" # character | Unique name of the Volume Configuration to be deleted.

api_instance <- VolumeConfigurationsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volume_configuration_name** | **character**| Unique name of the Volume Configuration to be deleted. | 

### Return type

[**VolumeResponse**](VolumeResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Volume not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetVolumeConfiguration**
> VolumeConfigurationResponse GetVolumeConfiguration(volume_configuration_name)

Get information for the specified volume configuration name or Id

### Example
```R
library(icar1)

# Get information for the specified volume configuration name or Id
#
# prepare function argument(s)
var_volume_configuration_name <- "volume_configuration_name_example" # character | Unique name of the volume configuration to retrieve information for.

api_instance <- VolumeConfigurationsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volume_configuration_name** | **character**| Unique name of the volume configuration to retrieve information for. | 

### Return type

[**VolumeConfigurationResponse**](VolumeConfigurationResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Volume configuration not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListVolumeConfigurations**
> VolumeConfigurationListResponse ListVolumeConfigurations(online_status = var.online_status, page_size = var.page_size, page_token = var.page_token, include = var.include)

Get a list of volumes

### Example
```R
library(icar1)

# Get a list of volumes
#
# prepare function argument(s)
var_online_status <- "online_status_example" # character | Optional field that specifies the Online Status for Volume configurations included in the list.  If provided, the value must be Initializing, Ok, or Error. (Optional)
var_page_size <- 56 # integer | START_DESC END_DESC (Optional)
var_page_token <- "page_token_example" # character | START_DESC END_DESC (Optional)
var_include <- "include_example" # character | Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, InheritedAcl (Optional)

api_instance <- VolumeConfigurationsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **online_status** | **character**| Optional field that specifies the Online Status for Volume configurations included in the list.  If provided, the value must be Initializing, Ok, or Error. | [optional] 
 **page_size** | **integer**| START_DESC END_DESC | [optional] 
 **page_token** | **character**| START_DESC END_DESC | [optional] 
 **include** | **character**| Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, InheritedAcl | [optional] 

### Return type

[**VolumeConfigurationListResponse**](VolumeConfigurationListResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Not Found |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ValidateVolumeConfiguration**
> VolumeConfigurationResponse ValidateVolumeConfiguration(volume_configuration_name)

Validate a volume configuration

Validate an existing volume configuration.

### Example
```R
library(icar1)

# Validate a volume configuration
#
# prepare function argument(s)
var_volume_configuration_name <- "volume_configuration_name_example" # character | Unique name of the volume configuration to be validated.

api_instance <- VolumeConfigurationsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volume_configuration_name** | **character**| Unique name of the volume configuration to be validated. | 

### Return type

[**VolumeConfigurationResponse**](VolumeConfigurationResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Volume configuration not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

