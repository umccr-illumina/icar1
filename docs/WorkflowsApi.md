# WorkflowsApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateWorkflow**](WorkflowsApi.md#CreateWorkflow) | **POST** /v1/workflows | Create a workflow
[**GetWorkflow**](WorkflowsApi.md#GetWorkflow) | **GET** /v1/workflows/{workflowId} | Get the details of a workflow
[**ListWorkflows**](WorkflowsApi.md#ListWorkflows) | **GET** /v1/workflows | Get a list of workflows
[**UpdateWorkflow**](WorkflowsApi.md#UpdateWorkflow) | **PATCH** /v1/workflows/{workflowId} | Update an existing workflow


# **CreateWorkflow**
> Workflow CreateWorkflow(body = var.body)

Create a workflow

Creates a new workflow and version (if provided).

### Example
```R
library(icar1)

# Create a workflow
#
# prepare function argument(s)
var_body <- CreateWorkflowRequest$new("name_example", "description_example", "organization_example", CreateWorkflowVersionRequest$new("version_example", "description_example", WorkflowLanguage$new("name_example", "version_example"), 123, c("acl_example"), "draft"), "workflow", c("acl_example"), c("categories_example")) # CreateWorkflowRequest |  (Optional)

api_instance <- WorkflowsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateWorkflowRequest**](CreateWorkflowRequest.md)|  | [optional] 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Details of the newly created workflow. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **409** | A conflict was found. Ensure the workflow name is unique. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetWorkflow**
> Workflow GetWorkflow(workflow_id)

Get the details of a workflow

Gets the details of a workflow with a given ID.

### Example
```R
library(icar1)

# Get the details of a workflow
#
# prepare function argument(s)
var_workflow_id <- "workflow_id_example" # character | ID of the workflow

api_instance <- WorkflowsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **character**| ID of the workflow | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details of the workflow. |  -  |
| **404** | The workflow with the specified ID was not found. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListWorkflows**
> WorkflowList ListWorkflows(tenant_id = var.tenant_id, name = var.name, categories = var.categories, include = var.include, page_size = 10, page_token = var.page_token, sort = "timeCreated asc")

Get a list of workflows

Gets a list of workflows.

### Example
```R
library(icar1)

# Get a list of workflows
#
# prepare function argument(s)
var_tenant_id <- "tenant_id_example" # character | ID of the tenant (Optional)
var_name <- "name_example" # character |  (Optional)
var_categories <- c("inner_example") # array[character] |  (Optional)
var_include <- c("totalItemCount") # array[character] | Comma-separated list of properties to include in the response (Optional)
var_page_size <- 10 # integer | Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. (Optional)
var_page_token <- "page_token_example" # character | Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. (Optional)
var_sort <- "timeCreated asc" # character | Specifies the order to include list items as \"_{fieldName}_ [asc|desc]\". The second field is optional and specifies the sort direction (\"asc\" for ascending or \"desc\" for descending). (Optional)

api_instance <- WorkflowsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **character**| ID of the tenant | [optional] 
 **name** | **character**|  | [optional] 
 **categories** | list( **character** )|  | [optional] 
 **include** | Enum [totalItemCount] | Comma-separated list of properties to include in the response | [optional] 
 **page_size** | **integer**| Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. | [optional] [default to 10]
 **page_token** | **character**| Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. | [optional] 
 **sort** | **character**| Specifies the order to include list items as \&quot;_{fieldName}_ [asc|desc]\&quot;. The second field is optional and specifies the sort direction (\&quot;asc\&quot; for ascending or \&quot;desc\&quot; for descending). | [optional] [default to &quot;timeCreated asc&quot;]

### Return type

[**WorkflowList**](WorkflowList.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paged list of workflows. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **UpdateWorkflow**
> Workflow UpdateWorkflow(workflow_id, body = var.body)

Update an existing workflow

Updates the workflow with a given ID.

### Example
```R
library(icar1)

# Update an existing workflow
#
# prepare function argument(s)
var_workflow_id <- "workflow_id_example" # character | ID of the workflow
var_body <- UpdateWorkflowRequest$new("name_example", "description_example", "organization_example", c("acl_example"), c("categories_example")) # UpdateWorkflowRequest |  (Optional)

api_instance <- WorkflowsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **character**| ID of the workflow | 
 **body** | [**UpdateWorkflowRequest**](UpdateWorkflowRequest.md)|  | [optional] 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns updated workflow. |  -  |
| **404** | The workflow with the specified ID was not found. |  -  |
| **400** | Invalid request. |  -  |
| **401** | Unauthorized |  -  |
| **403** | Permission denied. |  -  |
| **409** | A conflict was found. Ensure the workflow name is unique. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

