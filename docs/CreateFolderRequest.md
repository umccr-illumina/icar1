# icar1::CreateFolderRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Folder name, unique to this path, for the folder being created | [Pattern: ^[^/]+$] 
**folderPath** | **character** | Path from the root folder to the location for the folder being created; must start and end with &#39;/&#39; | [optional] 
**volumeId** | **character** | The unique identifier for this Folder&#39;s Volume | [optional] 
**volumeName** | **character** | The unique name for the Folder&#39;s Volume | [optional] 
**metadata** | **object** | Metadata about this folder and its contents | [optional] 
**acl** | **array[character]** | Optional array to replace the acl on the resource. | [optional] 


