# WorkflowSignalsApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FailSignal**](WorkflowSignalsApi.md#FailSignal) | **PATCH** /v1/workflows/signals/{signalId}:fail | Fail a workflow signal
[**GetSignal**](WorkflowSignalsApi.md#GetSignal) | **GET** /v1/workflows/signals/{signalId} | Get the details of a workflow signal
[**ListSignals**](WorkflowSignalsApi.md#ListSignals) | **GET** /v1/workflows/signals | Get a list of workflow signals
[**SucceedSignal**](WorkflowSignalsApi.md#SucceedSignal) | **PATCH** /v1/workflows/signals/{signalId}:succeed | Succeed a workflow signal


# **FailSignal**
> WorkflowSignal FailSignal(signal_id, body = var.body)

Fail a workflow signal

Responds to a pending workflow signal with a failure result.

### Example
```R
library(icar1)

# Fail a workflow signal
#
# prepare function argument(s)
var_signal_id <- "signal_id_example" # character | ID of the workflow signal
var_body <- FailWorkflowSignalRequest$new("error_example", "cause_example") # FailWorkflowSignalRequest |  (Optional)

api_instance <- WorkflowSignalsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signal_id** | **character**| ID of the workflow signal | 
 **body** | [**FailWorkflowSignalRequest**](FailWorkflowSignalRequest.md)|  | [optional] 

### Return type

[**WorkflowSignal**](WorkflowSignal.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns the failed signal. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **404** | The signal with the specified ID was not found. |  -  |
| **409** | The workflow signal is no longer active. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetSignal**
> WorkflowSignal GetSignal(signal_id)

Get the details of a workflow signal

Gets the details of a workflow signal with a given ID.

### Example
```R
library(icar1)

# Get the details of a workflow signal
#
# prepare function argument(s)
var_signal_id <- "signal_id_example" # character | ID of the workflow signal

api_instance <- WorkflowSignalsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signal_id** | **character**| ID of the workflow signal | 

### Return type

[**WorkflowSignal**](WorkflowSignal.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details of the workflow signal. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **404** | The signal with the specified ID was not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListSignals**
> WorkflowSignalList ListSignals(tenant_id = var.tenant_id, include = var.include, page_size = 10, page_token = var.page_token, sort = "timeCreated asc")

Get a list of workflow signals

Gets a list of workflow signals.

### Example
```R
library(icar1)

# Get a list of workflow signals
#
# prepare function argument(s)
var_tenant_id <- "tenant_id_example" # character | ID of the tenant (Optional)
var_include <- c("inner_example") # array[character] | Comma-separated list of properties to include in the response (Optional)
var_page_size <- 10 # integer | Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. (Optional)
var_page_token <- "page_token_example" # character | Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. (Optional)
var_sort <- "timeCreated asc" # character | Specifies the order to include list items as \"_{fieldName}_ [asc|desc]\". The second field is optional and specifies the sort direction (\"asc\" for ascending or \"desc\" for descending). (Optional)

api_instance <- WorkflowSignalsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **character**| ID of the tenant | [optional] 
 **include** | list( **character** )| Comma-separated list of properties to include in the response | [optional] 
 **page_size** | **integer**| Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. | [optional] [default to 10]
 **page_token** | **character**| Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. | [optional] 
 **sort** | **character**| Specifies the order to include list items as \&quot;_{fieldName}_ [asc|desc]\&quot;. The second field is optional and specifies the sort direction (\&quot;asc\&quot; for ascending or \&quot;desc\&quot; for descending). | [optional] [default to &quot;timeCreated asc&quot;]

### Return type

[**WorkflowSignalList**](WorkflowSignalList.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paged list of workflow signals that the user has access to. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **SucceedSignal**
> WorkflowSignal SucceedSignal(signal_id, body = var.body)

Succeed a workflow signal

Responds to a pending workflow signal with a successful result.

### Example
```R
library(icar1)

# Succeed a workflow signal
#
# prepare function argument(s)
var_signal_id <- "signal_id_example" # character | ID of the workflow signal
var_body <- SucceedWorkflowSignalRequest$new(123) # SucceedWorkflowSignalRequest |  (Optional)

api_instance <- WorkflowSignalsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signal_id** | **character**| ID of the workflow signal | 
 **body** | [**SucceedWorkflowSignalRequest**](SucceedWorkflowSignalRequest.md)|  | [optional] 

### Return type

[**WorkflowSignal**](WorkflowSignal.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns the succeeded signal. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **404** | The signal with the specified ID was not found. |  -  |
| **409** | The workflow signal is no longer active. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

