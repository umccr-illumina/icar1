#' Create a new AWSS3ObjectStoreSetting
#'
#' @description
#' AWSS3ObjectStoreSetting Class
#'
#' @docType class
#' @title AWSS3ObjectStoreSetting
#' @description AWSS3ObjectStoreSetting Class
#' @format An \code{R6Class} generator object
#' @field bucketName The bucket name character
#' @field keyPrefix Key prefix within the bucket for GDS to operate within. Volumes may only be created within this prefix and the given credentials need only authorize  access here. If not set, default is to allow operation on the full bucket. No leading slash, and must end with a trailing slash. character [optional]
#' @field serverSideEncryptionAlgorithm Used to specify the type of server-side encryption (SSE) to be used on the object provider.  This value is used to determine the Amazon S3 header \"x-amz-server-side-encryption\" value.  For example, specify \"AES256\" for SSE-S3, or \"AWS:KMS\" for SSE-KMS.  By default if none is specified, \"AES256\" will be used. character [optional]
#' @field serverSideEncryptionKey Used to specify the serve-side encryption key that might be associated with the specified server-side encryption algorithm  This value can be the AWS KMS arn key, to be used for the Amazon S3 header \"x-amz-server-side-encryption-aws-kms-key-id\" value  Value will be ignored if encryption is \"AES256\" character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AWSS3ObjectStoreSetting <- R6::R6Class(
  "AWSS3ObjectStoreSetting",
  public = list(
    `bucketName` = NULL,
    `keyPrefix` = NULL,
    `serverSideEncryptionAlgorithm` = NULL,
    `serverSideEncryptionKey` = NULL,
    #' Initialize a new AWSS3ObjectStoreSetting class.
    #'
    #' @description
    #' Initialize a new AWSS3ObjectStoreSetting class.
    #'
    #' @param bucketName The bucket name
    #' @param keyPrefix Key prefix within the bucket for GDS to operate within. Volumes may only be created within this prefix and the given credentials need only authorize  access here. If not set, default is to allow operation on the full bucket. No leading slash, and must end with a trailing slash.
    #' @param serverSideEncryptionAlgorithm Used to specify the type of server-side encryption (SSE) to be used on the object provider.  This value is used to determine the Amazon S3 header \"x-amz-server-side-encryption\" value.  For example, specify \"AES256\" for SSE-S3, or \"AWS:KMS\" for SSE-KMS.  By default if none is specified, \"AES256\" will be used.
    #' @param serverSideEncryptionKey Used to specify the serve-side encryption key that might be associated with the specified server-side encryption algorithm  This value can be the AWS KMS arn key, to be used for the Amazon S3 header \"x-amz-server-side-encryption-aws-kms-key-id\" value  Value will be ignored if encryption is \"AES256\"
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`bucketName`, `keyPrefix` = NULL, `serverSideEncryptionAlgorithm` = NULL, `serverSideEncryptionKey` = NULL, ...) {
      if (!missing(`bucketName`)) {
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
    #' @return AWSS3ObjectStoreSetting in JSON format
    #' @export
    toJSON = function() {
      AWSS3ObjectStoreSettingObject <- list()
      if (!is.null(self$`bucketName`)) {
        AWSS3ObjectStoreSettingObject[["bucketName"]] <-
          self$`bucketName`
      }
      if (!is.null(self$`keyPrefix`)) {
        AWSS3ObjectStoreSettingObject[["keyPrefix"]] <-
          self$`keyPrefix`
      }
      if (!is.null(self$`serverSideEncryptionAlgorithm`)) {
        AWSS3ObjectStoreSettingObject[["serverSideEncryptionAlgorithm"]] <-
          self$`serverSideEncryptionAlgorithm`
      }
      if (!is.null(self$`serverSideEncryptionKey`)) {
        AWSS3ObjectStoreSettingObject[["serverSideEncryptionKey"]] <-
          self$`serverSideEncryptionKey`
      }
      AWSS3ObjectStoreSettingObject
    },
    #' Deserialize JSON string into an instance of AWSS3ObjectStoreSetting
    #'
    #' @description
    #' Deserialize JSON string into an instance of AWSS3ObjectStoreSetting
    #'
    #' @param input_json the JSON input
    #' @return the instance of AWSS3ObjectStoreSetting
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bucketName`)) {
        self$`bucketName` <- this_object$`bucketName`
      }
      if (!is.null(this_object$`keyPrefix`)) {
        self$`keyPrefix` <- this_object$`keyPrefix`
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
    #' @return AWSS3ObjectStoreSetting in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
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
    #' Deserialize JSON string into an instance of AWSS3ObjectStoreSetting
    #'
    #' @description
    #' Deserialize JSON string into an instance of AWSS3ObjectStoreSetting
    #'
    #' @param input_json the JSON input
    #' @return the instance of AWSS3ObjectStoreSetting
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bucketName` <- this_object$`bucketName`
      self$`keyPrefix` <- this_object$`keyPrefix`
      self$`serverSideEncryptionAlgorithm` <- this_object$`serverSideEncryptionAlgorithm`
      self$`serverSideEncryptionKey` <- this_object$`serverSideEncryptionKey`
      self
    },
    #' Validate JSON input with respect to AWSS3ObjectStoreSetting
    #'
    #' @description
    #' Validate JSON input with respect to AWSS3ObjectStoreSetting and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bucketName`
      if (!is.null(input_json$`bucketName`)) {
        if (!(is.character(input_json$`bucketName`) && length(input_json$`bucketName`) == 1)) {
          stop(paste("Error! Invalid data for `bucketName`. Must be a string:", input_json$`bucketName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AWSS3ObjectStoreSetting: the required field `bucketName` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AWSS3ObjectStoreSetting
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
      # check if the required `bucketName` is null
      if (is.null(self$`bucketName`)) {
        return(FALSE)
      }

      if (nchar(self$`bucketName`) > 63) {
        return(FALSE)
      }
      if (nchar(self$`bucketName`) < 3) {
        return(FALSE)
      }

      if (!str_detect(self$`keyPrefix`, "^[^/].*$")) {
        return(FALSE)
      }

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
      # check if the required `bucketName` is null
      if (is.null(self$`bucketName`)) {
        invalid_fields["bucketName"] <- "Non-nullable required field `bucketName` cannot be null."
      }

      if (nchar(self$`bucketName`) > 63) {
        invalid_fields["bucketName"] <- "Invalid length for `bucketName`, must be smaller than or equal to 63."
      }
      if (nchar(self$`bucketName`) < 3) {
        invalid_fields["bucketName"] <- "Invalid length for `bucketName`, must be bigger than or equal to 3."
      }

      if (!str_detect(self$`keyPrefix`, "^[^/].*$")) {
        invalid_fields["keyPrefix"] <- "Invalid value for `keyPrefix`, must conform to the pattern ^[^/].*$."
      }

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
# AWSS3ObjectStoreSetting$unlock()
#
## Below is an example to define the print function
# AWSS3ObjectStoreSetting$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AWSS3ObjectStoreSetting$lock()

