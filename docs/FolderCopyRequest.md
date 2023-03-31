# icar1::FolderCopyRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**targetParentFolderId** | **character** | The parent folder into which the source folder will be copied. | 
**destinationFolderName** | **character** | A new name for the destination folder. Required if target parent folder is the same as the destination folder.  When optional and not provided, the source folder name is used as the destination folder name. | [optional] [Pattern: ^[^/]+$] 
**metadataToCopy** | **array[character]** |  | [optional] 
**duplicateFileAction** | **character** |  | [optional] 


