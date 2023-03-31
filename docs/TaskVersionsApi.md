# TaskVersionsApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateTaskVersion**](TaskVersionsApi.md#CreateTaskVersion) | **POST** /v1/tasks/{taskId}/versions | Create a task version
[**GetTaskVersion**](TaskVersionsApi.md#GetTaskVersion) | **GET** /v1/tasks/{taskId}/versions/{versionId} | Get the details of a task version
[**LaunchTaskRun**](TaskVersionsApi.md#LaunchTaskRun) | **POST** /v1/tasks/{taskId}/versions/{versionId}:launch | Launch a task version
[**ListTaskVersions**](TaskVersionsApi.md#ListTaskVersions) | **GET** /v1/tasks/{taskId}/versions | Get a list of versions
[**UpdateTaskVersion**](TaskVersionsApi.md#UpdateTaskVersion) | **PATCH** /v1/tasks/{taskId}/versions/{versionId} | Update task version properties


# **CreateTaskVersion**
> TaskVersion CreateTaskVersion(task_id, body = var.body)

Create a task version

Creates a new task version within an existing task. Returns the ID associated with the new task version. Substitutions can be defined in the following format: \"{{string}}\", and specified at launch time.

### Example
```R
library(icar1)

# Create a task version
#
# prepare function argument(s)
var_task_id <- "task_id_example" # character | 
var_body <- CreateTaskVersionRequest$new("version_example", "description_example", Execution$new(Image$new("name_example", "tag_example", "digest_example", Credentials$new("username_example", "password_example")), "command_example", c("args_example"), c(InputMountMappingWithCreds$new("storageProvider_example", c(key = "inner_example"), "path_example", "url_example", "urn_example", "mode_example", "type_example")), c(MountMappingWithCreds$new("path_example", "url_example", "urn_example", "type_example", "storageProvider_example", c(key = "inner_example"), "serviceUrl_example")), SystemFiles$new("url_example", "urn_example", "storageProvider_example", c(key = "inner_example")), Environment$new(c(key = "inner_example"), Resources$new("type_example", "size_example", 123, 123, c("hardware_example"), "tier_example"), InputStreamSettings$new("accessPattern_example", 123, 123, 123)), "workingDirectory_example", 123, 123), c("acl_example")) # CreateTaskVersionRequest |  (Optional)

api_instance <- TaskVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **character**|  | 
 **body** | [**CreateTaskVersionRequest**](CreateTaskVersionRequest.md)|  | [optional] 

### Return type

[**TaskVersion**](TaskVersion.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Success |  -  |
| **409** | Conflict |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetTaskVersion**
> TaskVersion GetTaskVersion(task_id, version_id)

Get the details of a task version

Gets details of a task version for a given task version ID.

### Example
```R
library(icar1)

# Get the details of a task version
#
# prepare function argument(s)
var_task_id <- "task_id_example" # character | 
var_version_id <- "version_id_example" # character | 

api_instance <- TaskVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **character**|  | 
 **version_id** | **character**|  | 

### Return type

[**TaskVersion**](TaskVersion.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **LaunchTaskRun**
> TaskRun LaunchTaskRun(task_id, version_id, body = var.body)

Launch a task version

Launches a task version for a given task version ID. Returns the ID associated with the new task run. Substitutions defined in the task version must be specified.

### Example
```R
library(icar1)

# Launch a task version
#
# prepare function argument(s)
var_task_id <- "task_id_example" # character | 
var_version_id <- "version_id_example" # character | 
var_body <- LaunchTaskRequest$new("name_example", "description_example", c(key = "inner_example"), c("acl_example")) # LaunchTaskRequest |  (Optional)

api_instance <- TaskVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **character**|  | 
 **version_id** | **character**|  | 
 **body** | [**LaunchTaskRequest**](LaunchTaskRequest.md)|  | [optional] 

### Return type

[**TaskRun**](TaskRun.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Success |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListTaskVersions**
> TaskVersionSummaryPagedItems ListTaskVersions(task_id, sort = var.sort, versions = var.versions, ids = var.ids, acls = var.acls, page_size = 10, page_token = var.page_token)

Get a list of versions

Gets a list of task versions within the given task accessible by the current tenant ID.

### Example
```R
library(icar1)

# Get a list of versions
#
# prepare function argument(s)
var_task_id <- "task_id_example" # character | 
var_sort <- "sort_example" # character | Sort: Optional parameter to set the sort of the returned list. Valid fields include: name, version, timeCreated, timeModified.  The sort can be specified as asc or desc. (Default: asc.) (Optional)
var_versions <- "versions_example" # character |  (Optional)
var_ids <- "ids_example" # character |  (Optional)
var_acls <- "acls_example" # character |  (Optional)
var_page_size <- 10 # integer | Optional parameter to define the page size returned. Valid inputs range from 1-1000. (Optional)
var_page_token <- "page_token_example" # character | pageToken: Optional parameter for navigation after initial listing. Valid values include firstPageToken,  nextPageToken, and previousPageToken (provided in the list response) (Optional)

api_instance <- TaskVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **character**|  | 
 **sort** | **character**| Sort: Optional parameter to set the sort of the returned list. Valid fields include: name, version, timeCreated, timeModified.  The sort can be specified as asc or desc. (Default: asc.) | [optional] 
 **versions** | **character**|  | [optional] 
 **ids** | **character**|  | [optional] 
 **acls** | **character**|  | [optional] 
 **page_size** | **integer**| Optional parameter to define the page size returned. Valid inputs range from 1-1000. | [optional] [default to 10]
 **page_token** | **character**| pageToken: Optional parameter for navigation after initial listing. Valid values include firstPageToken,  nextPageToken, and previousPageToken (provided in the list response) | [optional] 

### Return type

[**TaskVersionSummaryPagedItems**](TaskVersionSummaryPagedItems.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **UpdateTaskVersion**
> TaskVersion UpdateTaskVersion(task_id, version_id, body = var.body)

Update task version properties

Update details of a task version for a given task version ID.

### Example
```R
library(icar1)

# Update task version properties
#
# prepare function argument(s)
var_task_id <- "task_id_example" # character | 
var_version_id <- "version_id_example" # character | 
var_body <- UpdateTaskVersionRequest$new("version_example", "description_example", Execution$new(Image$new("name_example", "tag_example", "digest_example", Credentials$new("username_example", "password_example")), "command_example", c("args_example"), c(InputMountMappingWithCreds$new("storageProvider_example", c(key = "inner_example"), "path_example", "url_example", "urn_example", "mode_example", "type_example")), c(MountMappingWithCreds$new("path_example", "url_example", "urn_example", "type_example", "storageProvider_example", c(key = "inner_example"), "serviceUrl_example")), SystemFiles$new("url_example", "urn_example", "storageProvider_example", c(key = "inner_example")), Environment$new(c(key = "inner_example"), Resources$new("type_example", "size_example", 123, 123, c("hardware_example"), "tier_example"), InputStreamSettings$new("accessPattern_example", 123, 123, 123)), "workingDirectory_example", 123, 123), c("acl_example")) # UpdateTaskVersionRequest |  (Optional)

api_instance <- TaskVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **character**|  | 
 **version_id** | **character**|  | 
 **body** | [**UpdateTaskVersionRequest**](UpdateTaskVersionRequest.md)|  | [optional] 

### Return type

[**TaskVersion**](TaskVersion.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

