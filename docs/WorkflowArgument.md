# icar1::WorkflowArgument

Argument definition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Name of the argument key | [Max. length: 128] [Min. length: 0] 
**value** | **character** | A simple string value for the argument. Cannot provide both Value and Json at the same time. | [optional] 
**json** | **object** | A JSON value for the argument. Cannot provide both Value and Json at the same time. | [optional] 
**options** | **character** | Comma separated list of options for the argument: Required, Overridable, Writable, Json, Optional, ReadOnly, Final  Some combinations of options are considered errors, like Required/Optional, Overridable/Final, Writable/ReadOnly, etc. | [optional] 


