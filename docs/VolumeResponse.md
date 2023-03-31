# icar1::VolumeResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | A unique identifier for this Volume | [optional] 
**name** | **character** | The name of this Volume | [optional] 
**tenantId** | **character** | The unique identifier for this Volume&#39;s Tenant | [optional] 
**subTenantId** | **character** | The unique identifier for this Volume&#39;s Sub Tenant | [optional] 
**urn** | **character** | The Universal Resource Name, unique to this Volume | [optional] 
**rootFolderId** | **character** | The unique identifier for the root Folder of this Volume | [optional] 
**rootKeyPrefix** | **character** | The base bucket location for Volumes associated with custom VolumeConfigurations otherwise this field is not set. | [optional] 
**volumeConfigurationName** | **character** | Unique name of the Volume configuration for this Volume.  This field will only be set if a custom Volume configuration is associated. | [optional] 
**inheritedAcl** | **array[character]** | The inherited list of Id(s) that have access to this Volume | [optional] 
**timeCreated** | **character** | The date &amp; time this Volume was created, in GDS | [optional] 
**createdBy** | **character** | The creator of this Volume | [optional] 
**timeModified** | **character** | The date &amp; time this Volume was updated, in GDS | [optional] 
**modifiedBy** | **character** | The updator of this Volume | [optional] 
**jobStatus** | [**JobStatus**](JobStatus.md) |  | [optional] [Enum: ] 
**metadata** | **object** | Metadata about this Volume | [optional] 
**lifeCycle** | [**VolumeLifeCycleSettings**](VolumeLifeCycleSettings.md) |  | [optional] 
**migrationStatus** | **character** | Status of the root folder migration status from v1 to v2 | [optional] 


