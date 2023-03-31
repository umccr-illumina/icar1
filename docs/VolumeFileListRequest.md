# icar1::VolumeFileListRequest

Request for listing files within a volume

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**volumeId** | **character** | Volume identifier | [optional] 
**fileIds** | **array[character]** | File identifiers to list | [optional] 
**includePresignedUrl** | **character** | Optional parameter that returns presigned URL for each file when set to true | [optional] 
**presignedUrlMode** | **character** | Optional parameter to specify presigned url&#39;s content-disposition. If not specified, the browser will determine the default behavior.  Possible values: Attachment, Inline, Browser | [optional] 


