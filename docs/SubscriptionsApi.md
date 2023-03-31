# SubscriptionsApi

All URIs are relative to *http://aps2.platform.illumina.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateSubscription**](SubscriptionsApi.md#CreateSubscription) | **POST** /v1/subscriptions | Creates a subscription to an event type and defines how those events get delivered.
[**DisableSubscription**](SubscriptionsApi.md#DisableSubscription) | **DELETE** /v1/subscriptions/{subscriptionId} | Given a subscription id, disables the specified subscription.
[**GetSubscription**](SubscriptionsApi.md#GetSubscription) | **GET** /v1/subscriptions/{subscriptionId} | Given a subscription id, returns information about that subscription.
[**ListSubscriptions**](SubscriptionsApi.md#ListSubscriptions) | **GET** /v1/subscriptions | Get a list of subscriptions.


# **CreateSubscription**
> Subscription CreateSubscription(body = var.body)

Creates a subscription to an event type and defines how those events get delivered.

Events can be delivered to AWS SQS, AWS SNS, or can be used to launch a WES workflow.

### Example
```R
library(icar1)

# Creates a subscription to an event type and defines how those events get delivered.
#
# prepare function argument(s)
var_body <- CreateSubscriptionRequest$new("type_example", "name_example", DeliveryTarget$new(DeliveryTargetAwsSnsTopic$new("topicArn_example"), DeliveryTargetAwsSqsQueue$new("queueUrl_example"), DeliveryTargetWorkflowRunLaunch$new("id_example", "version_example", "name_example", 123)), c("actions_example"), "description_example", "filterExpression_example") # CreateSubscriptionRequest |  (Optional)

api_instance <- SubscriptionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateSubscriptionRequest**](CreateSubscriptionRequest.md)|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | The subscription is created successfully. |  -  |
| **400** | An invalid or missing input parameter will result in a bad request. |  -  |
| **401** | The acting identity cannot be authenticated and authorized. |  -  |
| **403** | The acting identity is not authorized to subscribe to the given event type or deliver to the given delivery target. |  -  |
| **409** | The given delivery target is not valid or cannot be delivered to. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **DisableSubscription**
> Subscription DisableSubscription(subscription_id)

Given a subscription id, disables the specified subscription.

Given a subscription id, disables that subscription with the current JWT token’s tenant Id.

### Example
```R
library(icar1)

# Given a subscription id, disables the specified subscription.
#
# prepare function argument(s)
var_subscription_id <- "subscription_id_example" # character | Id of the subscription to be disabled

api_instance <- SubscriptionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **character**| Id of the subscription to be disabled | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Subscription for the given ID is disabled successfully. |  -  |
| **400** | An invalid or missing input parameter will result in a bad request. |  -  |
| **401** | The acting identity cannot be authenticated and authorized. |  -  |
| **403** | The acting identity is not authorized to disable the subscription for the given ID. |  -  |
| **404** | Could not find a subscription for the given ID. |  -  |
| **410** | The subscription for the given ID has been disabled. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **GetSubscription**
> Subscription GetSubscription(subscription_id)

Given a subscription id, returns information about that subscription.

Given a subscription id, returns information about that subscription accessible by the current JWT token’s tenant Id.

### Example
```R
library(icar1)

# Given a subscription id, returns information about that subscription.
#
# prepare function argument(s)
var_subscription_id <- "subscription_id_example" # character | Id of the subscription to return

api_instance <- SubscriptionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **character**| Id of the subscription to return | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Subscription for the given ID is found and returned successfully. |  -  |
| **400** | An invalid or missing input parameter will result in a bad request. |  -  |
| **401** | The acting identity cannot be authenticated and authorized. |  -  |
| **403** | The acting identity is not authorized to access the subscription for the given ID. |  -  |
| **404** | Could not find a subscription for the given ID. |  -  |
| **410** | The subscription for the given ID has been disabled. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

# **ListSubscriptions**
> SubscriptionList ListSubscriptions(event_type = var.event_type, page_size = var.page_size, page_token = var.page_token)

Get a list of subscriptions.

Get a list of subscriptions accessible by the current JWT token’s tenant Id.

### Example
```R
library(icar1)

# Get a list of subscriptions.
#
# prepare function argument(s)
var_event_type <- "event_type_example" # character | Optional event type for filtering returned subscriptions (Optional)
var_page_size <- 56 # integer | Optional parameter to define the page size returned. Valid inputs range from 1-1000. (Optional)
var_page_token <- "page_token_example" # character | Utilized for navigation after initial listing. Valid values include those of  firstPageToken, nextPageToken, and previousPageToken in the list response.  When there are no more pages, the nextPageToken will be null. (Optional)

api_instance <- SubscriptionsApi$new()
# Configure API key authorization: Bearer
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_type** | **character**| Optional event type for filtering returned subscriptions | [optional] 
 **page_size** | **integer**| Optional parameter to define the page size returned. Valid inputs range from 1-1000. | [optional] 
 **page_token** | **character**| Utilized for navigation after initial listing. Valid values include those of  firstPageToken, nextPageToken, and previousPageToken in the list response.  When there are no more pages, the nextPageToken will be null. | [optional] 

### Return type

[**SubscriptionList**](SubscriptionList.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Subscriptions found and returned successfully. |  -  |
| **400** | An invalid or missing input parameter will result in a bad request. |  -  |
| **401** | The acting identity cannot be authenticated and authorized. |  -  |
| **403** | The acting identity is not authorized to access subscriptions. |  -  |
| **0** | Unexpected issue. Please try your request again. If problem persists, please contact the system administrator. |  -  |

