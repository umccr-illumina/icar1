# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test AwsS3PresignedUrlForUpload")

model_instance <- AwsS3PresignedUrlForUpload$new()

test_that("singlePartUrl", {
  # tests for the property `singlePartUrl` (character)
  # A single part presigned url for upload

  # uncomment below to test the property
  #expect_equal(model.instance$`singlePartUrl`, "EXPECTED_RESULT")
})

test_that("multipartTemplate", {
  # tests for the property `multipartTemplate` (character)
  # A url template for multi parts presigned url for upload

  # uncomment below to test the property
  #expect_equal(model.instance$`multipartTemplate`, "EXPECTED_RESULT")
})

test_that("multipartSignatures", {
  # tests for the property `multipartSignatures` (array[PartInfo])
  # Multi parts info that needs to be applied to the MultipartTemplate

  # uncomment below to test the property
  #expect_equal(model.instance$`multipartSignatures`, "EXPECTED_RESULT")
})

test_that("multipartUploadId", {
  # tests for the property `multipartUploadId` (character)
  # Multi part upload id

  # uncomment below to test the property
  #expect_equal(model.instance$`multipartUploadId`, "EXPECTED_RESULT")
})

test_that("serverSideEncryptionAlgorithm", {
  # tests for the property `serverSideEncryptionAlgorithm` (character)
  # The server side encryption method used by S3.  This value is used to determine the Amazon S3 header \&quot;x-amz-server-side-encryption\&quot; value.  Possible values: &#39;AES256&#39; and &#39;aws:kms&#39;.

  # uncomment below to test the property
  #expect_equal(model.instance$`serverSideEncryptionAlgorithm`, "EXPECTED_RESULT")
})

test_that("serverSideEncryptionKey", {
  # tests for the property `serverSideEncryptionKey` (character)
  # Server-side encryption key that might be associated with the specified server-side encryption algorithm  This value can be the AWS KMS arn key, to be used for the Amazon S3 header \&quot;x-amz-server-side-encryption-aws-kms-key-id\&quot; value  This is only used when ServerSideEncryptionAlgorithm is &#39;aws:kms&#39;

  # uncomment below to test the property
  #expect_equal(model.instance$`serverSideEncryptionKey`, "EXPECTED_RESULT")
})
