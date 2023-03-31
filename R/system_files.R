#' Create a new SystemFiles
#'
#' @description
#' SystemFiles Class
#'
#' @docType class
#' @title SystemFiles
#' @description SystemFiles Class
#' @format An \code{R6Class} generator object
#' @field url  character [optional]
#' @field urn  character [optional]
#' @field storageProvider  character [optional]
#' @field credentials  named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SystemFiles <- R6::R6Class(
  "SystemFiles",
  public = list(
    `url` = NULL,
    `urn` = NULL,
    `storageProvider` = NULL,
    `credentials` = NULL,
    #' Initialize a new SystemFiles class.
    #'
    #' @description
    #' Initialize a new SystemFiles class.
    #'
    #' @param url url
    #' @param urn urn
    #' @param storageProvider storageProvider
    #' @param credentials credentials
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`url` = NULL, `urn` = NULL, `storageProvider` = NULL, `credentials` = NULL, ...) {
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`urn`)) {
        if (!(is.character(`urn`) && length(`urn`) == 1)) {
          stop(paste("Error! Invalid data for `urn`. Must be a string:", `urn`))
        }
        self$`urn` <- `urn`
      }
      if (!is.null(`storageProvider`)) {
        if (!(is.character(`storageProvider`) && length(`storageProvider`) == 1)) {
          stop(paste("Error! Invalid data for `storageProvider`. Must be a string:", `storageProvider`))
        }
        self$`storageProvider` <- `storageProvider`
      }
      if (!is.null(`credentials`)) {
        stopifnot(is.vector(`credentials`), length(`credentials`) != 0)
        sapply(`credentials`, function(x) stopifnot(is.character(x)))
        self$`credentials` <- `credentials`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SystemFiles in JSON format
    #' @export
    toJSON = function() {
      SystemFilesObject <- list()
      if (!is.null(self$`url`)) {
        SystemFilesObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`urn`)) {
        SystemFilesObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`storageProvider`)) {
        SystemFilesObject[["storageProvider"]] <-
          self$`storageProvider`
      }
      if (!is.null(self$`credentials`)) {
        SystemFilesObject[["credentials"]] <-
          self$`credentials`
      }
      SystemFilesObject
    },
    #' Deserialize JSON string into an instance of SystemFiles
    #'
    #' @description
    #' Deserialize JSON string into an instance of SystemFiles
    #'
    #' @param input_json the JSON input
    #' @return the instance of SystemFiles
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`urn`)) {
        self$`urn` <- this_object$`urn`
      }
      if (!is.null(this_object$`storageProvider`)) {
        self$`storageProvider` <- this_object$`storageProvider`
      }
      if (!is.null(this_object$`credentials`)) {
        self$`credentials` <- ApiClient$new()$deserializeObj(this_object$`credentials`, "map(character)", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SystemFiles in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`url`)) {
          sprintf(
          '"url":
            "%s"
                    ',
          self$`url`
          )
        },
        if (!is.null(self$`urn`)) {
          sprintf(
          '"urn":
            "%s"
                    ',
          self$`urn`
          )
        },
        if (!is.null(self$`storageProvider`)) {
          sprintf(
          '"storageProvider":
            "%s"
                    ',
          self$`storageProvider`
          )
        },
        if (!is.null(self$`credentials`)) {
          sprintf(
          '"credentials":
            "%s"
          ',
          jsonlite::toJSON(lapply(self$`credentials`, function(x){ x }), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SystemFiles
    #'
    #' @description
    #' Deserialize JSON string into an instance of SystemFiles
    #'
    #' @param input_json the JSON input
    #' @return the instance of SystemFiles
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`url` <- this_object$`url`
      self$`urn` <- this_object$`urn`
      self$`storageProvider` <- this_object$`storageProvider`
      self$`credentials` <- ApiClient$new()$deserializeObj(this_object$`credentials`, "map(character)", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to SystemFiles
    #'
    #' @description
    #' Validate JSON input with respect to SystemFiles and throw an exception if invalid
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
    #' @return String representation of SystemFiles
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
# SystemFiles$unlock()
#
## Below is an example to define the print function
# SystemFiles$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SystemFiles$lock()

