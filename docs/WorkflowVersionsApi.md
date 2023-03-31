# WorkflowVersionsApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateWorkflowVersion**](WorkflowVersionsApi.md#CreateWorkflowVersion) | **POST** /v1/workflows/{workflowId}/versions | Create a new workflow version
[**GetWorkflowVersion**](WorkflowVersionsApi.md#GetWorkflowVersion) | **GET** /v1/workflows/{workflowId}/versions/{versionName} | Get the details of a workflow version
[**LaunchWorkflowVersion**](WorkflowVersionsApi.md#LaunchWorkflowVersion) | **POST** /v1/workflows/{workflowId}/versions/{versionName}:launch | Launch a workflow version
[**ListAllWorkflowVersions**](WorkflowVersionsApi.md#ListAllWorkflowVersions) | **GET** /v1/workflows/versions | Get a list of all workflow versions
[**ListWorkflowVersions**](WorkflowVersionsApi.md#ListWorkflowVersions) | **GET** /v1/workflows/{workflowId}/versions | Get a list of workflow versions
[**UpdateWorkflowVersion**](WorkflowVersionsApi.md#UpdateWorkflowVersion) | **PATCH** /v1/workflows/{workflowId}/versions/{versionName} | Update an existing workflow version


# **CreateWorkflowVersion**
> WorkflowVersion CreateWorkflowVersion(workflow_id, body = var.body)

Create a new workflow version

Creates a new workflow version with a given workflow ID.

### Example
```R
library(icar1)

# Create a new workflow version
#
# prepare function argument(s)
var_workflow_id <- "workflow_id_example" # character | ID of the workflow
var_body <- CreateWorkflowVersionRequest$new("version_example", "description_example", WorkflowLanguage$new("name_example", "version_example"), 123, c("acl_example"), "draft") # CreateWorkflowVersionRequest |  (Optional)

api_instance <- WorkflowVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **character**| ID of the workflow | 
 **body** | [**CreateWorkflowVersionRequest**](CreateWorkflowVersionRequest.md)|  | [optional] 

### Return type

[**WorkflowVersion**](WorkflowVersion.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Details of the created workflow version. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **409** | A conflict was found. Ensure the workflow version name is unique. |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetWorkflowVersion**
> WorkflowVersion GetWorkflowVersion(workflow_id, version_name)

Get the details of a workflow version

Gets the details for a workflow version with a given workflow ID and version name.

### Example
```R
library(icar1)

# Get the details of a workflow version
#
# prepare function argument(s)
var_workflow_id <- "workflow_id_example" # character | ID of the workflow
var_version_name <- "version_name_example" # character | Name of the workflow version

api_instance <- WorkflowVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **character**| ID of the workflow | 
 **version_name** | **character**| Name of the workflow version | 

### Return type

[**WorkflowVersion**](WorkflowVersion.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details of the workflow version. |  -  |
| **404** | The workflow ID or version name was not found. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **LaunchWorkflowVersion**
> WorkflowRun LaunchWorkflowVersion(workflow_id, version_name, include = var.include, body = var.body)

Launch a workflow version

Launches a workflow version with a given workflow ID and version name.

### Example
```R
library(icar1)

# Launch a workflow version
#
# prepare function argument(s)
var_workflow_id <- "workflow_id_example" # character | ID of the workflow
var_version_name <- "version_name_example" # character | Name of the workflow version
var_include <- c("definition") # array[character] | Comma-separated list of properties to include in the response (Optional)
var_body <- LaunchWorkflowVersionRequest$new("name_example", 123, 123) # LaunchWorkflowVersionRequest |  (Optional)

api_instance <- WorkflowVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **character**| ID of the workflow | 
 **version_name** | **character**| Name of the workflow version | 
 **include** | Enum [definition, engineParameters] | Comma-separated list of properties to include in the response | [optional] 
 **body** | [**LaunchWorkflowVersionRequest**](LaunchWorkflowVersionRequest.md)|  | [optional] 

### Return type

[**WorkflowRun**](WorkflowRun.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Details of the created workflow run. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListAllWorkflowVersions**
> WorkflowVersionList ListAllWorkflowVersions(tenant_id = var.tenant_id, include = var.include, page_size = 10, page_token = var.page_token, sort = "timeCreated asc")

Get a list of all workflow versions

Gets a list of workflow versions across all workflows.

### Example
```R
library(icar1)

# Get a list of all workflow versions
#
# prepare function argument(s)
var_tenant_id <- "tenant_id_example" # character | ID of the tenant (Optional)
var_include <- c("totalItemCount") # array[character] | Comma-separated list of properties to include in the response (Optional)
var_page_size <- 10 # integer | Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. (Optional)
var_page_token <- "page_token_example" # character | Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. (Optional)
var_sort <- "timeCreated asc" # character | Specifies the order to include list items as \"_{fieldName}_ [asc|desc]\". The second field is optional and specifies the sort direction (\"asc\" for ascending or \"desc\" for descending). (Optional)

api_instance <- WorkflowVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **character**| ID of the tenant | [optional] 
 **include** | Enum [totalItemCount] | Comma-separated list of properties to include in the response | [optional] 
 **page_size** | **integer**| Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. | [optional] [default to 10]
 **page_token** | **character**| Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. | [optional] 
 **sort** | **character**| Specifies the order to include list items as \&quot;_{fieldName}_ [asc|desc]\&quot;. The second field is optional and specifies the sort direction (\&quot;asc\&quot; for ascending or \&quot;desc\&quot; for descending). | [optional] [default to &quot;timeCreated asc&quot;]

### Return type

[**WorkflowVersionList**](WorkflowVersionList.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paged list of workflow versions across all workflows. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListWorkflowVersions**
> WorkflowVersionList ListWorkflowVersions(workflow_id, include = var.include, page_size = 10, page_token = var.page_token, sort = "timeCreated asc")

Get a list of workflow versions

Gets a list of workflow versions with a given workflow ID.

### Example
```R
library(icar1)

# Get a list of workflow versions
#
# prepare function argument(s)
var_workflow_id <- "workflow_id_example" # character | ID of the workflow
var_include <- c("totalItemCount") # array[character] | Comma-separated list of properties to include in the response (Optional)
var_page_size <- 10 # integer | Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. (Optional)
var_page_token <- "page_token_example" # character | Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. (Optional)
var_sort <- "timeCreated asc" # character | Specifies the order to include list items as \"_{fieldName}_ [asc|desc]\". The second field is optional and specifies the sort direction (\"asc\" for ascending or \"desc\" for descending). (Optional)

api_instance <- WorkflowVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **character**| ID of the workflow | 
 **include** | Enum [totalItemCount] | Comma-separated list of properties to include in the response | [optional] 
 **page_size** | **integer**| Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. | [optional] [default to 10]
 **page_token** | **character**| Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. | [optional] 
 **sort** | **character**| Specifies the order to include list items as \&quot;_{fieldName}_ [asc|desc]\&quot;. The second field is optional and specifies the sort direction (\&quot;asc\&quot; for ascending or \&quot;desc\&quot; for descending). | [optional] [default to &quot;timeCreated asc&quot;]

### Return type

[**WorkflowVersionList**](WorkflowVersionList.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paged list of workflow versions that the user has access to. |  -  |
| **404** | The workflow with the specified ID was not found. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **UpdateWorkflowVersion**
> WorkflowVersion UpdateWorkflowVersion(workflow_id, version_name, body = var.body)

Update an existing workflow version

Updates an existing workflow version. Note: The Version, Definition, and Status cannot be changed simultaneously. Only one of these can be changed per API call.

### Example
```R
library(icar1)

# Update an existing workflow version
#
# prepare function argument(s)
var_workflow_id <- "workflow_id_example" # character | ID of the workflow
var_version_name <- "version_name_example" # character | Name of the workflow version
var_body <- UpdateWorkflowVersionRequest$new("version_example", "description_example", WorkflowLanguage$new("name_example", "version_example"), 123, c("acl_example"), "draft") # UpdateWorkflowVersionRequest |  (Optional)

api_instance <- WorkflowVersionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **character**| ID of the workflow | 
 **version_name** | **character**| Name of the workflow version | 
 **body** | [**UpdateWorkflowVersionRequest**](UpdateWorkflowVersionRequest.md)|  | [optional] 

### Return type

[**WorkflowVersion**](WorkflowVersion.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details of the created workflow run. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **409** | A conflict was found. Ensure the workflow version name is unique. |  -  |
| **404** | The workflow ID or version name was not found. |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

