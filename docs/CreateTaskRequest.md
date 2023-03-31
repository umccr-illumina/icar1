# icar1::CreateTaskRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | User-defined name of the task | [Max. length: 255] [Min. length: 0] 
**description** | **character** | User-defined description of the task | [optional] [Max. length: 4096] [Min. length: 0] 
**acl** | **array[character]** | Access Control List | [optional] 
**taskVersions** | [**array[CreateTaskVersionRequest]**](CreateTaskVersionRequest.md) | List of task versions | [optional] 


