# icar1::Subscription

Details for an Event Notification Service subscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Unique id of the subscription | [optional] 
**urn** | **character** | URN of the subscription | [optional] 
**type** | **character** | Type of event the subscription matches | [optional] 
**actions** | **array[character]** | Types of actions the subscription matches for the event type | [optional] 
**filterExpression** | **character** | JSON-structured filter expression for events matching the subscription | [optional] 
**name** | **character** | Name of the subscription | [optional] 
**description** | **character** | Optional description for the subscription | [optional] 
**deliveryTarget** | [**DeliveryTarget**](DeliveryTarget.md) |  | [optional] 
**matchIdentities** | **array[character]** | ACL Identities for events the subscription matches | [optional] 
**acl** | **array[character]** | The list of identities that have access to this subscription | [optional] 
**tenantId** | **character** | Tenant id of the subscription owner | [optional] 
**createdByUserId** | **character** | User id for the creator of the subscription | [optional] 
**timeCreated** | **character** | Timestamp when the subscription was created | [optional] 
**deletedByUserId** | **character** | Id of the user who deleted the subscription, if applicable | [optional] 
**timeDeleted** | **character** | Timestamp when the subscription was deleted, if applicable | [optional] 
**isDeleted** | **character** | Whether or not the subscription has been deleted | [optional] 


