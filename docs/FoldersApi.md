# FoldersApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ArchiveFolder**](FoldersApi.md#ArchiveFolder) | **POST** /v1/folders/{folderId}:archive | Archive a folder
[**BulkFolderUpdate**](FoldersApi.md#BulkFolderUpdate) | **PATCH** /v1/folders | Updates list of folders with metadata
[**BulkMetadataFolderUpdate**](FoldersApi.md#BulkMetadataFolderUpdate) | **PATCH** /v1/folders/bulkMetadataFolderUpdate | Updates list of folders with metadata
[**CompleteFolderSession**](FoldersApi.md#CompleteFolderSession) | **POST** /v1/folders/{folderId}/sessions/{sessionId}:complete | Complete a folder upload in GDS
[**CopyFolder**](FoldersApi.md#CopyFolder) | **POST** /v1/folders/{folderId}:copy | Copy a folder
[**CreateFolder**](FoldersApi.md#CreateFolder) | **POST** /v1/folders | Create a folder in GDS and receive credentials for upload
[**CreateFolderSession**](FoldersApi.md#CreateFolderSession) | **POST** /v1/folders/{folderId}/sessions | Create a session
[**DeleteFolder**](FoldersApi.md#DeleteFolder) | **DELETE** /v1/folders/{folderId} | Deletes a folder by id
[**GetFolder**](FoldersApi.md#GetFolder) | **GET** /v1/folders/{folderId} | Get information about a folder in GDS.
[**GetFolderJob**](FoldersApi.md#GetFolderJob) | **GET** /v1/folders/{folderId}/jobs/{jobId} | Get status of a folder job in GDS
[**GetFolderSession**](FoldersApi.md#GetFolderSession) | **GET** /v1/folders/{folderId}/sessions/{sessionId} | Get status of a folder upload in GDS
[**ListFolders**](FoldersApi.md#ListFolders) | **GET** /v1/folders | Get a list of folders
[**UnarchiveFolder**](FoldersApi.md#UnarchiveFolder) | **POST** /v1/folders/{folderId}:unarchive | Unarchive a folder
[**UpdateFolder**](FoldersApi.md#UpdateFolder) | **PATCH** /v1/folders/{folderId} | Update a folder content or acl


# **ArchiveFolder**
> FolderResponse ArchiveFolder(folder_id, body)

Archive a folder

Archives a folder to a lower storage cost tier.

### Example
```R
library(icar1)

# Archive a folder
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | Unique identifier for the folder to be archived.
var_body <- FolderArchiveRequest$new("storageTier_example") # FolderArchiveRequest | 

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**| Unique identifier for the folder to be archived. | 
 **body** | [**FolderArchiveRequest**](FolderArchiveRequest.md)|  | 

### Return type

[**FolderResponse**](FolderResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Accepted. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Folder not found. |  -  |
| **409** | Conflict. |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **BulkFolderUpdate**
> BulkFolderUpdateResponse BulkFolderUpdate(body = var.body)

Updates list of folders with metadata

Updates list of folders with metadata

### Example
```R
library(icar1)

# Updates list of folders with metadata
#
# prepare function argument(s)
var_body <- BulkFolderUpdateRequest$new(c(BulkFolderUpdateItem$new("id_example", 123)), 123) # BulkFolderUpdateRequest |  (Optional)

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkFolderUpdateRequest**](BulkFolderUpdateRequest.md)|  | [optional] 

### Return type

[**BulkFolderUpdateResponse**](BulkFolderUpdateResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **202** | Accepted. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **BulkMetadataFolderUpdate**
> JobResponse BulkMetadataFolderUpdate(body = var.body)

Updates list of folders with metadata

Updates list of folders with metadata

### Example
```R
library(icar1)

# Updates list of folders with metadata
#
# prepare function argument(s)
var_body <- BulkFolderMetadataUpdateRequest$new("folderId_example", "fileStatus_example", MetadataUpdateRequest$new(123, 123), MetadataUpdateRequest$new(123, 123), MetadataUpdateRequest$new(123, 123)) # BulkFolderMetadataUpdateRequest |  (Optional)

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkFolderMetadataUpdateRequest**](BulkFolderMetadataUpdateRequest.md)|  | [optional] 

### Return type

[**JobResponse**](JobResponse.md)

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

# **CompleteFolderSession**
> SessionResponse CompleteFolderSession(folder_id, session_id, body)

Complete a folder upload in GDS

Complete a folder upload in GDS.

### Example
```R
library(icar1)

# Complete a folder upload in GDS
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | Unique identifier for the folder related to the upload session.
var_session_id <- "session_id_example" # character | The id of the upload session
var_body <- CompleteSessionRequest$new(123) # CompleteSessionRequest | The request body

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**| Unique identifier for the folder related to the upload session. | 
 **session_id** | **character**| The id of the upload session | 
 **body** | [**CompleteSessionRequest**](CompleteSessionRequest.md)| The request body | 

### Return type

[**SessionResponse**](SessionResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Completed upload session. |  -  |
| **202** | Upload session in progress. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **409** | Conflict |  -  |
| **404** | Not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **CopyFolder**
> JobResponse CopyFolder(folder_id, body, tenant_id = var.tenant_id)

Copy a folder

Copy a folder into a target parent folder

### Example
```R
library(icar1)

# Copy a folder
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | Unique identifier for the folder to be copied.
var_body <- FolderCopyRequest$new("targetParentFolderId_example", "destinationFolderName_example", c("metadataToCopy_example"), "duplicateFileAction_example") # FolderCopyRequest | 
var_tenant_id <- "tenant_id_example" # character | Optional parameter to copy from a shared folder in another tenant (Optional)

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**| Unique identifier for the folder to be copied. | 
 **body** | [**FolderCopyRequest**](FolderCopyRequest.md)|  | 
 **tenant_id** | **character**| Optional parameter to copy from a shared folder in another tenant | [optional] 

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
| **202** | Accepted. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Folder not found. |  -  |
| **409** | Conflict. |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **CreateFolder**
> FolderWriteableResponse CreateFolder(body, include = var.include)

Create a folder in GDS and receive credentials for upload

Create a folder entry in GDS. Returns temporary credentials for folder upload directly to S3 when the include=objectStoreAccess parameter is used. Volume ID or volume name is required for folder creation. If a folder path is provided and does not exist, GDS automatically creates the folder path in the appropriate account.

### Example
```R
library(icar1)

# Create a folder in GDS and receive credentials for upload
#
# prepare function argument(s)
var_body <- CreateFolderRequest$new("name_example", "folderPath_example", "volumeId_example", "volumeName_example", 123, c("acl_example")) # CreateFolderRequest | 
var_include <- "include_example" # character | Optionally include additional fields in the response.              Possible values: ObjectStoreAccess (Optional)

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFolderRequest**](CreateFolderRequest.md)|  | 
 **include** | **character**| Optionally include additional fields in the response.              Possible values: ObjectStoreAccess | [optional] 

### Return type

[**FolderWriteableResponse**](FolderWriteableResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created new Folder. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **409** | A conflict was found. Make sure the new Folder doesn&#39;t already exist. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **CreateFolderSession**
> CreateSessionResponse CreateFolderSession(folder_id, body)

Create a session

Create a session and credentials used for accessing the object store directly

### Example
```R
library(icar1)

# Create a session
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | 
var_body <- CreateSessionRequest$new(123) # CreateSessionRequest | 

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**|  | 
 **body** | [**CreateSessionRequest**](CreateSessionRequest.md)|  | 

### Return type

[**CreateSessionResponse**](CreateSessionResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **409** | Conflict |  -  |
| **404** | Not Found |  -  |
| **0** | Error |  -  |

# **DeleteFolder**
> FolderResponse DeleteFolder(folder_id)

Deletes a folder by id

### Example
```R
library(icar1)

# Deletes a folder by id
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | Unique identifier for the folder to be deleted.

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**| Unique identifier for the folder to be deleted. | 

### Return type

[**FolderResponse**](FolderResponse.md)

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
| **404** | Folder not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetFolder**
> FolderResponse GetFolder(folder_id, tenant_id = var.tenant_id, include_volume_metadata = var.include_volume_metadata, include_active_jobs = var.include_active_jobs, metadata_include = var.metadata_include, metadata_exclude = var.metadata_exclude, include = var.include)

Get information about a folder in GDS.

Get information for the specified folder ID.

### Example
```R
library(icar1)

# Get information about a folder in GDS.
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | Unique identifier for the folder to retrieve.
var_tenant_id <- "tenant_id_example" # character | Optional parameter to see shared data in another tenant (Optional)
var_include_volume_metadata <- "include_volume_metadata_example" # character | Optional parameter to return volume's metadata (Optional)
var_include_active_jobs <- "include_active_jobs_example" # character | Optional parameter to return active jobs associated to folder (Optional)
var_metadata_include <- "metadata_include_example" # character | Optional parameter to specify comma separated patterns to include metadata by their field names. (Optional)
var_metadata_exclude <- "metadata_exclude_example" # character | Optional parameter to specify comma separated patterns to exclude metadata by their field names. (Optional)
var_include <- "include_example" # character | Optionally include additional fields in the response.              Possible values: ObjectStoreAccess (Optional)

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**| Unique identifier for the folder to retrieve. | 
 **tenant_id** | **character**| Optional parameter to see shared data in another tenant | [optional] 
 **include_volume_metadata** | **character**| Optional parameter to return volume&#39;s metadata | [optional] 
 **include_active_jobs** | **character**| Optional parameter to return active jobs associated to folder | [optional] 
 **metadata_include** | **character**| Optional parameter to specify comma separated patterns to include metadata by their field names. | [optional] 
 **metadata_exclude** | **character**| Optional parameter to specify comma separated patterns to exclude metadata by their field names. | [optional] 
 **include** | **character**| Optionally include additional fields in the response.              Possible values: ObjectStoreAccess | [optional] 

### Return type

[**FolderResponse**](FolderResponse.md)

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
| **404** | Folder not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetFolderJob**
> JobResponse GetFolderJob(folder_id, job_id)

Get status of a folder job in GDS

Get status of a folder job in GDS.

### Example
```R
library(icar1)

# Get status of a folder job in GDS
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | Unique identifier for the folder related to the job.
var_job_id <- "job_id_example" # character | The id of the job

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**| Unique identifier for the folder related to the job. | 
 **job_id** | **character**| The id of the job | 

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returned job. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **409** | Conflict |  -  |
| **404** | Not found. |  -  |
| **400** | Bad request. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetFolderSession**
> SessionResponse GetFolderSession(folder_id, session_id)

Get status of a folder upload in GDS

Get status of a folder upload in GDS.

### Example
```R
library(icar1)

# Get status of a folder upload in GDS
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | Unique identifier for the folder related to the upload session.
var_session_id <- "session_id_example" # character | The id of the upload session

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**| Unique identifier for the folder related to the upload session. | 
 **session_id** | **character**| The id of the upload session | 

### Return type

[**SessionResponse**](SessionResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Completed upload session. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **409** | Conflict |  -  |
| **404** | Not found. |  -  |
| **400** | Bad request. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListFolders**
> FolderListResponse ListFolders(volume_id = var.volume_id, volume_name = var.volume_name, path = var.path, job_statuses = var.job_statuses, acls = var.acls, recursive = var.recursive, page_size = var.page_size, page_token = var.page_token, include = var.include, tenant_id = var.tenant_id, metadata_include = var.metadata_include, metadata_exclude = var.metadata_exclude)

Get a list of folders

Given a volumeId or volume name, get a list of folders accessible by the JWT. The default sort returned is alphabetical, ascending. The default page size is 10 items

### Example
```R
library(icar1)

# Get a list of folders
#
# prepare function argument(s)
var_volume_id <- c("inner_example") # array[character] | Optional field that specifies comma-separated volume IDs to include in the list (Optional)
var_volume_name <- c("inner_example") # array[character] | Optional field that specifies comma-separated volume names to include in the list (Optional)
var_path <- c("inner_example") # array[character] | Optional field that specifies comma-separated paths to include in the list. Value can use wildcards (e.g. /a/b/c/*) or exact matches (e.g. /a/b/c/d/). (Optional)
var_job_statuses <- "job_statuses_example" # character | Optional field that specifies comma-separated JobStatuses to include in the list (Optional)
var_acls <- c("inner_example") # array[character] | Optional field that specifies comma-separated acls to include in the list (Optional)
var_recursive <- "recursive_example" # character | Optional field to specify if folders should be returned recursively in and under the specified paths, or only directly in the specified paths (Optional)
var_page_size <- 56 # integer | START_DESC END_DESC (Optional)
var_page_token <- "page_token_example" # character | START_DESC END_DESC (Optional)
var_include <- "include_example" # character | Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, InheritedAcl (Optional)
var_tenant_id <- "tenant_id_example" # character | Optional parameter to see shared data in another tenant (Optional)
var_metadata_include <- "metadata_include_example" # character | Optional parameter to specify comma separated patterns to include metadata by their field names. (Optional)
var_metadata_exclude <- "metadata_exclude_example" # character | Optional parameter to specify comma separated patterns to exclude metadata by their field names. (Optional)

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **volume_id** | list( **character** )| Optional field that specifies comma-separated volume IDs to include in the list | [optional] 
 **volume_name** | list( **character** )| Optional field that specifies comma-separated volume names to include in the list | [optional] 
 **path** | list( **character** )| Optional field that specifies comma-separated paths to include in the list. Value can use wildcards (e.g. /a/b/c/*) or exact matches (e.g. /a/b/c/d/). | [optional] 
 **job_statuses** | **character**| Optional field that specifies comma-separated JobStatuses to include in the list | [optional] 
 **acls** | list( **character** )| Optional field that specifies comma-separated acls to include in the list | [optional] 
 **recursive** | **character**| Optional field to specify if folders should be returned recursively in and under the specified paths, or only directly in the specified paths | [optional] 
 **page_size** | **integer**| START_DESC END_DESC | [optional] 
 **page_token** | **character**| START_DESC END_DESC | [optional] 
 **include** | **character**| Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, InheritedAcl | [optional] 
 **tenant_id** | **character**| Optional parameter to see shared data in another tenant | [optional] 
 **metadata_include** | **character**| Optional parameter to specify comma separated patterns to include metadata by their field names. | [optional] 
 **metadata_exclude** | **character**| Optional parameter to specify comma separated patterns to exclude metadata by their field names. | [optional] 

### Return type

[**FolderListResponse**](FolderListResponse.md)

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

# **UnarchiveFolder**
> FolderResponse UnarchiveFolder(folder_id, body)

Unarchive a folder

Unarchive a folder from a lower storage cost tier.

### Example
```R
library(icar1)

# Unarchive a folder
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | Unique identifier for the folder to be unarchived.
var_body <- FolderUnarchiveRequest$new("restoreSpeed_example") # FolderUnarchiveRequest | 

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**| Unique identifier for the folder to be unarchived. | 
 **body** | [**FolderUnarchiveRequest**](FolderUnarchiveRequest.md)|  | 

### Return type

[**FolderResponse**](FolderResponse.md)

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
| **404** | Folder not found. |  -  |
| **409** | Conflict. |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **UpdateFolder**
> FolderWriteableResponse UpdateFolder(folder_id, include = var.include, body = var.body)

Update a folder content or acl

Update an existing folder in GDS and return upload credentials for that folder. Changes to the folder name and other metadata are not supported at this time.  Optionally overwrite the acl for this folder if acl is provided in the request.

### Example
```R
library(icar1)

# Update a folder content or acl
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | Unique identifier for the folder to be updated.
var_include <- "include_example" # character | Optionally include additional fields in the response.              Possible values: ObjectStoreAccess (Optional)
var_body <- FolderUpdateRequest$new(123, c("acl_example")) # FolderUpdateRequest |  (Optional)

api_instance <- FoldersApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**| Unique identifier for the folder to be updated. | 
 **include** | **character**| Optionally include additional fields in the response.              Possible values: ObjectStoreAccess | [optional] 
 **body** | [**FolderUpdateRequest**](FolderUpdateRequest.md)|  | [optional] 

### Return type

[**FolderWriteableResponse**](FolderWriteableResponse.md)

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
| **404** | Folder not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

