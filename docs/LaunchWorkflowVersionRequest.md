# icar1::LaunchWorkflowVersionRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Name of the workflow run | [optional] [Pattern: ^(?![wW][fF][rR]\\..*)(^[0-9a-zA-Z-_\\.]*$)] [Max. length: 255] [Min. length: 0] 
**input** | **object** | Input for the launched workflow run. Must resolve to a JSON object. | [optional] 
**engineParameters** | **object** | Runtime options for launching workflows (currently only used for Airflow     and otherwise ignored). Must resolve to a JSON object. | [optional] 


