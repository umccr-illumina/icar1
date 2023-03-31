# icar1::CreateVolumeRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Name for the volume | 
**volumeConfigurationName** | **character** | Unique name of the volume configuration to use | [optional] 
**rootKeyPrefix** | **character** | The base bucket location for volumes associated with custom VolumeConfigurations. If not provided, the given volume Name is used.  If provided, it must start with the VolumeConfiguration&#39;s keyprefix and end with a /.  To create a volume representing the root of a bucket, use the value &#39;/&#39;. | [optional] [Pattern: ^(/)$|^([^/].*[/])$] 
**metadata** | **object** | Metadata about this volume and its contents | [optional] 
**lifeCycle** | [**VolumeLifeCycleSettings**](VolumeLifeCycleSettings.md) |  | [optional] 


