# icar1::FileWriteableResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | A unique identifier for this File | [optional] 
**name** | **character** | The name of this File | [optional] 
**volumeId** | **character** | The unique identifier of the volume where the file resides | [optional] 
**parentFolderId** | **character** | The unique identifier of the folder where the file resides | [optional] 
**volumeName** | **character** | The name of the volume where the file resides | [optional] 
**volumeConfigurationName** | **character** | The name of the volume configuration (BYOB only) | [optional] 
**type** | **character** | The type of the File | [optional] 
**tenantId** | **character** | The unique identifier for this File&#39;s Tenant | [optional] 
**subTenantId** | **character** | The unique identifier for this File&#39;s Sub Tenant | [optional] 
**path** | **character** | The (GDS) path to this File | [optional] 
**timeCreated** | **character** | The date &amp; time this File was created, in GDS | [optional] 
**createdBy** | **character** | The creator of this File | [optional] 
**timeModified** | **character** | The date &amp; time this File was updated, in GDS | [optional] 
**modifiedBy** | **character** | The updator of this File | [optional] 
**inheritedAcl** | **array[character]** | The inherited list of Id(s) that have access to this File | [optional] 
**urn** | **character** | The Universal Resource Name, unique to this File | [optional] 
**sizeInBytes** | **integer** | The File&#39;s Size in bytes | [optional] 
**metadata** | **object** | Metadata about this File | [optional] 
**isUploaded** | **character** | The current upload state of the File | [optional] 
**archiveStatus** | [**ArchiveStatuses**](ArchiveStatuses.md) |  | [optional] [Enum: ] 
**timeArchived** | **character** | The date &amp; time this File was archived | [optional] 
**storageTier** | [**StorageTier**](StorageTier.md) |  | [optional] [Enum: ] 
**eTag** | **character** | The File&#39;s ETag | [optional] 
**format** | **character** | The File&#39;s Format | [optional] 
**formatEdam** | **character** |  | [optional] 
**status** | [**FileStatus**](FileStatus.md) |  | [optional] [Enum: ] 
**lifeCycle** | [**FileLifeCycleSettings**](FileLifeCycleSettings.md) |  | [optional] 
**versionId** | **character** | Id of the latest version of the object in the object container | [optional] 
**objectStoreAccess** | [**ObjectStoreAccess**](ObjectStoreAccess.md) |  | [optional] 

