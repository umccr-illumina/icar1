# icar1::CreateWorkflowVersionRequest

Create a new workflow version under an existing workflow root

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **character** |  | [Min. length: 1] 
**description** | **character** |  | [optional] [Max. length: 256] [Min. length: 0] 
**language** | [**WorkflowLanguage**](WorkflowLanguage.md) |  | [optional] 
**definition** | **object** |  | [optional] 
**acl** | **array[character]** |  | [optional] 
**status** | **character** | Published Status of the workflow version | [optional] 


