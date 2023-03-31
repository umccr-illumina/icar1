# icar1::WorkflowRunHistoryEvent

Information about a specific event in the workflow run history

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Name of the event, such as the name of the step/task for state-level events and run name for run-level events | [optional] 
**eventId** | **integer** | Identifier for the history event, if any | [optional] 
**previousEventId** | **integer** | Identifier for any previous history event (if available) | [optional] 
**eventType** | **character** | Type of history event. The associated details entry will be populated based on the type of event. | [optional] 
**timestamp** | **character** | Timestamp for the history event | [optional] 
**eventDetails** | **object** | Details for history event | [optional] 


