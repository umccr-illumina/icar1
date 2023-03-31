# icar1::CreateSubscriptionRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **character** | Event type which will be subscribed to | [Pattern: ^[a-zA-Z]+[.a-zA-Z]*$] [Max. length: 255] [Min. length: 1] 
**actions** | **array[character]** | Actions which will be subscribed to for the event type | [optional] [Max. items: 255] 
**name** | **character** | Name of the subscription | [Pattern: ^[a-zA-Z0-9]+[a-zA-Z0-9_-]*$] [Max. length: 255] [Min. length: 1] 
**description** | **character** | Optional description for the subscription | [optional] [Max. length: 8192] 
**filterExpression** | **character** | JSON-structured filter expression for events matching the subscription | [optional] [Max. length: 8192] 
**deliveryTarget** | [**DeliveryTarget**](DeliveryTarget.md) |  | 


