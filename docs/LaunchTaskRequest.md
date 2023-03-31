# icar1::LaunchTaskRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | User-defined name for the task run, if not specified version string of task version will be used | [optional] [Max. length: 255] [Min. length: 0] 
**description** | **character** | User-defined description for the task run, if not specified task version description will be used | [optional] [Max. length: 4096] [Min. length: 0] 
**arguments** | **map(character)** | Arguments to launch a task run | [optional] 
**acl** | **array[character]** | Access Control List | [optional] 


