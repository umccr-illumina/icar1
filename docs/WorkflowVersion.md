# icar1::WorkflowVersion

Details of a Workflow version definition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique resource ID | [optional] 
**urn** | **character** | URN of the resource | [optional] 
**href** | **character** | HREF to the resource | [optional] 
**version** | **character** | Name of the workflow version | [optional] [Max. length: 40] [Min. length: 0] 
**category** | **character** | Category of the workflow version | [optional] [Max. length: 128] [Min. length: 0] 
**description** | **character** | Description of the workflow version | [optional] [Max. length: 256] [Min. length: 0] 
**language** | [**WorkflowLanguage**](WorkflowLanguage.md) |  | [optional] 
**status** | **character** | Published Status of the workflow version | [optional] 
**createdByClientId** | **character** | Client ID of the Origin Request | [optional] 
**definition** | **character** | Definition of the workflow version | [optional] 
**timeCreated** | **character** | Time (in UTC) the resource was created | [optional] 
**timeModified** | **character** | Time (in UTC) the resource was modified | [optional] 
**createdBy** | **character** | User that created the resource | [optional] 
**modifiedBy** | **character** | User that modified the resource | [optional] 
**tenantId** | **character** | Tenant ID the resource belongs to | [optional] [Max. length: 255] [Min. length: 0] 
**acl** | **array[character]** | Access control list of the resource | [optional] 


