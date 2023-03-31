# icar1::VolumeConfigurationResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Name for the volume configuration | [optional] 
**versioningEnabled** | **character** | Versioning Enabled or Suspended for the ObjectContainer | [optional] 
**tenantId** | **character** | The unique identifier for this Volume Configuration&#39;s Tenant | [optional] 
**subTenantId** | **character** | The unique identifier for this Volume Configurations&#39;s Sub Tenant | [optional] 
**urn** | **character** | The Universal Resource Name, unique to this Volume Configuration | [optional] 
**onlineStatus** | [**VolumeConfigurationOnlineStatus**](VolumeConfigurationOnlineStatus.md) |  | [optional] [Enum: ] 
**errorCode** | **character** | Error code returned from the object store | [optional] 
**errorMessage** | **character** | Error message returned from the object store | [optional] 
**timeOfLastError** | **character** | Timestamp of the last observed error. | [optional] 
**timeCreated** | **character** | The date &amp; time this Volume was created, in GDS | [optional] 
**createdBy** | **character** | The creator of this Volume | [optional] 
**timeModified** | **character** | The date &amp; time this Volume was updated, in GDS | [optional] 
**modifiedBy** | **character** | The updator of this Volume | [optional] 
**objectStoreSettings** | [**ObjectStoreSettings**](ObjectStoreSettings.md) |  | [optional] 


