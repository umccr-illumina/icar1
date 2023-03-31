# icar1::WorkflowRunCompact

Compact details of a workflow run

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique resource ID | [optional] 
**urn** | **character** | URN of the resource | [optional] 
**href** | **character** | HREF to the resource | [optional] 
**name** | **character** | Name of the workflow run | [optional] [Max. length: 255] [Min. length: 0] 
**timeStarted** | **character** | The time (in UTC) the workflow run started | [optional] 
**timeStopped** | **character** | The time (in UTC) the Workflow Run stopped | [optional] 
**status** | **character** | Workflow run status | [optional] 
**idempotencyKey** | **character** |  | [optional] 
**statusSummary** | **character** | Workflow run status summary | [optional] 
**error** | **character** | Error for a failed workflow run | [optional] 
**errorCause** | **character** | Error cause for a failed workflow run | [optional] 
**workflowVersion** | [**WorkflowVersionCompact**](WorkflowVersionCompact.md) |  | [optional] 
**createdByClientId** | **character** | Client ID of the Origin Request | [optional] 
**engineParameters** | **character** | Workflow Engine Parameters | [optional] 
**timeCreated** | **character** | Time (in UTC) the resource was created | [optional] 
**timeModified** | **character** | Time (in UTC) the resource was modified | [optional] 
**createdBy** | **character** | User that created the resource | [optional] 
**modifiedBy** | **character** | User that modified the resource | [optional] 
**tenantId** | **character** | Tenant ID the resource belongs to | [optional] [Max. length: 255] [Min. length: 0] 
**acl** | **array[character]** | Access control list of the resource | [optional] 


