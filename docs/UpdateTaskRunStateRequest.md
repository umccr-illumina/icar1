# icar1::UpdateTaskRunStateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **character** | New TaskRun status to be updated | [optional] [Enum: [CheckedOut, Runnable, Running, Finalizing, Completed, FailedRestartable, Failed, Aborted, TimedOut]] 
**statusDetails** | **character** | Description of the event that triggered the state change | [optional] 
**startTime** | **character** | TaskRun execution start time | [optional] 
**completionTime** | **character** | TaskRun execution completion time | [optional] 


