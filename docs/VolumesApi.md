# VolumesApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateVolume**](VolumesApi.md#CreateVolume) | **POST** /v1/volumes | Create a volume in GDS and receive temporary credentials for upload
[**DeleteVolume**](VolumesApi.md#DeleteVolume) | **DELETE** /v1/volumes/{volumeId} | Deletes a volume by Id
[**GetVolume**](VolumesApi.md#GetVolume) | **GET** /v1/volumes/{volumeId} | Get information for the specified volume ID or volume name
[**ListVolumes**](VolumesApi.md#ListVolumes) | **GET** /v1/volumes | Get a list of volumes
[**UpdateVolume**](VolumesApi.md#UpdateVolume) | **PATCH** /v1/volumes/{volumeId} | Update a volume content


# **CreateVolume**
> CreateVolumeResponse CreateVolume(body, include = var.include)

Create a volume in GDS and receive temporary credentials for upload

Create a volume in GDS to hold folders and files. Returns upload credentials to the root folder of the volume when the include=objectStoreAccess parameter is used. You must create a volume prior to uploading files or folders.

### Example
```R
library(icar1)

# Create a volume in GDS and receive temporary credentials for upload
#
# prepare function argument(s)
var_body <- CreateVolumeRequest$new("name_example", "volumeConfigurationName_example", "rootKeyPrefix_example", 123, VolumeLifeCycleSettings$new(123, GracePeriodEndAction$new())) # CreateVolumeRequest | 
var_include <- "include_example" # character | Optionally include additional fields in the response.              Possible values: ObjectStoreAccess (Optional)

api_instance <- VolumesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateVolumeRequest**](CreateVolumeRequest.md)|  | 
 **include** | **character**| Optionally include additional fields in the response.              Possible values: ObjectStoreAccess | [optional] 

### Return type

[**CreateVolumeResponse**](CreateVolumeResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created new Volume. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **409** | A conflict was found. Make sure the new Volume doesn&#39;t already exist. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **DeleteVolume**
> VolumeResponse DeleteVolume(volume_id, purge_object_store_data = var.purge_object_store_data)

Deletes a volume by Id

### Example
```R
library(icar1)

# Deletes a volume by Id
#
# prepare function argument(s)
var_volume_id <- "volume_id_example" # character | Unique identifier for the Volume to be deleted.
var_purge_object_store_data <- "purge_object_store_data_example" # character | Optional and for BYOB only. If true, the volume's data in object storage will be erased.              This field is ignored for non-BYOB volumes where the object store data is always removed upon deleting the volume. (Optional)

api_instance <- VolumesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volume_id** | **character**| Unique identifier for the Volume to be deleted. | 
 **purge_object_store_data** | **character**| Optional and for BYOB only. If true, the volume&#39;s data in object storage will be erased.              This field is ignored for non-BYOB volumes where the object store data is always removed upon deleting the volume. | [optional] 

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
| **409** | Conflict |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetVolume**
> VolumeResponse GetVolume(volume_id, tenant_id = var.tenant_id, metadata_include = var.metadata_include, metadata_exclude = var.metadata_exclude)

Get information for the specified volume ID or volume name

### Example
```R
library(icar1)

# Get information for the specified volume ID or volume name
#
# prepare function argument(s)
var_volume_id <- "volume_id_example" # character | Unique identifier for the volume to retrieve information for.
var_tenant_id <- "tenant_id_example" # character | Optional parameter to see shared data in another tenant (Optional)
var_metadata_include <- "metadata_include_example" # character | Optional parameter to specify comma separated patterns to include metadata by their field names. (Optional)
var_metadata_exclude <- "metadata_exclude_example" # character | Optional parameter to specify comma separated patterns to exclude metadata by their field names. (Optional)

api_instance <- VolumesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volume_id** | **character**| Unique identifier for the volume to retrieve information for. | 
 **tenant_id** | **character**| Optional parameter to see shared data in another tenant | [optional] 
 **metadata_include** | **character**| Optional parameter to specify comma separated patterns to include metadata by their field names. | [optional] 
 **metadata_exclude** | **character**| Optional parameter to specify comma separated patterns to exclude metadata by their field names. | [optional] 

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
| **200** | Success. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Volume not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListVolumes**
> VolumeListResponse ListVolumes(page_size = var.page_size, page_token = var.page_token, include = var.include, tenant_id = var.tenant_id, volume_configuration_name = var.volume_configuration_name)

Get a list of volumes

Get a list of volumes accessible by the current JWT token’s tenant ID in GDS. The default sort returned is alphabetical, ascending. The default page size is 10 items.

### Example
```R
library(icar1)

# Get a list of volumes
#
# prepare function argument(s)
var_page_size <- 56 # integer | START_DESC END_DESC (Optional)
var_page_token <- "page_token_example" # character | START_DESC END_DESC (Optional)
var_include <- "include_example" # character | Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, InheritedAcl (Optional)
var_tenant_id <- "tenant_id_example" # character | Optional parameter to see shared data in another tenant (Optional)
var_volume_configuration_name <- "volume_configuration_name_example" # character | Unique name of the volume configuration (Optional)

api_instance <- VolumesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **integer**| START_DESC END_DESC | [optional] 
 **page_token** | **character**| START_DESC END_DESC | [optional] 
 **include** | **character**| Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, InheritedAcl | [optional] 
 **tenant_id** | **character**| Optional parameter to see shared data in another tenant | [optional] 
 **volume_configuration_name** | **character**| Unique name of the volume configuration | [optional] 

### Return type

[**VolumeListResponse**](VolumeListResponse.md)

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
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **UpdateVolume**
> VolumeResponse UpdateVolume(volume_id, include = var.include, body = var.body)

Update a volume content

Update an existing volume in GDS and return upload credentials for that volume. 

### Example
```R
library(icar1)

# Update a volume content
#
# prepare function argument(s)
var_volume_id <- "volume_id_example" # character | Unique identifier for the volume to be updated.
var_include <- "include_example" # character | Optionally include additional fields in the response.              Possible values: ObjectStoreAccess (Optional)
var_body <- UpdateVolumeRequest$new(123, VolumeLifeCycleSettings$new(123, GracePeriodEndAction$new())) # UpdateVolumeRequest |  (Optional)

api_instance <- VolumesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volume_id** | **character**| Unique identifier for the volume to be updated. | 
 **include** | **character**| Optionally include additional fields in the response.              Possible values: ObjectStoreAccess | [optional] 
 **body** | [**UpdateVolumeRequest**](UpdateVolumeRequest.md)|  | [optional] 

### Return type

[**VolumeResponse**](VolumeResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Volume not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

