# JobsApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AbortJob**](JobsApi.md#AbortJob) | **POST** /v1/jobs/{jobId}:abort | Abort a job in GDS.
[**GetJob**](JobsApi.md#GetJob) | **GET** /v1/jobs/{jobId} | Get information about a job in GDS.
[**ListJobs**](JobsApi.md#ListJobs) | **GET** /v1/jobs | Get a list of jobs for a given folder


# **AbortJob**
> JobResponse AbortJob(job_id)

Abort a job in GDS.

Abort the specified job ID.

### Example
```R
library(icar1)

# Abort a job in GDS.
#
# prepare function argument(s)
var_job_id <- "job_id_example" # character | Unique identifier for the job to be aborted.

api_instance <- JobsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **character**| Unique identifier for the job to be aborted. | 

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
| **202** | Accepted. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Job not found. |  -  |
| **409** | Conflict. |  -  |
| **500** | Server Error |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetJob**
> JobResponse GetJob(job_id, tenant_id = var.tenant_id, include_errors = var.include_errors)

Get information about a job in GDS.

Get information for the specified job ID.

### Example
```R
library(icar1)

# Get information about a job in GDS.
#
# prepare function argument(s)
var_job_id <- "job_id_example" # character | Unique identifier for the job to retrieve.
var_tenant_id <- "tenant_id_example" # character | Optional parameter to see shared data in another tenant (Optional)
var_include_errors <- "include_errors_example" # character |  (Optional)

api_instance <- JobsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **character**| Unique identifier for the job to retrieve. | 
 **tenant_id** | **character**| Optional parameter to see shared data in another tenant | [optional] 
 **include_errors** | **character**|  | [optional] 

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
| **200** | Success. |  -  |
| **400** | Bad request. |  -  |
| **401** | Unauthorized. |  -  |
| **403** | Forbidden. |  -  |
| **404** | Job not found. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListJobs**
> JobListResponse ListJobs(folder_id, job_statuses = var.job_statuses, page_size = var.page_size, page_token = var.page_token, include = var.include)

Get a list of jobs for a given folder

Given a folder id, get a list of jobs accessible by the JWT. The default sort returned is by job progress status. The default page size is 10 items

### Example
```R
library(icar1)

# Get a list of jobs for a given folder
#
# prepare function argument(s)
var_folder_id <- "folder_id_example" # character | 
var_job_statuses <- "job_statuses_example" # character | Optional field that specifies comma-separated JobStatuses to include in the list (Optional)
var_page_size <- 56 # integer | START_DESC END_DESC (Optional)
var_page_token <- "page_token_example" # character | START_DESC END_DESC (Optional)
var_include <- "include_example" # character | Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, InheritedAcl (Optional)

api_instance <- JobsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **character**|  | 
 **job_statuses** | **character**| Optional field that specifies comma-separated JobStatuses to include in the list | [optional] 
 **page_size** | **integer**| START_DESC END_DESC | [optional] 
 **page_token** | **character**| START_DESC END_DESC | [optional] 
 **include** | **character**| Optionally include additional fields in the response. Multiple fields can be included by comma-separation.  Possible values: TotalItemCount, InheritedAcl | [optional] 

### Return type

[**JobListResponse**](JobListResponse.md)

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

