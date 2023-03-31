# icar1::WorkflowRunList


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**array[WorkflowRunCompact]**](WorkflowRunCompact.md) | Items in paged list | [optional] 
**itemCount** | **integer** | Number of items included in the page | [optional] 
**firstPageToken** | **character** | PageToken for first paged list | [optional] 
**nextPageToken** | **character** | PageToken for the next paged list | [optional] 
**prevPageToken** | **character** | PageToken for the previous paged list | [optional] 
**lastPageToken** | **character** | PageToken for the last paged list. Only included when totalItemCount is listed | [optional] 
**totalItemCount** | **integer** | Total number of items in all pages. Only included when requested | [optional] 
**totalPageCount** | **integer** | Total number of pages. Only included when totalItemCount is listed | [optional] 


