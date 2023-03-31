# icar1::WorkflowConnection

Defines a connection that can be used in a workflow definition to perform actions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** |  | [Max. length: 128] [Min. length: 0] 
**type** | **character** | Type of the connection: PlatformJwt, ApiBearerToken, AwsCredentials, ApiCustomAuthentication, BsshOAuthV2 | [optional] 
**host** | **character** | For API based connections, the Host part of the API endpoint | [optional] [Max. length: 1024] [Min. length: 0] 
**hostValidationRegex** | **character** | Regex that hosts associated with this connection must meet (when host override by each run is allowed) | [optional] [Max. length: 100] [Min. length: 0] 
**credentials** | **character** | Credentials associated with the connection. Format depends on type of connection. | [optional] 
**options** | **character** | Comma separated list of options associated with the connection: CredentialsRequired, AllowCredentialsOverride, AutoDisableCredentialsAfterUse, AllowHostOverride | [optional] 
**autoDisableUrl** | **character** | Relative URL (relative to Host) to call in order to disable the credentials | [optional] [Max. length: 1024] [Min. length: 0] 
**autoDisableHttpMethod** | **character** | Http method to use to disable the credentials. Must be POST, PUT or DELETE | [optional] [Max. length: 10] [Min. length: 0] 


