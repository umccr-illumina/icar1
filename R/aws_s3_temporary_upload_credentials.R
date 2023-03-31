#' Create a new AwsS3TemporaryUploadCredentials
#'
#' @description
#' AwsS3TemporaryUploadCredentials
#'
#' @docType class
#' @title AwsS3TemporaryUploadCredentials
#' @description AwsS3TemporaryUploadCredentials Class
#' @format An \code{R6Class} generator object
#' @field access_Key_Id Access key for use with AWS S3 character [optional]
#' @field secret_Access_Key Secret key for use with AWS S3 character [optional]
#' @field session_Token Token for use with AWS S3 character [optional]
#' @field region AWS region the folder will/does reside in character [optional]
#' @field bucketName AWS bucket the folder will/does reside in character [optional]
#' @field keyPrefix AWS upload location for this folder character [optional]
#' @field expirationDate expiration for temporary credentials character [optional]
#' @field serviceUrl Service endpoint for accessing S3.  This is optional for AWS S3, but mandatory for other services like Taiwan Computing Cloud. character [optional]
#' @field serverSideEncryptionAlgorithm Used to specify the type of server-side encryption (SSE) to be used on the object provider.  This value is used to determine the Amazon S3 header \"x-amz-server-side-encryption\" value.  For example, specify \"AES256\" for SSE-S3, or \"AWS:KMS\" for SSE-KMS.  By default if none is specified, \"AES256\" will be used. character [optional]
#' @field serverSideEncryptionKey Used to specify the serve-side encryption key that might be associated with the specified server-side encryption algorithm  This value can be the AWS KMS arn key, to be used for the Amazon S3 header \"x-amz-server-side-encryption-aws-kms-key-id\" value  Value will be ignored if encryption is \"AES256\" character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AwsS3TemporaryUploadCredentials <- R6::R6Class(
  "AwsS3TemporaryUploadCredentials",
  public = list(
    `access_Key_Id` = NULL,
    `secret_Access_Key` = NULL,
    `session_Token` = NULL,
    `region` = NULL,
    `bucketName` = NULL,
    `keyPrefix` = NULL,
    `expirationDate` = NULL,
    `serviceUrl` = NULL,
    `serverSideEncryptionAlgorithm` = NULL,
    `serverSideEncryptionKey` = NULL,
    #' Initialize a new AwsS3TemporaryUploadCredentials class.
    #'
    #' @description
    #' Initialize a new AwsS3TemporaryUploadCredentials class.
    #'
    #' @param access_Key_Id Access key for use with AWS S3
    #' @param secret_Access_Key Secret key for use with AWS S3
    #' @param session_Token Token for use with AWS S3
    #' @param region AWS region the folder will/does reside in
    #' @param bucketName AWS bucket the folder will/does reside in
    #' @param keyPrefix AWS upload location for this folder
    #' @param expirationDate expiration for temporary credentials
    #' @param serviceUrl Service endpoint for accessing S3.  This is optional for AWS S3, but mandatory for other services like Taiwan Computing Cloud.
    #' @param serverSideEncryptionAlgorithm Used to specify the type of server-side encryption (SSE) to be used on the object provider.  This value is used to determine the Amazon S3 header \"x-amz-server-side-encryption\" value.  For example, specify \"AES256\" for SSE-S3, or \"AWS:KMS\" for SSE-KMS.  By default if none is specified, \"AES256\" will be used.
    #' @param serverSideEncryptionKey Used to specify the serve-side encryption key that might be associated with the specified server-side encryption algorithm  This value can be the AWS KMS arn key, to be used for the Amazon S3 header \"x-amz-server-side-encryption-aws-kms-key-id\" value  Value will be ignored if encryption is \"AES256\"
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`access_Key_Id` = NULL, `secret_Access_Key` = NULL, `session_Token` = NULL, `region` = NULL, `bucketName` = NULL, `keyPrefix` = NULL, `expirationDate` = NULL, `serviceUrl` = NULL, `serverSideEncryptionAlgorithm` = NULL, `serverSideEncryptionKey` = NULL, ...) {
      if (!is.null(`access_Key_Id`)) {
        if (!(is.character(`access_Key_Id`) && length(`access_Key_Id`) == 1)) {
          stop(paste("Error! Invalid data for `access_Key_Id`. Must be a string:", `access_Key_Id`))
        }
        self$`access_Key_Id` <- `access_Key_Id`
      }
      if (!is.null(`secret_Access_Key`)) {
        if (!(is.character(`secret_Access_Key`) && length(`secret_Access_Key`) == 1)) {
          stop(paste("Error! Invalid data for `secret_Access_Key`. Must be a string:", `secret_Access_Key`))
        }
        self$`secret_Access_Key` <- `secret_Access_Key`
      }
      if (!is.null(`session_Token`)) {
        if (!(is.character(`session_Token`) && length(`session_Token`) == 1)) {
          stop(paste("Error! Invalid data for `session_Token`. Must be a string:", `session_Token`))
        }
        self$`session_Token` <- `session_Token`
      }
      if (!is.null(`region`)) {
        if (!(is.character(`region`) && length(`region`) == 1)) {
          stop(paste("Error! Invalid data for `region`. Must be a string:", `region`))
        }
        self$`region` <- `region`
      }
      if (!is.null(`bucketName`)) {
        if (!(is.character(`bucketName`) && length(`bucketName`) == 1)) {
          stop(paste("Error! Invalid data for `bucketName`. Must be a string:", `bucketName`))
        }
        self$`bucketName` <- `bucketName`
      }
      if (!is.null(`keyPrefix`)) {
        if (!(is.character(`keyPrefix`) && length(`keyPrefix`) == 1)) {
          stop(paste("Error! Invalid data for `keyPrefix`. Must be a string:", `keyPrefix`))
        }
        self$`keyPrefix` <- `keyPrefix`
      }
      if (!is.null(`expirationDate`)) {
        if (!is.character(`expirationDate`)) {
          stop(paste("Error! Invalid data for `expirationDate`. Must be a string:", `expirationDate`))
        }
        self$`expirationDate` <- `expirationDate`
      }
      if (!is.null(`serviceUrl`)) {
        if (!(is.character(`serviceUrl`) && length(`serviceUrl`) == 1)) {
          stop(paste("Error! Invalid data for `serviceUrl`. Must be a string:", `serviceUrl`))
        }
        self$`serviceUrl` <- `serviceUrl`
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
    #' @return AwsS3TemporaryUploadCredentials in JSON format
    #' @export
    toJSON = function() {
      AwsS3TemporaryUploadCredentialsObject <- list()
      if (!is.null(self$`access_Key_Id`)) {
        AwsS3TemporaryUploadCredentialsObject[["access_Key_Id"]] <-
          self$`access_Key_Id`
      }
      if (!is.null(self$`secret_Access_Key`)) {
        AwsS3TemporaryUploadCredentialsObject[["secret_Access_Key"]] <-
          self$`secret_Access_Key`
      }
      if (!is.null(self$`session_Token`)) {
        AwsS3TemporaryUploadCredentialsObject[["session_Token"]] <-
          self$`session_Token`
      }
      if (!is.null(self$`region`)) {
        AwsS3TemporaryUploadCredentialsObject[["region"]] <-
          self$`region`
      }
      if (!is.null(self$`bucketName`)) {
        AwsS3TemporaryUploadCredentialsObject[["bucketName"]] <-
          self$`bucketName`
      }
      if (!is.null(self$`keyPrefix`)) {
        AwsS3TemporaryUploadCredentialsObject[["keyPrefix"]] <-
          self$`keyPrefix`
      }
      if (!is.null(self$`expirationDate`)) {
        AwsS3TemporaryUploadCredentialsObject[["expirationDate"]] <-
          self$`expirationDate`
      }
      if (!is.null(self$`serviceUrl`)) {
        AwsS3TemporaryUploadCredentialsObject[["serviceUrl"]] <-
          self$`serviceUrl`
      }
      if (!is.null(self$`serverSideEncryptionAlgorithm`)) {
        AwsS3TemporaryUploadCredentialsObject[["serverSideEncryptionAlgorithm"]] <-
          self$`serverSideEncryptionAlgorithm`
      }
      if (!is.null(self$`serverSideEncryptionKey`)) {
        AwsS3TemporaryUploadCredentialsObject[["serverSideEncryptionKey"]] <-
          self$`serverSideEncryptionKey`
      }
      AwsS3TemporaryUploadCredentialsObject
    },
    #' Deserialize JSON string into an instance of AwsS3TemporaryUploadCredentials
    #'
    #' @description
    #' Deserialize JSON string into an instance of AwsS3TemporaryUploadCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of AwsS3TemporaryUploadCredentials
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`access_Key_Id`)) {
        self$`access_Key_Id` <- this_object$`access_Key_Id`
      }
      if (!is.null(this_object$`secret_Access_Key`)) {
        self$`secret_Access_Key` <- this_object$`secret_Access_Key`
      }
      if (!is.null(this_object$`session_Token`)) {
        self$`session_Token` <- this_object$`session_Token`
      }
      if (!is.null(this_object$`region`)) {
        self$`region` <- this_object$`region`
      }
      if (!is.null(this_object$`bucketName`)) {
        self$`bucketName` <- this_object$`bucketName`
      }
      if (!is.null(this_object$`keyPrefix`)) {
        self$`keyPrefix` <- this_object$`keyPrefix`
      }
      if (!is.null(this_object$`expirationDate`)) {
        self$`expirationDate` <- this_object$`expirationDate`
      }
      if (!is.null(this_object$`serviceUrl`)) {
        self$`serviceUrl` <- this_object$`serviceUrl`
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
    #' @return AwsS3TemporaryUploadCredentials in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`access_Key_Id`)) {
          sprintf(
          '"access_Key_Id":
            "%s"
                    ',
          self$`access_Key_Id`
          )
        },
        if (!is.null(self$`secret_Access_Key`)) {
          sprintf(
          '"secret_Access_Key":
            "%s"
                    ',
          self$`secret_Access_Key`
          )
        },
        if (!is.null(self$`session_Token`)) {
          sprintf(
          '"session_Token":
            "%s"
                    ',
          self$`session_Token`
          )
        },
        if (!is.null(self$`region`)) {
          sprintf(
          '"region":
            "%s"
                    ',
          self$`region`
          )
        },
        if (!is.null(self$`bucketName`)) {
          sprintf(
          '"bucketName":
            "%s"
                    ',
          self$`bucketName`
          )
        },
        if (!is.null(self$`keyPrefix`)) {
          sprintf(
          '"keyPrefix":
            "%s"
                    ',
          self$`keyPrefix`
          )
        },
        if (!is.null(self$`expirationDate`)) {
          sprintf(
          '"expirationDate":
            "%s"
                    ',
          self$`expirationDate`
          )
        },
        if (!is.null(self$`serviceUrl`)) {
          sprintf(
          '"serviceUrl":
            "%s"
                    ',
          self$`serviceUrl`
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
    #' Deserialize JSON string into an instance of AwsS3TemporaryUploadCredentials
    #'
    #' @description
    #' Deserialize JSON string into an instance of AwsS3TemporaryUploadCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of AwsS3TemporaryUploadCredentials
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`access_Key_Id` <- this_object$`access_Key_Id`
      self$`secret_Access_Key` <- this_object$`secret_Access_Key`
      self$`session_Token` <- this_object$`session_Token`
      self$`region` <- this_object$`region`
      self$`bucketName` <- this_object$`bucketName`
      self$`keyPrefix` <- this_object$`keyPrefix`
      self$`expirationDate` <- this_object$`expirationDate`
      self$`serviceUrl` <- this_object$`serviceUrl`
      self$`serverSideEncryptionAlgorithm` <- this_object$`serverSideEncryptionAlgorithm`
      self$`serverSideEncryptionKey` <- this_object$`serverSideEncryptionKey`
      self
    },
    #' Validate JSON input with respect to AwsS3TemporaryUploadCredentials
    #'
    #' @description
    #' Validate JSON input with respect to AwsS3TemporaryUploadCredentials and throw an exception if invalid
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
    #' @return String representation of AwsS3TemporaryUploadCredentials
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
# AwsS3TemporaryUploadCredentials$unlock()
#
## Below is an example to define the print function
# AwsS3TemporaryUploadCredentials$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AwsS3TemporaryUploadCredentials$lock()

