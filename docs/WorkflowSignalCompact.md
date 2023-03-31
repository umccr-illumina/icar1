# icar1::WorkflowSignalCompact

Compact details of a signal

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique resource ID | [optional] 
**urn** | **character** | URN of the resource | [optional] 
**href** | **character** | HREF to the resource | [optional] 
**sendHeartbeatHref** | **character** | HREF to send a heartbeat to a workflow signal | [optional] 
**sendSuccessResponseHref** | **character** | HREF to succeed a workflow signal | [optional] 
**sendFailureResponseHref** | **character** | HREF to fail a workflow signal | [optional] 
**name** | **character** | Unique name of the signal | [optional] 
**status** | **character** | Current status of the signal | [optional] 
**type** | **character** | User-defined type associated with the signal | [optional] 
**description** | **character** | Description of the signal | [optional] [Max. length: 256] [Min. length: 0] 
**inputs** | **object** | Inputs defined by the originating WaitForSignal state, in JSON. | [optional] 
**workflowRun** | [**WorkflowRunCompact**](WorkflowRunCompact.md) |  | [optional] 
**timeoutSeconds** | **integer** | Signal timeout in seconds. The Signal will timeout if a heartbeat, succeed or fail is not received in this time interval. | [optional] 
**result** | **object** | The result of a successful signalling action in JSON. | [optional] 
**error** | **character** | The error of a failed signal. | [optional] 
**errorCause** | **character** | The error cause of a failed signal. | [optional] 
**createdByClientId** | **character** | Client ID of the Origin Request | [optional] 
**timeCreated** | **character** | Time (in UTC) the resource was created | [optional] 
**timeModified** | **character** | Time (in UTC) the resource was modified | [optional] 
**createdBy** | **character** | User that created the resource | [optional] 
**modifiedBy** | **character** | User that modified the resource | [optional] 
**tenantId** | **character** | Tenant ID the resource belongs to | [optional] [Max. length: 255] [Min. length: 0] 
**acl** | **array[character]** | Access control list of the resource | [optional] 


