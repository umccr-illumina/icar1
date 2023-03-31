# icar1::CreateFileRequest

CreateFileRequest Model

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Name of the file to be uploaded, case sensitive. | [Pattern: ^[^/]+$] 
**volumeId** | **character** | Volume ID to which the file will be uploaded | [optional] 
**folderPath** | **character** | Optional folder path where the file will be uploaded to | [optional] 
**type** | **character** | Optional file content type, e.g. text/plain, application/json | [optional] 
**volumeName** | **character** | Name of the Volume | [optional] 
**format** | **character** | The File&#39;s Format | [optional] 
**formatEdam** | **character** | The File&#39;s Edam Format | [optional] 
**metadata** | **object** | Metadata about this file and its contents | [optional] 


