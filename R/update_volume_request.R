#' Create a new UpdateVolumeRequest
#'
#' @description
#' UpdateVolumeRequest Class
#'
#' @docType class
#' @title UpdateVolumeRequest
#' @description UpdateVolumeRequest Class
#' @format An \code{R6Class} generator object
#' @field metadata Metadata about this volume and its contents object [optional]
#' @field lifeCycle  \link{VolumeLifeCycleSettings} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateVolumeRequest <- R6::R6Class(
  "UpdateVolumeRequest",
  public = list(
    `metadata` = NULL,
    `lifeCycle` = NULL,
    #' Initialize a new UpdateVolumeRequest class.
    #'
    #' @description
    #' Initialize a new UpdateVolumeRequest class.
    #'
    #' @param metadata Metadata about this volume and its contents
    #' @param lifeCycle lifeCycle
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`metadata` = NULL, `lifeCycle` = NULL, ...) {
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
      if (!is.null(`lifeCycle`)) {
        stopifnot(R6::is.R6(`lifeCycle`))
        self$`lifeCycle` <- `lifeCycle`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateVolumeRequest in JSON format
    #' @export
    toJSON = function() {
      UpdateVolumeRequestObject <- list()
      if (!is.null(self$`metadata`)) {
        UpdateVolumeRequestObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`lifeCycle`)) {
        UpdateVolumeRequestObject[["lifeCycle"]] <-
          self$`lifeCycle`$toJSON()
      }
      UpdateVolumeRequestObject
    },
    #' Deserialize JSON string into an instance of UpdateVolumeRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateVolumeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateVolumeRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`lifeCycle`)) {
        `lifecycle_object` <- VolumeLifeCycleSettings$new()
        `lifecycle_object`$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
        self$`lifeCycle` <- `lifecycle_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateVolumeRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
            "%s"
                    ',
          self$`metadata`
          )
        },
        if (!is.null(self$`lifeCycle`)) {
          sprintf(
          '"lifeCycle":
          %s
          ',
          jsonlite::toJSON(self$`lifeCycle`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UpdateVolumeRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateVolumeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateVolumeRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metadata` <- this_object$`metadata`
      self$`lifeCycle` <- VolumeLifeCycleSettings$new()$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to UpdateVolumeRequest
    #'
    #' @description
    #' Validate JSON input with respect to UpdateVolumeRequest and throw an exception if invalid
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
    #' @return String representation of UpdateVolumeRequest
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
# UpdateVolumeRequest$unlock()
#
## Below is an example to define the print function
# UpdateVolumeRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateVolumeRequest$lock()

