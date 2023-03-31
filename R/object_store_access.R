#' Create a new ObjectStoreAccess
#'
#' @description
#' ObjectStoreAccess to get the temporaryCredentials per provider
#'
#' @docType class
#' @title ObjectStoreAccess
#' @description ObjectStoreAccess Class
#' @format An \code{R6Class} generator object
#' @field sessionId  character [optional]
#' @field awsS3TemporaryUploadCredentials  \link{AwsS3TemporaryUploadCredentials} [optional]
#' @field awsS3PresignedUrlForUpload  \link{AwsS3PresignedUrlForUpload} [optional]
#' @field awsS3TemporaryReadOnlyCredentials  \link{AwsS3TemporaryReadOnlyCredentials} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObjectStoreAccess <- R6::R6Class(
  "ObjectStoreAccess",
  public = list(
    `sessionId` = NULL,
    `awsS3TemporaryUploadCredentials` = NULL,
    `awsS3PresignedUrlForUpload` = NULL,
    `awsS3TemporaryReadOnlyCredentials` = NULL,
    #' Initialize a new ObjectStoreAccess class.
    #'
    #' @description
    #' Initialize a new ObjectStoreAccess class.
    #'
    #' @param sessionId sessionId
    #' @param awsS3TemporaryUploadCredentials awsS3TemporaryUploadCredentials
    #' @param awsS3PresignedUrlForUpload awsS3PresignedUrlForUpload
    #' @param awsS3TemporaryReadOnlyCredentials awsS3TemporaryReadOnlyCredentials
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`sessionId` = NULL, `awsS3TemporaryUploadCredentials` = NULL, `awsS3PresignedUrlForUpload` = NULL, `awsS3TemporaryReadOnlyCredentials` = NULL, ...) {
      if (!is.null(`sessionId`)) {
        if (!(is.character(`sessionId`) && length(`sessionId`) == 1)) {
          stop(paste("Error! Invalid data for `sessionId`. Must be a string:", `sessionId`))
        }
        self$`sessionId` <- `sessionId`
      }
      if (!is.null(`awsS3TemporaryUploadCredentials`)) {
        stopifnot(R6::is.R6(`awsS3TemporaryUploadCredentials`))
        self$`awsS3TemporaryUploadCredentials` <- `awsS3TemporaryUploadCredentials`
      }
      if (!is.null(`awsS3PresignedUrlForUpload`)) {
        stopifnot(R6::is.R6(`awsS3PresignedUrlForUpload`))
        self$`awsS3PresignedUrlForUpload` <- `awsS3PresignedUrlForUpload`
      }
      if (!is.null(`awsS3TemporaryReadOnlyCredentials`)) {
        stopifnot(R6::is.R6(`awsS3TemporaryReadOnlyCredentials`))
        self$`awsS3TemporaryReadOnlyCredentials` <- `awsS3TemporaryReadOnlyCredentials`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ObjectStoreAccess in JSON format
    #' @export
    toJSON = function() {
      ObjectStoreAccessObject <- list()
      if (!is.null(self$`sessionId`)) {
        ObjectStoreAccessObject[["sessionId"]] <-
          self$`sessionId`
      }
      if (!is.null(self$`awsS3TemporaryUploadCredentials`)) {
        ObjectStoreAccessObject[["awsS3TemporaryUploadCredentials"]] <-
          self$`awsS3TemporaryUploadCredentials`$toJSON()
      }
      if (!is.null(self$`awsS3PresignedUrlForUpload`)) {
        ObjectStoreAccessObject[["awsS3PresignedUrlForUpload"]] <-
          self$`awsS3PresignedUrlForUpload`$toJSON()
      }
      if (!is.null(self$`awsS3TemporaryReadOnlyCredentials`)) {
        ObjectStoreAccessObject[["awsS3TemporaryReadOnlyCredentials"]] <-
          self$`awsS3TemporaryReadOnlyCredentials`$toJSON()
      }
      ObjectStoreAccessObject
    },
    #' Deserialize JSON string into an instance of ObjectStoreAccess
    #'
    #' @description
    #' Deserialize JSON string into an instance of ObjectStoreAccess
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObjectStoreAccess
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sessionId`)) {
        self$`sessionId` <- this_object$`sessionId`
      }
      if (!is.null(this_object$`awsS3TemporaryUploadCredentials`)) {
        `awss3temporaryuploadcredentials_object` <- AwsS3TemporaryUploadCredentials$new()
        `awss3temporaryuploadcredentials_object`$fromJSON(jsonlite::toJSON(this_object$`awsS3TemporaryUploadCredentials`, auto_unbox = TRUE, digits = NA))
        self$`awsS3TemporaryUploadCredentials` <- `awss3temporaryuploadcredentials_object`
      }
      if (!is.null(this_object$`awsS3PresignedUrlForUpload`)) {
        `awss3presignedurlforupload_object` <- AwsS3PresignedUrlForUpload$new()
        `awss3presignedurlforupload_object`$fromJSON(jsonlite::toJSON(this_object$`awsS3PresignedUrlForUpload`, auto_unbox = TRUE, digits = NA))
        self$`awsS3PresignedUrlForUpload` <- `awss3presignedurlforupload_object`
      }
      if (!is.null(this_object$`awsS3TemporaryReadOnlyCredentials`)) {
        `awss3temporaryreadonlycredentials_object` <- AwsS3TemporaryReadOnlyCredentials$new()
        `awss3temporaryreadonlycredentials_object`$fromJSON(jsonlite::toJSON(this_object$`awsS3TemporaryReadOnlyCredentials`, auto_unbox = TRUE, digits = NA))
        self$`awsS3TemporaryReadOnlyCredentials` <- `awss3temporaryreadonlycredentials_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ObjectStoreAccess in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`sessionId`)) {
          sprintf(
          '"sessionId":
            "%s"
                    ',
          self$`sessionId`
          )
        },
        if (!is.null(self$`awsS3TemporaryUploadCredentials`)) {
          sprintf(
          '"awsS3TemporaryUploadCredentials":
          %s
          ',
          jsonlite::toJSON(self$`awsS3TemporaryUploadCredentials`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`awsS3PresignedUrlForUpload`)) {
          sprintf(
          '"awsS3PresignedUrlForUpload":
          %s
          ',
          jsonlite::toJSON(self$`awsS3PresignedUrlForUpload`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`awsS3TemporaryReadOnlyCredentials`)) {
          sprintf(
          '"awsS3TemporaryReadOnlyCredentials":
          %s
          ',
          jsonlite::toJSON(self$`awsS3TemporaryReadOnlyCredentials`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ObjectStoreAccess
    #'
    #' @description
    #' Deserialize JSON string into an instance of ObjectStoreAccess
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObjectStoreAccess
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sessionId` <- this_object$`sessionId`
      self$`awsS3TemporaryUploadCredentials` <- AwsS3TemporaryUploadCredentials$new()$fromJSON(jsonlite::toJSON(this_object$`awsS3TemporaryUploadCredentials`, auto_unbox = TRUE, digits = NA))
      self$`awsS3PresignedUrlForUpload` <- AwsS3PresignedUrlForUpload$new()$fromJSON(jsonlite::toJSON(this_object$`awsS3PresignedUrlForUpload`, auto_unbox = TRUE, digits = NA))
      self$`awsS3TemporaryReadOnlyCredentials` <- AwsS3TemporaryReadOnlyCredentials$new()$fromJSON(jsonlite::toJSON(this_object$`awsS3TemporaryReadOnlyCredentials`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to ObjectStoreAccess
    #'
    #' @description
    #' Validate JSON input with respect to ObjectStoreAccess and throw an exception if invalid
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
    #' @return String representation of ObjectStoreAccess
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
# ObjectStoreAccess$unlock()
#
## Below is an example to define the print function
# ObjectStoreAccess$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObjectStoreAccess$lock()

