# icar1::BulkFolderMetadataUpdateRequest

Request to bulk update metadata on folders and sub files.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**folderId** | **character** | Folder unique id. | 
**fileStatus** | **character** | File status to filter on. | [optional] 
**parentFolderMetadataUpdates** | [**MetadataUpdateRequest**](MetadataUpdateRequest.md) |  | [optional] 
**childrenFoldersUpdates** | [**MetadataUpdateRequest**](MetadataUpdateRequest.md) |  | [optional] 
**childrenFilesUpdates** | [**MetadataUpdateRequest**](MetadataUpdateRequest.md) |  | [optional] 


