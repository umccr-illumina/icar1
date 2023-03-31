#' Create a new UpdateFileRequest
#'
#' @description
#' UpdateFileRequest Class
#'
#' @docType class
#' @title UpdateFileRequest
#' @description UpdateFileRequest Class
#' @format An \code{R6Class} generator object
#' @field type The new file type (e.g. \"text/plain\"). character [optional]
#' @field format The File's Format character [optional]
#' @field formatEdam The File's Edam Format character [optional]
#' @field lifeCycle  \link{FileLifeCycleSettings} [optional]
#' @field metadata Metadata about this file and its contents object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateFileRequest <- R6::R6Class(
  "UpdateFileRequest",
  public = list(
    `type` = NULL,
    `format` = NULL,
    `formatEdam` = NULL,
    `lifeCycle` = NULL,
    `metadata` = NULL,
    #' Initialize a new UpdateFileRequest class.
    #'
    #' @description
    #' Initialize a new UpdateFileRequest class.
    #'
    #' @param type The new file type (e.g. \"text/plain\").
    #' @param format The File's Format
    #' @param formatEdam The File's Edam Format
    #' @param lifeCycle lifeCycle
    #' @param metadata Metadata about this file and its contents
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type` = NULL, `format` = NULL, `formatEdam` = NULL, `lifeCycle` = NULL, `metadata` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`format`)) {
        if (!(is.character(`format`) && length(`format`) == 1)) {
          stop(paste("Error! Invalid data for `format`. Must be a string:", `format`))
        }
        self$`format` <- `format`
      }
      if (!is.null(`formatEdam`)) {
        if (!(is.character(`formatEdam`) && length(`formatEdam`) == 1)) {
          stop(paste("Error! Invalid data for `formatEdam`. Must be a string:", `formatEdam`))
        }
        self$`formatEdam` <- `formatEdam`
      }
      if (!is.null(`lifeCycle`)) {
        stopifnot(R6::is.R6(`lifeCycle`))
        self$`lifeCycle` <- `lifeCycle`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateFileRequest in JSON format
    #' @export
    toJSON = function() {
      UpdateFileRequestObject <- list()
      if (!is.null(self$`type`)) {
        UpdateFileRequestObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`format`)) {
        UpdateFileRequestObject[["format"]] <-
          self$`format`
      }
      if (!is.null(self$`formatEdam`)) {
        UpdateFileRequestObject[["formatEdam"]] <-
          self$`formatEdam`
      }
      if (!is.null(self$`lifeCycle`)) {
        UpdateFileRequestObject[["lifeCycle"]] <-
          self$`lifeCycle`$toJSON()
      }
      if (!is.null(self$`metadata`)) {
        UpdateFileRequestObject[["metadata"]] <-
          self$`metadata`
      }
      UpdateFileRequestObject
    },
    #' Deserialize JSON string into an instance of UpdateFileRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateFileRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateFileRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`format`)) {
        self$`format` <- this_object$`format`
      }
      if (!is.null(this_object$`formatEdam`)) {
        self$`formatEdam` <- this_object$`formatEdam`
      }
      if (!is.null(this_object$`lifeCycle`)) {
        `lifecycle_object` <- FileLifeCycleSettings$new()
        `lifecycle_object`$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
        self$`lifeCycle` <- `lifecycle_object`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateFileRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`format`)) {
          sprintf(
          '"format":
            "%s"
                    ',
          self$`format`
          )
        },
        if (!is.null(self$`formatEdam`)) {
          sprintf(
          '"formatEdam":
            "%s"
                    ',
          self$`formatEdam`
          )
        },
        if (!is.null(self$`lifeCycle`)) {
          sprintf(
          '"lifeCycle":
          %s
          ',
          jsonlite::toJSON(self$`lifeCycle`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
            "%s"
                    ',
          self$`metadata`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UpdateFileRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateFileRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateFileRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`format` <- this_object$`format`
      self$`formatEdam` <- this_object$`formatEdam`
      self$`lifeCycle` <- FileLifeCycleSettings$new()$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
      self$`metadata` <- this_object$`metadata`
      self
    },
    #' Validate JSON input with respect to UpdateFileRequest
    #'
    #' @description
    #' Validate JSON input with respect to UpdateFileRequest and throw an exception if invalid
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
    #' @return String representation of UpdateFileRequest
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
# UpdateFileRequest$unlock()
#
## Below is an example to define the print function
# UpdateFileRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateFileRequest$lock()

