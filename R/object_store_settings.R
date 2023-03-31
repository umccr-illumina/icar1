#' Create a new ObjectStoreSettings
#'
#' @description
#' ObjectStoreSettings Class
#'
#' @docType class
#' @title ObjectStoreSettings
#' @description ObjectStoreSettings Class
#' @format An \code{R6Class} generator object
#' @field awsS3  \link{AWSS3ObjectStoreSetting} [optional]
#' @field secretName Platform credentials Name  Must provide either SecretId or SecretName character [optional]
#' @field secretId Platform credentials Id  Must provide either SecretId or SecretName character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObjectStoreSettings <- R6::R6Class(
  "ObjectStoreSettings",
  public = list(
    `awsS3` = NULL,
    `secretName` = NULL,
    `secretId` = NULL,
    #' Initialize a new ObjectStoreSettings class.
    #'
    #' @description
    #' Initialize a new ObjectStoreSettings class.
    #'
    #' @param awsS3 awsS3
    #' @param secretName Platform credentials Name  Must provide either SecretId or SecretName
    #' @param secretId Platform credentials Id  Must provide either SecretId or SecretName
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`awsS3` = NULL, `secretName` = NULL, `secretId` = NULL, ...) {
      if (!is.null(`awsS3`)) {
        stopifnot(R6::is.R6(`awsS3`))
        self$`awsS3` <- `awsS3`
      }
      if (!is.null(`secretName`)) {
        if (!(is.character(`secretName`) && length(`secretName`) == 1)) {
          stop(paste("Error! Invalid data for `secretName`. Must be a string:", `secretName`))
        }
        self$`secretName` <- `secretName`
      }
      if (!is.null(`secretId`)) {
        if (!(is.character(`secretId`) && length(`secretId`) == 1)) {
          stop(paste("Error! Invalid data for `secretId`. Must be a string:", `secretId`))
        }
        self$`secretId` <- `secretId`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ObjectStoreSettings in JSON format
    #' @export
    toJSON = function() {
      ObjectStoreSettingsObject <- list()
      if (!is.null(self$`awsS3`)) {
        ObjectStoreSettingsObject[["awsS3"]] <-
          self$`awsS3`$toJSON()
      }
      if (!is.null(self$`secretName`)) {
        ObjectStoreSettingsObject[["secretName"]] <-
          self$`secretName`
      }
      if (!is.null(self$`secretId`)) {
        ObjectStoreSettingsObject[["secretId"]] <-
          self$`secretId`
      }
      ObjectStoreSettingsObject
    },
    #' Deserialize JSON string into an instance of ObjectStoreSettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of ObjectStoreSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObjectStoreSettings
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`awsS3`)) {
        `awss3_object` <- AWSS3ObjectStoreSetting$new()
        `awss3_object`$fromJSON(jsonlite::toJSON(this_object$`awsS3`, auto_unbox = TRUE, digits = NA))
        self$`awsS3` <- `awss3_object`
      }
      if (!is.null(this_object$`secretName`)) {
        self$`secretName` <- this_object$`secretName`
      }
      if (!is.null(this_object$`secretId`)) {
        self$`secretId` <- this_object$`secretId`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ObjectStoreSettings in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`awsS3`)) {
          sprintf(
          '"awsS3":
          %s
          ',
          jsonlite::toJSON(self$`awsS3`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`secretName`)) {
          sprintf(
          '"secretName":
            "%s"
                    ',
          self$`secretName`
          )
        },
        if (!is.null(self$`secretId`)) {
          sprintf(
          '"secretId":
            "%s"
                    ',
          self$`secretId`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ObjectStoreSettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of ObjectStoreSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObjectStoreSettings
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`awsS3` <- AWSS3ObjectStoreSetting$new()$fromJSON(jsonlite::toJSON(this_object$`awsS3`, auto_unbox = TRUE, digits = NA))
      self$`secretName` <- this_object$`secretName`
      self$`secretId` <- this_object$`secretId`
      self
    },
    #' Validate JSON input with respect to ObjectStoreSettings
    #'
    #' @description
    #' Validate JSON input with respect to ObjectStoreSettings and throw an exception if invalid
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
    #' @return String representation of ObjectStoreSettings
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
# ObjectStoreSettings$unlock()
#
## Below is an example to define the print function
# ObjectStoreSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObjectStoreSettings$lock()

