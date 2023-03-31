# WorkflowRunsApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AbortWorkflowRun**](WorkflowRunsApi.md#AbortWorkflowRun) | **PUT** /v1/workflows/runs/{runId}:abort | Abort a workflow run
[**GetWorkflowRun**](WorkflowRunsApi.md#GetWorkflowRun) | **GET** /v1/workflows/runs/{runId} | Get the details of a workflow run
[**ListWorkflowRunHistory**](WorkflowRunsApi.md#ListWorkflowRunHistory) | **GET** /v1/workflows/runs/{runId}/history | Get a list of workflow run history events
[**ListWorkflowRuns**](WorkflowRunsApi.md#ListWorkflowRuns) | **GET** /v1/workflows/runs | Get a list of workflow runs


# **AbortWorkflowRun**
> WorkflowRun AbortWorkflowRun(run_id, include = var.include, body = var.body)

Abort a workflow run

Aborts the workflow run with a given ID.

### Example
```R
library(icar1)

# Abort a workflow run
#
# prepare function argument(s)
var_run_id <- "run_id_example" # character | ID of the workflow run
var_include <- c("definition") # array[character] | Comma-separated list of properties to include in the response (Optional)
var_body <- AbortWorkflowRunRequest$new("error_example", "cause_example") # AbortWorkflowRunRequest |  (Optional)

api_instance <- WorkflowRunsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | **character**| ID of the workflow run | 
 **include** | Enum [definition, engineParameters] | Comma-separated list of properties to include in the response | [optional] 
 **body** | [**AbortWorkflowRunRequest**](AbortWorkflowRunRequest.md)|  | [optional] 

### Return type

[**WorkflowRun**](WorkflowRun.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details of the aborted workflow run. |  -  |
| **404** | The workflow run with the specified ID was not found. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetWorkflowRun**
> WorkflowRun GetWorkflowRun(run_id, include = var.include)

Get the details of a workflow run

Gets the details of a workflow run with a given ID.

### Example
```R
library(icar1)

# Get the details of a workflow run
#
# prepare function argument(s)
var_run_id <- "run_id_example" # character | ID of the workflow run
var_include <- c("definition") # array[character] | Comma-separated list of properties to include in the response (Optional)

api_instance <- WorkflowRunsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | **character**| ID of the workflow run | 
 **include** | Enum [definition, engineParameters] | Comma-separated list of properties to include in the response | [optional] 

### Return type

[**WorkflowRun**](WorkflowRun.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details of the workflow run. |  -  |
| **404** | The workflow run with the specified ID was not found. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListWorkflowRunHistory**
> WorkflowRunHistoryEventList ListWorkflowRunHistory(run_id, sort = "eventId asc", include = var.include, page_size = 10, page_token = var.page_token)

Get a list of workflow run history events

Gets a list of history events for a workflow run with a given ID.

### Example
```R
library(icar1)

# Get a list of workflow run history events
#
# prepare function argument(s)
var_run_id <- "run_id_example" # character | ID of the workflow run
var_sort <- "eventId asc" # character |  (Optional)
var_include <- c("totalItemCount") # array[character] | Comma-separated list of properties to include in the response (Optional)
var_page_size <- 10 # integer | Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. (Optional)
var_page_token <- "page_token_example" # character | Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. (Optional)

api_instance <- WorkflowRunsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_id** | **character**| ID of the workflow run | 
 **sort** | **character**|  | [optional] [default to &quot;eventId asc&quot;]
 **include** | Enum [totalItemCount] | Comma-separated list of properties to include in the response | [optional] 
 **page_size** | **integer**| Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. | [optional] [default to 10]
 **page_token** | **character**| Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. | [optional] 

### Return type

[**WorkflowRunHistoryEventList**](WorkflowRunHistoryEventList.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paged list of workflow run history events. |  -  |
| **404** | The workflow run with the specified ID was not found. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListWorkflowRuns**
> WorkflowRunList ListWorkflowRuns(status = var.status, tenant_id = var.tenant_id, name = var.name, include = var.include, page_size = 10, page_token = var.page_token, sort = "timeCreated asc")

Get a list of workflow runs

Gets a list of workflow runs.

### Example
```R
library(icar1)

# Get a list of workflow runs
#
# prepare function argument(s)
var_status <- c("aborted") # array[character] |  (Optional)
var_tenant_id <- "tenant_id_example" # character | ID of the tenant (Optional)
var_name <- "name_example" # character |  (Optional)
var_include <- c("totalItemCount") # array[character] | Comma-separated list of properties to include in the response (Optional)
var_page_size <- 10 # integer | Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. (Optional)
var_page_token <- "page_token_example" # character | Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. (Optional)
var_sort <- "timeCreated asc" # character | Specifies the order to include list items as \"_{fieldName}_ [asc|desc]\". The second field is optional and specifies the sort direction (\"asc\" for ascending or \"desc\" for descending). (Optional)

api_instance <- WorkflowRunsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | Enum [aborted, aborting, failed, new, running, submitted, succeeded, timedOut] |  | [optional] 
 **tenant_id** | **character**| ID of the tenant | [optional] 
 **name** | **character**|  | [optional] 
 **include** | Enum [totalItemCount] | Comma-separated list of properties to include in the response | [optional] 
 **page_size** | **integer**| Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. | [optional] [default to 10]
 **page_token** | **character**| Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. | [optional] 
 **sort** | **character**| Specifies the order to include list items as \&quot;_{fieldName}_ [asc|desc]\&quot;. The second field is optional and specifies the sort direction (\&quot;asc\&quot; for ascending or \&quot;desc\&quot; for descending). | [optional] [default to &quot;timeCreated asc&quot;]

### Return type

[**WorkflowRunList**](WorkflowRunList.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paged list of workflow runs that the user has access to. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

