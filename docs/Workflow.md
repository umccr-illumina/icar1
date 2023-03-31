# icar1::Workflow

Details of a workflow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique resource ID | [optional] 
**urn** | **character** | URN of the resource | [optional] 
**href** | **character** | HREF to the resource | [optional] 
**name** | **character** | Name of the workflow | [optional] [Max. length: 255] [Min. length: 0] 
**organization** | **character** | Organization associated with the workflow | [optional] [Max. length: 255] [Min. length: 0] 
**description** | **character** | Description of the workflow | [optional] [Max. length: 256] [Min. length: 0] 
**toolClass** | **character** | Workflow type | [optional] 
**categories** | **array[character]** | Categories of the workflow (Limit Max Size : 10) | [optional] 
**createdByClientId** | **character** | Client ID of the Origin Request | [optional] 
**timeCreated** | **character** | Time (in UTC) the resource was created | [optional] 
**timeModified** | **character** | Time (in UTC) the resource was modified | [optional] 
**createdBy** | **character** | User that created the resource | [optional] 
**modifiedBy** | **character** | User that modified the resource | [optional] 
**tenantId** | **character** | Tenant ID the resource belongs to | [optional] [Max. length: 255] [Min. length: 0] 
**acl** | **array[character]** | Access control list of the resource | [optional] 


