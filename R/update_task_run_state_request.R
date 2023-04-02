#' Create a new UpdateTaskRunStateRequest
#'
#' @description
#' UpdateTaskRunStateRequest Class
#'
#' @docType class
#' @title UpdateTaskRunStateRequest
#' @description UpdateTaskRunStateRequest Class
#' @format An \code{R6Class} generator object
#' @field status New TaskRun status to be updated character [optional]
#' @field statusDetails Description of the event that triggered the state change character [optional]
#' @field startTime TaskRun execution start time character [optional]
#' @field completionTime TaskRun execution completion time character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateTaskRunStateRequest <- R6::R6Class(
  "UpdateTaskRunStateRequest",
  public = list(
    `status` = NULL,
    `statusDetails` = NULL,
    `startTime` = NULL,
    `completionTime` = NULL,
    #' Initialize a new UpdateTaskRunStateRequest class.
    #'
    #' @description
    #' Initialize a new UpdateTaskRunStateRequest class.
    #'
    #' @param status New TaskRun status to be updated
    #' @param statusDetails Description of the event that triggered the state change
    #' @param startTime TaskRun execution start time
    #' @param completionTime TaskRun execution completion time
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`status` = NULL, `statusDetails` = NULL, `startTime` = NULL, `completionTime` = NULL, ...) {
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`statusDetails`)) {
        if (!(is.character(`statusDetails`) && length(`statusDetails`) == 1)) {
          stop(paste("Error! Invalid data for `statusDetails`. Must be a string:", `statusDetails`))
        }
        self$`statusDetails` <- `statusDetails`
      }
      if (!is.null(`startTime`)) {
        if (!is.character(`startTime`)) {
          stop(paste("Error! Invalid data for `startTime`. Must be a string:", `startTime`))
        }
        self$`startTime` <- `startTime`
      }
      if (!is.null(`completionTime`)) {
        if (!is.character(`completionTime`)) {
          stop(paste("Error! Invalid data for `completionTime`. Must be a string:", `completionTime`))
        }
        self$`completionTime` <- `completionTime`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateTaskRunStateRequest in JSON format
    #' @export
    toJSON = function() {
      UpdateTaskRunStateRequestObject <- list()
      if (!is.null(self$`status`)) {
        UpdateTaskRunStateRequestObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`statusDetails`)) {
        UpdateTaskRunStateRequestObject[["statusDetails"]] <-
          self$`statusDetails`
      }
      if (!is.null(self$`startTime`)) {
        UpdateTaskRunStateRequestObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`completionTime`)) {
        UpdateTaskRunStateRequestObject[["completionTime"]] <-
          self$`completionTime`
      }
      UpdateTaskRunStateRequestObject
    },
    #' Deserialize JSON string into an instance of UpdateTaskRunStateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateTaskRunStateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateTaskRunStateRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`statusDetails`)) {
        self$`statusDetails` <- this_object$`statusDetails`
      }
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      if (!is.null(this_object$`completionTime`)) {
        self$`completionTime` <- this_object$`completionTime`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateTaskRunStateRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            "%s"
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`statusDetails`)) {
          sprintf(
          '"statusDetails":
            "%s"
                    ',
          self$`statusDetails`
          )
        },
        if (!is.null(self$`startTime`)) {
          sprintf(
          '"startTime":
            "%s"
                    ',
          self$`startTime`
          )
        },
        if (!is.null(self$`completionTime`)) {
          sprintf(
          '"completionTime":
            "%s"
                    ',
          self$`completionTime`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UpdateTaskRunStateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateTaskRunStateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateTaskRunStateRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`status` <- this_object$`status`
      self$`statusDetails` <- this_object$`statusDetails`
      self$`startTime` <- this_object$`startTime`
      self$`completionTime` <- this_object$`completionTime`
      self
    },
    #' Validate JSON input with respect to UpdateTaskRunStateRequest
    #'
    #' @description
    #' Validate JSON input with respect to UpdateTaskRunStateRequest and throw an exception if invalid
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
    #' @return String representation of UpdateTaskRunStateRequest
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
# UpdateTaskRunStateRequest$unlock()
#
## Below is an example to define the print function
# UpdateTaskRunStateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateTaskRunStateRequest$lock()

