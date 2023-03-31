#' Create a new AwsS3PresignedUrlForUpload
#'
#' @description
#' AwsS3PresignedUrlForUpload
#'
#' @docType class
#' @title AwsS3PresignedUrlForUpload
#' @description AwsS3PresignedUrlForUpload Class
#' @format An \code{R6Class} generator object
#' @field singlePartUrl A single part presigned url for upload character [optional]
#' @field multipartTemplate A url template for multi parts presigned url for upload character [optional]
#' @field multipartSignatures Multi parts info that needs to be applied to the MultipartTemplate list(\link{PartInfo}) [optional]
#' @field multipartUploadId Multi part upload id character [optional]
#' @field serverSideEncryptionAlgorithm The server side encryption method used by S3.  This value is used to determine the Amazon S3 header \"x-amz-server-side-encryption\" value.  Possible values: 'AES256' and 'aws:kms'. character [optional]
#' @field serverSideEncryptionKey Server-side encryption key that might be associated with the specified server-side encryption algorithm  This value can be the AWS KMS arn key, to be used for the Amazon S3 header \"x-amz-server-side-encryption-aws-kms-key-id\" value  This is only used when ServerSideEncryptionAlgorithm is 'aws:kms' character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AwsS3PresignedUrlForUpload <- R6::R6Class(
  "AwsS3PresignedUrlForUpload",
  public = list(
    `singlePartUrl` = NULL,
    `multipartTemplate` = NULL,
    `multipartSignatures` = NULL,
    `multipartUploadId` = NULL,
    `serverSideEncryptionAlgorithm` = NULL,
    `serverSideEncryptionKey` = NULL,
    #' Initialize a new AwsS3PresignedUrlForUpload class.
    #'
    #' @description
    #' Initialize a new AwsS3PresignedUrlForUpload class.
    #'
    #' @param singlePartUrl A single part presigned url for upload
    #' @param multipartTemplate A url template for multi parts presigned url for upload
    #' @param multipartSignatures Multi parts info that needs to be applied to the MultipartTemplate
    #' @param multipartUploadId Multi part upload id
    #' @param serverSideEncryptionAlgorithm The server side encryption method used by S3.  This value is used to determine the Amazon S3 header \"x-amz-server-side-encryption\" value.  Possible values: 'AES256' and 'aws:kms'.
    #' @param serverSideEncryptionKey Server-side encryption key that might be associated with the specified server-side encryption algorithm  This value can be the AWS KMS arn key, to be used for the Amazon S3 header \"x-amz-server-side-encryption-aws-kms-key-id\" value  This is only used when ServerSideEncryptionAlgorithm is 'aws:kms'
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`singlePartUrl` = NULL, `multipartTemplate` = NULL, `multipartSignatures` = NULL, `multipartUploadId` = NULL, `serverSideEncryptionAlgorithm` = NULL, `serverSideEncryptionKey` = NULL, ...) {
      if (!is.null(`singlePartUrl`)) {
        if (!(is.character(`singlePartUrl`) && length(`singlePartUrl`) == 1)) {
          stop(paste("Error! Invalid data for `singlePartUrl`. Must be a string:", `singlePartUrl`))
        }
        self$`singlePartUrl` <- `singlePartUrl`
      }
      if (!is.null(`multipartTemplate`)) {
        if (!(is.character(`multipartTemplate`) && length(`multipartTemplate`) == 1)) {
          stop(paste("Error! Invalid data for `multipartTemplate`. Must be a string:", `multipartTemplate`))
        }
        self$`multipartTemplate` <- `multipartTemplate`
      }
      if (!is.null(`multipartSignatures`)) {
        stopifnot(is.vector(`multipartSignatures`), length(`multipartSignatures`) != 0)
        sapply(`multipartSignatures`, function(x) stopifnot(R6::is.R6(x)))
        self$`multipartSignatures` <- `multipartSignatures`
      }
      if (!is.null(`multipartUploadId`)) {
        if (!(is.character(`multipartUploadId`) && length(`multipartUploadId`) == 1)) {
          stop(paste("Error! Invalid data for `multipartUploadId`. Must be a string:", `multipartUploadId`))
        }
        self$`multipartUploadId` <- `multipartUploadId`
      }
      if (!is.null(`serverSideEncryptionAlgorithm`)) {
        if (!(is.character(`serverSideEncryptionAlgorithm`) && length(`serverSideEncryptionAlgorithm`) == 1)) {
          stop(paste("Error! Invalid data for `serverSideEncryptionAlgorithm`. Must be a string:", `serverSideEncryptionAlgorithm`))
        }
        self$`serverSideEncryptionAlgorithm` <- `serverSideEncryptionAlgorithm`
      }
      if (!is.null(`serverSideEncryptionKey`)) {
        if (!(is.character(`serverSideEncryptionKey`) && length(`serverSideEncryptionKey`) == 1)) {
          stop(paste("Error! Invalid data for `serverSideEncryptionKey`. Must be a string:", `serverSideEncryptionKey`))
        }
        self$`serverSideEncryptionKey` <- `serverSideEncryptionKey`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AwsS3PresignedUrlForUpload in JSON format
    #' @export
    toJSON = function() {
      AwsS3PresignedUrlForUploadObject <- list()
      if (!is.null(self$`singlePartUrl`)) {
        AwsS3PresignedUrlForUploadObject[["singlePartUrl"]] <-
          self$`singlePartUrl`
      }
      if (!is.null(self$`multipartTemplate`)) {
        AwsS3PresignedUrlForUploadObject[["multipartTemplate"]] <-
          self$`multipartTemplate`
      }
      if (!is.null(self$`multipartSignatures`)) {
        AwsS3PresignedUrlForUploadObject[["multipartSignatures"]] <-
          lapply(self$`multipartSignatures`, function(x) x$toJSON())
      }
      if (!is.null(self$`multipartUploadId`)) {
        AwsS3PresignedUrlForUploadObject[["multipartUploadId"]] <-
          self$`multipartUploadId`
      }
      if (!is.null(self$`serverSideEncryptionAlgorithm`)) {
        AwsS3PresignedUrlForUploadObject[["serverSideEncryptionAlgorithm"]] <-
          self$`serverSideEncryptionAlgorithm`
      }
      if (!is.null(self$`serverSideEncryptionKey`)) {
        AwsS3PresignedUrlForUploadObject[["serverSideEncryptionKey"]] <-
          self$`serverSideEncryptionKey`
      }
      AwsS3PresignedUrlForUploadObject
    },
    #' Deserialize JSON string into an instance of AwsS3PresignedUrlForUpload
    #'
    #' @description
    #' Deserialize JSON string into an instance of AwsS3PresignedUrlForUpload
    #'
    #' @param input_json the JSON input
    #' @return the instance of AwsS3PresignedUrlForUpload
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`singlePartUrl`)) {
        self$`singlePartUrl` <- this_object$`singlePartUrl`
      }
      if (!is.null(this_object$`multipartTemplate`)) {
        self$`multipartTemplate` <- this_object$`multipartTemplate`
      }
      if (!is.null(this_object$`multipartSignatures`)) {
        self$`multipartSignatures` <- ApiClient$new()$deserializeObj(this_object$`multipartSignatures`, "array[PartInfo]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`multipartUploadId`)) {
        self$`multipartUploadId` <- this_object$`multipartUploadId`
      }
      if (!is.null(this_object$`serverSideEncryptionAlgorithm`)) {
        self$`serverSideEncryptionAlgorithm` <- this_object$`serverSideEncryptionAlgorithm`
      }
      if (!is.null(this_object$`serverSideEncryptionKey`)) {
        self$`serverSideEncryptionKey` <- this_object$`serverSideEncryptionKey`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AwsS3PresignedUrlForUpload in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`singlePartUrl`)) {
          sprintf(
          '"singlePartUrl":
            "%s"
                    ',
          self$`singlePartUrl`
          )
        },
        if (!is.null(self$`multipartTemplate`)) {
          sprintf(
          '"multipartTemplate":
            "%s"
                    ',
          self$`multipartTemplate`
          )
        },
        if (!is.null(self$`multipartSignatures`)) {
          sprintf(
          '"multipartSignatures":
          [%s]
',
          paste(sapply(self$`multipartSignatures`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`multipartUploadId`)) {
          sprintf(
          '"multipartUploadId":
            "%s"
                    ',
          self$`multipartUploadId`
          )
        },
        if (!is.null(self$`serverSideEncryptionAlgorithm`)) {
          sprintf(
          '"serverSideEncryptionAlgorithm":
            "%s"
                    ',
          self$`serverSideEncryptionAlgorithm`
          )
        },
        if (!is.null(self$`serverSideEncryptionKey`)) {
          sprintf(
          '"serverSideEncryptionKey":
            "%s"
                    ',
          self$`serverSideEncryptionKey`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of AwsS3PresignedUrlForUpload
    #'
    #' @description
    #' Deserialize JSON string into an instance of AwsS3PresignedUrlForUpload
    #'
    #' @param input_json the JSON input
    #' @return the instance of AwsS3PresignedUrlForUpload
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`singlePartUrl` <- this_object$`singlePartUrl`
      self$`multipartTemplate` <- this_object$`multipartTemplate`
      self$`multipartSignatures` <- ApiClient$new()$deserializeObj(this_object$`multipartSignatures`, "array[PartInfo]", loadNamespace("icar1"))
      self$`multipartUploadId` <- this_object$`multipartUploadId`
      self$`serverSideEncryptionAlgorithm` <- this_object$`serverSideEncryptionAlgorithm`
      self$`serverSideEncryptionKey` <- this_object$`serverSideEncryptionKey`
      self
    },
    #' Validate JSON input with respect to AwsS3PresignedUrlForUpload
    #'
    #' @description
    #' Validate JSON input with respect to AwsS3PresignedUrlForUpload and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AwsS3PresignedUrlForUpload
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# AwsS3PresignedUrlForUpload$unlock()
#
## Below is an example to define the print function
# AwsS3PresignedUrlForUpload$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AwsS3PresignedUrlForUpload$lock()

