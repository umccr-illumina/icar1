# icar1::TaskRunSummary


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Global identifier for object | [optional] 
**href** | **character** | Href of the object | [optional] 
**urn** | **character** | URN of the resource | [optional] 
**name** | **character** |  | [optional] [Max. length: 255] [Min. length: 0] 
**description** | **character** |  | [optional] [Max. length: 4096] [Min. length: 0] 
**status** | **character** |  | [optional] [default to &quot;Pending&quot;] 
**statusDetails** | **character** |  | [optional] [Max. length: 4096] [Min. length: 0] 
**typeOfResource** | **character** |  | [optional] [Max. length: 255] [Min. length: 0] 
**sizeOfResource** | **character** |  | [optional] [Max. length: 255] [Min. length: 0] 
**tierOfResource** | **character** |  | [optional] [Max. length: 255] [Min. length: 0] 
**taskVersionSummary** | [**TaskVersionSummary**](TaskVersionSummary.md) |  | [optional] 
**acl** | **array[character]** | Access Control List | [optional] 
**tenantId** | **character** |  | [optional] 
**subTenantId** | **character** |  | [optional] 
**createdBy** | **character** | User who created the object | [optional] 
**timeCreated** | **character** | Date and Time (in UTC) when object was created in TES | [optional] 
**modifiedBy** | **character** | User who updated the object | [optional] 
**timeModified** | **character** | Date and Time (in UTC) when object was modified in TES | [optional] 


