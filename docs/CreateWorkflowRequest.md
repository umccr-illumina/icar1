# icar1::CreateWorkflowRequest

Create a workflow and optional version

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** |  | [Min. length: 1] 
**description** | **character** |  | [optional] [Max. length: 256] [Min. length: 0] 
**organization** | **character** |  | [optional] [Max. length: 255] [Min. length: 0] 
**workflowVersion** | [**CreateWorkflowVersionRequest**](CreateWorkflowVersionRequest.md) |  | [optional] 
**toolClass** | **character** |  | [optional] [Enum: [workflow, commandLineTool]] 
**acl** | **array[character]** |  | [optional] 
**categories** | **array[character]** |  | [optional] 


