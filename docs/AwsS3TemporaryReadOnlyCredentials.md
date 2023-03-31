# icar1::AwsS3TemporaryReadOnlyCredentials


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_Key_Id** | **character** | Access key for use with AWS S3 | [optional] 
**secret_Access_Key** | **character** | Secret key for use with AWS S3 | [optional] 
**session_Token** | **character** | Token for use with AWS S3 | [optional] 
**region** | **character** | AWS region the folder will/does reside in | [optional] 
**bucketName** | **character** | AWS bucket the folder will/does reside in | [optional] 
**keyPrefix** | **character** | AWS upload location for this folder | [optional] 
**expirationDate** | **character** | expiration for temporary credentials | [optional] 
**serviceUrl** | **character** | Service endpoint for accessing S3.  This is optional for AWS S3, but mandatory for other services like Taiwan Computing Cloud. | [optional] 
**serverSideEncryptionAlgorithm** | **character** | Used to specify the type of server-side encryption (SSE) to be used on the object provider.  This value is used to determine the Amazon S3 header \&quot;x-amz-server-side-encryption\&quot; value.  For example, specify \&quot;AES256\&quot; for SSE-S3, or \&quot;AWS:KMS\&quot; for SSE-KMS.  By default if none is specified, \&quot;AES256\&quot; will be used. | [optional] 
**serverSideEncryptionKey** | **character** | Used to specify the serve-side encryption key that might be associated with the specified server-side encryption algorithm  This value can be the AWS KMS arn key, to be used for the Amazon S3 header \&quot;x-amz-server-side-encryption-aws-kms-key-id\&quot; value  Value will be ignored if encryption is \&quot;AES256\&quot; | [optional] 


