# icar1::UpdateWorkflowVersionRequest

Update a workflow version definition using patch semantics

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **character** |  | [optional] 
**description** | **character** |  | [optional] [Max. length: 256] [Min. length: 0] 
**language** | [**WorkflowLanguage**](WorkflowLanguage.md) |  | [optional] 
**definition** | **object** |  | [optional] 
**acl** | **array[character]** |  | [optional] 
**status** | **character** | New Status for workflow version | [optional] [Enum: [draft, released, obsolete]] 


