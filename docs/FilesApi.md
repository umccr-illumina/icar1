# FilesApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ArchiveFile**](FilesApi.md#ArchiveFile) | **POST** /v1/files/{fileId}:archive | Archive a file
[**BulkFileUpdate**](FilesApi.md#BulkFileUpdate) | **PATCH** /v1/files | Updates list of files with metadata
[**CompleteFileUpload**](FilesApi.md#CompleteFileUpload) | **POST** /v1/files/{fileId}:completeUpload | Complete a file Upload
[**CopyFiles**](FilesApi.md#CopyFiles) | **POST** /v1/files/copy | Copy list of files
[**CreateFile**](FilesApi.md#CreateFile) | **POST** /v1/files | Create a file entry in GDS and get temporary credentials for upload
[**DeleteFile**](FilesApi.md#DeleteFile) | **DELETE** /v1/files/{fileId} | Permanently delete a file
[**GetFile**](FilesApi.md#GetFile) | **GET** /v1/files/{fileId} | Get details about a file, including a pre-signed URL for download
[**ListFiles**](FilesApi.md#ListFiles) | **GET** /v1/files | Get a list of files
[**ListVolumeFiles**](FilesApi.md#ListVolumeFiles) | **POST** /v1/files/list | Get a list of volume files
[**UnarchiveFile**](FilesApi.md#UnarchiveFile) | **POST** /v1/files/{fileId}:unarchive | Unarchive a file
[**UpdateFile**](FilesApi.md#UpdateFile) | **PATCH** /v1/files/{fileId} | Update a file entry in GDS and get temporary credentials for upload


# **ArchiveFile**
> FileResponse ArchiveFile(file_id, body)

Archive a file

Archives a file to a lower storage cost tier.

### Example
```R
library(icar1)

# Archive a file
#
# prepare function argument(s)
var_file_id <- "file_id_example" # character | Unique identifier for the file to be archived.
var_body <- FileArchiveRequest$new(FileArchiveStorageTier$new()) # FileArchiveRequest | 

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **character**| Unique identifier for the file to be archived. | 
 **body** | [**FileArchiveRequest**](FileArchiveRequest.md)|  | 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success. |  -  |
| **401** | Unauthorized. |  -  |
| **404** | File not found. |  -  |
| **403** | Forbidden. |  -  |
| **409** | Conflict. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **BulkFileUpdate**
> BulkFileUpdateResponse BulkFileUpdate(body = var.body)

Updates list of files with metadata

Updates list of files with metadata

### Example
```R
library(icar1)

# Updates list of files with metadata
#
# prepare function argument(s)
var_body <- BulkFileUpdateRequest$new(c(BulkFileUpdateItem$new("id_example", 123, "format_example", "formatEdam_example", FileLifeCycleSettings$new("timeGracePeriodEnds_example", "timeToBeArchived_example", "timeToBeDeleted_example", FileArchiveStorageTier$new()))), 123) # BulkFileUpdateRequest |  (Optional)

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkFileUpdateRequest**](BulkFileUpdateRequest.md)|  | [optional] 

### Return type

[**BulkFileUpdateResponse**](BulkFileUpdateResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success. |  -  |
| **202** | Accepted |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **CompleteFileUpload**
> FileResponse CompleteFileUpload(file_id, body)

Complete a file Upload

Complete a file upload operation. If the file was uploaded using multipart uploads, combine all the multiple parts uploaded into one complete file.

### Example
```R
library(icar1)

# Complete a file Upload
#
# prepare function argument(s)
var_file_id <- "file_id_example" # character | Unique identifier for the file upload to be completed.
var_body <- FileUploadCompleteRequest$new("multipartUploadId_example", c(PartEtag$new(123, "etag_example"))) # FileUploadCompleteRequest | 

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **character**| Unique identifier for the file upload to be completed. | 
 **body** | [**FileUploadCompleteRequest**](FileUploadCompleteRequest.md)|  | 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success. |  -  |
| **401** | Unauthorized. |  -  |
| **404** | File not found. |  -  |
| **403** | Forbidden. |  -  |
| **409** | Conflict. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **CopyFiles**
> JobResponse CopyFiles(body)

Copy list of files

Copies a list of files enumerated by file Ids to a destination folder

### Example
```R
library(icar1)

# Copy list of files
#
# prepare function argument(s)
var_body <- FileListCopyRequest$new("sourceVolumeId_example", "destinationFolderId_example", c("ids_example"), c("metadataToCopy_example"), "duplicateFileAction_example") # FileListCopyRequest | 

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FileListCopyRequest**](FileListCopyRequest.md)|  | 

### Return type

[**JobResponse**](JobResponse.md)

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
| **409** | Conflict |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **CreateFile**
> FileWriteableResponse CreateFile(body, include = var.include, upload_part_count = var.upload_part_count)

Create a file entry in GDS and get temporary credentials for upload

Create a file entry in GDS. Returns temporary credentials and presigned url(s) for file upload directly to S3 when the include=objectStoreAccess parameter is used. Volume ID or volume name is required for file creation. If a folder path is provided and does not exist, GDS creates the folder path in the appropriate account automatically.

### Example
```R
library(icar1)

# Create a file entry in GDS and get temporary credentials for upload
#
# prepare function argument(s)
var_body <- CreateFileRequest$new("name_example", "volumeId_example", "folderPath_example", "type_example", "volumeName_example", "format_example", "formatEdam_example", 123) # CreateFileRequest | 
var_include <- "include_example" # character | Optionally include additional fields in the response.              Possible values: ObjectStoreAccess (Optional)
var_upload_part_count <- 56 # integer | Optional number of parts for the presigned url for uploads (1 - 10000) (Optional)

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFileRequest**](CreateFileRequest.md)|  | 
 **include** | **character**| Optionally include additional fields in the response.              Possible values: ObjectStoreAccess | [optional] 
 **upload_part_count** | **integer**| Optional number of parts for the presigned url for uploads (1 - 10000) | [optional] 

### Return type

[**FileWriteableResponse**](FileWriteableResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created new File. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **409** | A conflict was found. Make sure the new File doesn&#39;t already exist. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **DeleteFile**
> DeleteFile(file_id)

Permanently delete a file

Permanently delete a file entry and its underlying content

### Example
```R
library(icar1)

# Permanently delete a file
#
# prepare function argument(s)
var_file_id <- "file_id_example" # character | Unique identifier for the file to delete.

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **character**| Unique identifier for the file to delete. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No Content. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | File not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetFile**
> FileResponse GetFile(file_id, tenant_id = var.tenant_id, presigned_url_mode = var.presigned_url_mode, include_volume_metadata = var.include_volume_metadata, metadata_include = var.metadata_include, metadata_exclude = var.metadata_exclude, include = var.include)

Get details about a file, including a pre-signed URL for download

Get information and details for the specified file ID, including metadata and a pre-signed URL for file download. The URL can be used as a curl command or directly with S3.

### Example
```R
library(icar1)

# Get details about a file, including a pre-signed URL for download
#
# prepare function argument(s)
var_file_id <- "file_id_example" # character | Unique identifier for the file to retrieve.
var_tenant_id <- "tenant_id_example" # character | Optional parameter to see shared data in another tenant (Optional)
var_presigned_url_mode <- "presigned_url_mode_example" # character | Optional parameter to specify presigned url's content-disposition. If not specified, the browser will determine the default behavior.              Possible values: Attachment, Inline, Browser (Optional)
var_include_volume_metadata <- "include_volume_metadata_example" # character | Optional parameter to return volume's metadata (Optional)
var_metadata_include <- "metadata_include_example" # character | Optional parameter to specify comma separated patterns to include metadata by their field names. (Optional)
var_metadata_exclude <- "metadata_exclude_example" # character | Optional parameter to specify comma separated patterns to exclude metadata by their field names. (Optional)
var_include <- "include_example" # character | Optionally include additional fields in the response.              Possible values: ObjectStoreAccess (Optional)

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **character**| Unique identifier for the file to retrieve. | 
 **tenant_id** | **character**| Optional parameter to see shared data in another tenant | [optional] 
 **presigned_url_mode** | **character**| Optional parameter to specify presigned url&#39;s content-disposition. If not specified, the browser will determine the default behavior.              Possible values: Attachment, Inline, Browser | [optional] 
 **include_volume_metadata** | **character**| Optional parameter to return volume&#39;s metadata | [optional] 
 **metadata_include** | **character**| Optional parameter to specify comma separated patterns to include metadata by their field names. | [optional] 
 **metadata_exclude** | **character**| Optional parameter to specify comma separated patterns to exclude metadata by their field names. | [optional] 
 **include** | **character**| Optionally include additional fields in the response.              Possible values: ObjectStoreAccess | [optional] 

### Return type

[**FileResponse**](FileResponse.md)

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
| **404** | File not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListFiles**
> FileListResponse ListFiles(volume_id = var.volume_id, volume_name = var.volume_name, path = var.path, is_uploaded = var.is_uploaded, archive_status = var.archive_status, recursive = var.recursive, presigned_url_mode = var.presigned_url_mode, include = var.include, page_size = var.page_size, page_token = var.page_token, tenant_id = var.tenant_id, metadata_include = var.metadata_include, metadata_exclude = var.metadata_exclude)

Get a list of files

Given a volumeId or volume name, get a list of files accessible by the JWT. The default sort returned is alphabetical, ascending. The default page size is 10 items

### Example
```R
library(icar1)

# Get a list of files
#
# prepare function argument(s)
var_volume_id <- c("inner_example") # array[character] | Optional field that specifies comma-separated volume IDs to include in the list (Optional)
var_volume_name <- c("inner_example") # array[character] | Optional field that specifies comma-separated volume names to include in the list (Optional)
var_path <- c("inner_example") # array[character] | Optional field that specifies comma-separated paths to include in the list. Value can use wildcards (e.g. /a/b/c/*) or exact matches (e.g. /a/b/c/d/). (Optional)
var_is_uploaded <- "is_uploaded_example" # character | Optional field to filter by Uploaded files (Optional)
var_archive_status <- "archive_status_example" # character | Optional field that specifies comma-separated Archive Statuses to include in the list (Optional)
var_recursive <- "recursive_example" # character | Optional field to specify if files should be returned recursively in and under the specified paths, or only directly in the specified paths (Optional)
var_presigned_url_mode <- "presigned_url_mode_example" # character | Optional parameter to specify presigned url's content-disposition. If not specified, the browser will determine the default behavior.  Possible values: Attachment, Inline, Browser (Optional)
var_include <- "include_example" # character | Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, PresignedUrl, InheritedAcl (Optional)
var_page_size <- 56 # integer | START_DESC END_DESC (Optional)
var_page_token <- "page_token_example" # character | START_DESC END_DESC (Optional)
var_tenant_id <- "tenant_id_example" # character | Optional parameter to see shared data in another tenant (Optional)
var_metadata_include <- "metadata_include_example" # character | Optional parameter to specify comma separated patterns to include metadata by their field names. (Optional)
var_metadata_exclude <- "metadata_exclude_example" # character | Optional parameter to specify comma separated patterns to exclude metadata by their field names. (Optional)

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volume_id** | list( **character** )| Optional field that specifies comma-separated volume IDs to include in the list | [optional] 
 **volume_name** | list( **character** )| Optional field that specifies comma-separated volume names to include in the list | [optional] 
 **path** | list( **character** )| Optional field that specifies comma-separated paths to include in the list. Value can use wildcards (e.g. /a/b/c/*) or exact matches (e.g. /a/b/c/d/). | [optional] 
 **is_uploaded** | **character**| Optional field to filter by Uploaded files | [optional] 
 **archive_status** | **character**| Optional field that specifies comma-separated Archive Statuses to include in the list | [optional] 
 **recursive** | **character**| Optional field to specify if files should be returned recursively in and under the specified paths, or only directly in the specified paths | [optional] 
 **presigned_url_mode** | **character**| Optional parameter to specify presigned url&#39;s content-disposition. If not specified, the browser will determine the default behavior.  Possible values: Attachment, Inline, Browser | [optional] 
 **include** | **character**| Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, PresignedUrl, InheritedAcl | [optional] 
 **page_size** | **integer**| START_DESC END_DESC | [optional] 
 **page_token** | **character**| START_DESC END_DESC | [optional] 
 **tenant_id** | **character**| Optional parameter to see shared data in another tenant | [optional] 
 **metadata_include** | **character**| Optional parameter to specify comma separated patterns to include metadata by their field names. | [optional] 
 **metadata_exclude** | **character**| Optional parameter to specify comma separated patterns to exclude metadata by their field names. | [optional] 

### Return type

[**FileListResponse**](FileListResponse.md)

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

# **ListVolumeFiles**
> VolumeFileListResponse ListVolumeFiles(body)

Get a list of volume files

Gets file list by volume ID and an array of file IDs. The default sort returned is alphabetical, ascending

### Example
```R
library(icar1)

# Get a list of volume files
#
# prepare function argument(s)
var_body <- VolumeFileListRequest$new("volumeId_example", c("fileIds_example"), "includePresignedUrl_example", "presignedUrlMode_example") # VolumeFileListRequest | 

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VolumeFileListRequest**](VolumeFileListRequest.md)|  | 

### Return type

[**VolumeFileListResponse**](VolumeFileListResponse.md)

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
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **UnarchiveFile**
> FileResponse UnarchiveFile(file_id, body)

Unarchive a file

Unarchive a file from a lower storage cost tier.

### Example
```R
library(icar1)

# Unarchive a file
#
# prepare function argument(s)
var_file_id <- "file_id_example" # character | Unique identifier for the file to be unarchived.
var_body <- FileUnarchiveRequest$new("restoreSpeed_example") # FileUnarchiveRequest | 

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **character**| Unique identifier for the file to be unarchived. | 
 **body** | [**FileUnarchiveRequest**](FileUnarchiveRequest.md)|  | 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | File not found. |  -  |
| **409** | Conflict. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **UpdateFile**
> FileWriteableResponse UpdateFile(file_id, include = var.include, upload_part_count = var.upload_part_count, body = var.body)

Update a file entry in GDS and get temporary credentials for upload

Update a file entry in GDS. Returns temporary credentials and presigned url(s) for file upload directly to S3 when the include=objectStoreAccess parameter is used. Note that the currently supported changes to the file resource are updating the file type and the underlying content.

### Example
```R
library(icar1)

# Update a file entry in GDS and get temporary credentials for upload
#
# prepare function argument(s)
var_file_id <- "file_id_example" # character | Unique identifier for the file to be updated.
var_include <- "include_example" # character | Optionally include additional fields in the response.              Possible values: ObjectStoreAccess (Optional)
var_upload_part_count <- 56 # integer | Optional number of parts for the presigned url for uploads (1 - 10000) (Optional)
var_body <- UpdateFileRequest$new("type_example", "format_example", "formatEdam_example", FileLifeCycleSettings$new("timeGracePeriodEnds_example", "timeToBeArchived_example", "timeToBeDeleted_example", FileArchiveStorageTier$new()), 123) # UpdateFileRequest |  (Optional)

api_instance <- FilesApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **character**| Unique identifier for the file to be updated. | 
 **include** | **character**| Optionally include additional fields in the response.              Possible values: ObjectStoreAccess | [optional] 
 **upload_part_count** | **integer**| Optional number of parts for the presigned url for uploads (1 - 10000) | [optional] 
 **body** | [**UpdateFileRequest**](UpdateFileRequest.md)|  | [optional] 

### Return type

[**FileWriteableResponse**](FileWriteableResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | File not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

