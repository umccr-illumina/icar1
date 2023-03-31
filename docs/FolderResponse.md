# icar1::FolderResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | A unique identifier for this Folder | [optional] 
**name** | **character** | The name of this Folder | [optional] 
**volumeId** | **character** | The unique identifier for this Folder&#39;s Volume | [optional] 
**parentFolderId** | **character** | The unique identifier for this folder&#39;s parent folder | [optional] 
**volumeName** | **character** | The name of this Folder&#39;s Volume | [optional] 
**tenantId** | **character** | The unique identifier for this Folders&#39;s Tenant | [optional] 
**subTenantId** | **character** | The unique identifier for this Folder&#39;s Sub Tenant | [optional] 
**urn** | **character** | The Universal Resource Name, unique to this Folder | [optional] 
**path** | **character** | The (GDS) folder path to this Folder | [optional] 
**acl** | **array[character]** | The list of directly specified Id(s) that have access to this Folder | [optional] 
**inheritedAcl** | **array[character]** | The inherited list of Id(s) that have access to this Folder | [optional] 
**timeCreated** | **character** | The date &amp; time this Folder was created, in GDS | [optional] 
**createdBy** | **character** | The creator of this Folder | [optional] 
**timeModified** | **character** | The date &amp; time this Folder was updated, in GDS | [optional] 
**modifiedBy** | **character** | The updator of this Folder | [optional] 
**metadata** | **object** | Metadata about this folder | [optional] 
**volumeMetadata** | **object** | Metadata about this folder&#39;s volume | [optional] 
**jobStatus** | [**JobStatus**](JobStatus.md) |  | [optional] [Enum: ] 
**jobId** | **character** | The job identifier for the current folder operation. Currently only being used for the delete folder operation. | [optional] 
**archiveJobStorageTier** | [**StorageTier**](StorageTier.md) |  | [optional] [Enum: ] 
**migrationStatus** | **character** | Status of the root folder migration status from v1 to v2 | [optional] 
**activeJobIds** | **array[character]** | List of Jobs in Pending and In Progress status | [optional] 
**objectStoreAccess** | [**ObjectStoreAccess**](ObjectStoreAccess.md) |  | [optional] 


