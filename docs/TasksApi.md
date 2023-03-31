# TasksApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateTask**](TasksApi.md#CreateTask) | **POST** /v1/tasks | Create a Task
[**GetTask**](TasksApi.md#GetTask) | **GET** /v1/tasks/{taskId} | Get the details of a Task
[**ListTasks**](TasksApi.md#ListTasks) | **GET** /v1/tasks | Get a list of tasks
[**UpdateTask**](TasksApi.md#UpdateTask) | **PATCH** /v1/tasks/{taskId} | Update an existing task.


# **CreateTask**
> Task CreateTask(body = var.body)

Create a Task

Creates a task. Returns the ID associated with the new task. Also returns the task version ID associated with the new task, if provided. Substitutions can be defined in the following format: \"{{string}}\", and specified at launch time.

### Example
```R
library(icar1)

# Create a Task
#
# prepare function argument(s)
var_body <- CreateTaskRequest$new("name_example", "description_example", c("acl_example"), c(CreateTaskVersionRequest$new("version_example", "description_example", Execution$new(Image$new("name_example", "tag_example", "digest_example", Credentials$new("username_example", "password_example")), "command_example", c("args_example"), c(InputMountMappingWithCreds$new("storageProvider_example", c(key = "inner_example"), "path_example", "url_example", "urn_example", "mode_example", "type_example")), c(MountMappingWithCreds$new("path_example", "url_example", "urn_example", "type_example", "storageProvider_example", c(key = "inner_example"), "serviceUrl_example")), SystemFiles$new("url_example", "urn_example", "storageProvider_example", c(key = "inner_example")), Environment$new(c(key = "inner_example"), Resources$new("type_example", "size_example", 123, 123, c(...), "tier_example"), InputStreamSettings$new("accessPattern_example", 123, 123, 123)), "workingDirectory_example", 123, 123), c("acl_example")))) # CreateTaskRequest |  (Optional)

api_instance <- TasksApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateTaskRequest**](CreateTaskRequest.md)|  | [optional] 

### Return type

[**Task**](Task.md)

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

# **GetTask**
> TaskSummary GetTask(task_id)

Get the details of a Task

Gets the details of a Task for a given task ID.

### Example
```R
library(icar1)

# Get the details of a Task
#
# prepare function argument(s)
var_task_id <- "task_id_example" # character | 

api_instance <- TasksApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **character**|  | 

### Return type

[**TaskSummary**](TaskSummary.md)

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

# **ListTasks**
> TaskSummaryPagedItems ListTasks(names = var.names, acls = var.acls, page_size = 10, sort = "timeCreated asc", page_token = var.page_token)

Get a list of tasks

Gets a list of tasks accessible by the current tenant ID.

### Example
```R
library(icar1)

# Get a list of tasks
#
# prepare function argument(s)
var_names <- "names_example" # character | Name: Optional parameter to filter the returned list. Case-Sensitive (Optional)
var_acls <- "acls_example" # character | Name: Optional parameter to filter the returned list. Case-Sensitive (Optional)
var_page_size <- 10 # integer | Optional parameter to define the page size returned. Valid inputs range from 1-1000. (Optional)
var_sort <- "timeCreated asc" # character | Sort: Optional parameter to set the sort of the returned list. Valid fields include: name, timeCreated, timeModified.  The sort can be specified as asc or desc. (Default: asc.) (Optional)
var_page_token <- "page_token_example" # character | pageToken: Optional parameter for navigation after initial listing. Valid values include firstPageToken,  nextPageToken, and previousPageToken (provided in the list response) (Optional)

api_instance <- TasksApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **names** | **character**| Name: Optional parameter to filter the returned list. Case-Sensitive | [optional] 
 **acls** | **character**| Name: Optional parameter to filter the returned list. Case-Sensitive | [optional] 
 **page_size** | **integer**| Optional parameter to define the page size returned. Valid inputs range from 1-1000. | [optional] [default to 10]
 **sort** | **character**| Sort: Optional parameter to set the sort of the returned list. Valid fields include: name, timeCreated, timeModified.  The sort can be specified as asc or desc. (Default: asc.) | [optional] [default to &quot;timeCreated asc&quot;]
 **page_token** | **character**| pageToken: Optional parameter for navigation after initial listing. Valid values include firstPageToken,  nextPageToken, and previousPageToken (provided in the list response) | [optional] 

### Return type

[**TaskSummaryPagedItems**](TaskSummaryPagedItems.md)

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

# **UpdateTask**
> Task UpdateTask(task_id, body = var.body)

Update an existing task.

Updates the task with a given ID. The task's name, description can be updated. The task's name must remain unique.

### Example
```R
library(icar1)

# Update an existing task.
#
# prepare function argument(s)
var_task_id <- "task_id_example" # character | 
var_body <- UpdateTaskRequest$new("name_example", "description_example", c("acl_example")) # UpdateTaskRequest | Details of the task to be updated. (Optional)

api_instance <- TasksApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **character**|  | 
 **body** | [**UpdateTaskRequest**](UpdateTaskRequest.md)| Details of the task to be updated. | [optional] 

### Return type

[**Task**](Task.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **409** | Conflict |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

