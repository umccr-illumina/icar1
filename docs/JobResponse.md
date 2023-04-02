# icar1::JobResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | A unique identifier for this Job | [optional] 
**parentFolderUrn** | **character** | The Universal Resource Name of the parent folder associated with the Job | [optional] 
**operationType** | **character** | The valid job operation type values for resources in GDS  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK | [optional] 
**jobType** | **character** |  | [optional] 
**operationParameters** | [**JobOperationParameters**](JobOperationParameters.md) |  | [optional] 
**results** | [**JobOutput**](JobOutput.md) |  | [optional] 
**progressStatus** | **character** | The valid Job Status values for folders in GDS.  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK | [optional] 
**timeCreated** | **character** | The date &amp; time this Folder was created, in GDS | [optional] 
**createdBy** | **character** | The creator of this Job | [optional] 
**timeModified** | **character** | The date &amp; time this Job was updated, in GDS | [optional] 
**timeCompleted** | **character** | The date &amp; time this Job was completed, in GDS | [optional] 


