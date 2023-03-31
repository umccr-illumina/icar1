# icar1::AwsS3PresignedUrlForUpload

AwsS3PresignedUrlForUpload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**singlePartUrl** | **character** | A single part presigned url for upload | [optional] 
**multipartTemplate** | **character** | A url template for multi parts presigned url for upload | [optional] 
**multipartSignatures** | [**array[PartInfo]**](PartInfo.md) | Multi parts info that needs to be applied to the MultipartTemplate | [optional] 
**multipartUploadId** | **character** | Multi part upload id | [optional] 
**serverSideEncryptionAlgorithm** | **character** | The server side encryption method used by S3.  This value is used to determine the Amazon S3 header \&quot;x-amz-server-side-encryption\&quot; value.  Possible values: &#39;AES256&#39; and &#39;aws:kms&#39;. | [optional] 
**serverSideEncryptionKey** | **character** | Server-side encryption key that might be associated with the specified server-side encryption algorithm  This value can be the AWS KMS arn key, to be used for the Amazon S3 header \&quot;x-amz-server-side-encryption-aws-kms-key-id\&quot; value  This is only used when ServerSideEncryptionAlgorithm is &#39;aws:kms&#39; | [optional] 


