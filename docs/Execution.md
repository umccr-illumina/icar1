# icar1::Execution


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | [**Image**](Image.md) |  | [optional] 
**command** | **character** |  | [optional] 
**args** | **array[character]** | Argument to run specified task | [optional] 
**inputs** | [**array[InputMountMappingWithCreds]**](InputMountMappingWithCreds.md) | Path (Inputs) - Path to mount file at valid Url  URL (Inputs) - Url of file mounted at specified path | [optional] 
**outputs** | [**array[MountMappingWithCreds]**](MountMappingWithCreds.md) | Path (Outputs) - Path where files will be output to valid Url  URL (Outputs) - Url of folder with files from the path will be uploaded | [optional] 
**systemFiles** | [**SystemFiles**](SystemFiles.md) |  | [optional] 
**environment** | [**Environment**](Environment.md) |  | [optional] 
**workingDirectory** | **character** |  | [optional] 
**retryLimit** | **integer** |  | [optional] [default to 3] 
**retryCount** | **integer** |  | [optional] [default to 0] 


