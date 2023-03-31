# TaskRunsApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AbortTaskRun**](TaskRunsApi.md#AbortTaskRun) | **PUT** /v1/tasks/runs/{runId}:abort | Abort a task run
[**CreateTaskRun**](TaskRunsApi.md#CreateTaskRun) | **POST** /v1/tasks/runs | Create and launch a task run
[**GetTaskRun**](TaskRunsApi.md#GetTaskRun) | **GET** /v1/tasks/runs/{runId} | Get the status of a task run
[**HeartbeatTaskRun**](TaskRunsApi.md#HeartbeatTaskRun) | **POST** /v1/tasks/runs/{runId}:heartbeat | Heartbeat for a task run
[**ListTaskRuns**](TaskRunsApi.md#ListTaskRuns) | **GET** /v1/tasks/runs | Get a list of task runs


# **AbortTaskRun**
> TaskRunSummary AbortTaskRun(run_id)

Abort a task run

Aborts a task run for a given task run ID. The task run is required to have a status of \"Pending\" or \"Running\".

### Example
```R
library(icar1)

# Abort a task run
#
# prepare function argument(s)
var_run_id <- "run_id_example" # character | 

api_instance <- TaskRunsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | **character**|  | 

### Return type

[**TaskRunSummary**](TaskRunSummary.md)

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

# **CreateTaskRun**
> TaskRun CreateTaskRun(body = var.body)

Create and launch a task run

Creates and launches a task run. Returns the ID and status associated with the new task run.

### Example
```R
library(icar1)

# Create and launch a task run
#
# prepare function argument(s)
var_body <- CreateTaskRunRequest$new("name_example", "description_example", c("acl_example"), Execution$new(Image$new("name_example", "tag_example", "digest_example", Credentials$new("username_example", "password_example")), "command_example", c("args_example"), c(InputMountMappingWithCreds$new("storageProvider_example", c(key = "inner_example"), "path_example", "url_example", "urn_example", "mode_example", "type_example")), c(MountMappingWithCreds$new("path_example", "url_example", "urn_example", "type_example", "storageProvider_example", c(key = "inner_example"), "serviceUrl_example")), SystemFiles$new("url_example", "urn_example", "storageProvider_example", c(key = "inner_example")), Environment$new(c(key = "inner_example"), Resources$new("type_example", "size_example", 123, 123, c("hardware_example"), "tier_example"), InputStreamSettings$new("accessPattern_example", 123, 123, 123)), "workingDirectory_example", 123, 123)) # CreateTaskRunRequest |  (Optional)

api_instance <- TaskRunsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateTaskRunRequest**](CreateTaskRunRequest.md)|  | [optional] 

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
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetTaskRun**
> TaskRun GetTaskRun(run_id)

Get the status of a task run

Gets the status of a task run for a given task run ID.

### Example
```R
library(icar1)

# Get the status of a task run
#
# prepare function argument(s)
var_run_id <- "run_id_example" # character | 

api_instance <- TaskRunsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | **character**|  | 

### Return type

[**TaskRun**](TaskRun.md)

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

# **HeartbeatTaskRun**
> TaskRunHeartbeat HeartbeatTaskRun(run_id, body = var.body)

Heartbeat for a task run

Heartbeat a task run for a given task run ID. This notifies TES that a task run is executing.

### Example
```R
library(icar1)

# Heartbeat for a task run
#
# prepare function argument(s)
var_run_id <- "run_id_example" # character | 
var_body <- HeartbeatTaskRunRequest$new("lastHeartbeat_example", "podName_example", "podUID_example", "podHardwareDetails_example", 123, "nonce_example", c(ContainerStatus$new("name_example", ContainerState$new(ContainerStateWaiting$new("reason_example", "message_example"), ContainerStateRunning$new("startedAt_example"), ContainerStateTerminated$new(123, 123, "reason_example", "message_example", "startedAt_example", "finishedAt_example", "containerID_example"))))) # HeartbeatTaskRunRequest |  (Optional)

api_instance <- TaskRunsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | **character**|  | 
 **body** | [**HeartbeatTaskRunRequest**](HeartbeatTaskRunRequest.md)|  | [optional] 

### Return type

[**TaskRunHeartbeat**](TaskRunHeartbeat.md)

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

# **ListTaskRuns**
> TaskRunSummaryPagedItems ListTaskRuns(sort = var.sort, names = var.names, status = var.status, versions = var.versions, acls = var.acls, page_size = 10, page_token = var.page_token)

Get a list of task runs

Get a list of task runs accessible by the current tenant ID.

### Example
```R
library(icar1)

# Get a list of task runs
#
# prepare function argument(s)
var_sort <- "sort_example" # character | Sort: Optional parameter to set the sort of the returned list. Valid fields include: name, status, timeCreated, timeModified.  The sort can be specified as asc or desc. (Default: asc.) (Optional)
var_names <- "names_example" # character |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_versions <- "versions_example" # character |  (Optional)
var_acls <- "acls_example" # character |  (Optional)
var_page_size <- 10 # integer | Optional parameter to define the page size returned. Valid inputs range from 1-1000. (Optional)
var_page_token <- "page_token_example" # character | pageToken: Optional parameter for navigation after initial listing. Valid values include firstPageToken,  nextPageToken, and previousPageToken (provided in the list response) (Optional)

api_instance <- TaskRunsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **character**| Sort: Optional parameter to set the sort of the returned list. Valid fields include: name, status, timeCreated, timeModified.  The sort can be specified as asc or desc. (Default: asc.) | [optional] 
 **names** | **character**|  | [optional] 
 **status** | **character**|  | [optional] 
 **versions** | **character**|  | [optional] 
 **acls** | **character**|  | [optional] 
 **page_size** | **integer**| Optional parameter to define the page size returned. Valid inputs range from 1-1000. | [optional] [default to 10]
 **page_token** | **character**| pageToken: Optional parameter for navigation after initial listing. Valid values include firstPageToken,  nextPageToken, and previousPageToken (provided in the list response) | [optional] 

### Return type

[**TaskRunSummaryPagedItems**](TaskRunSummaryPagedItems.md)

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
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

