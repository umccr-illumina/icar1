#' Create a new TaskRunLogs
#'
#' @description
#' TaskRunLogs Class
#'
#' @docType class
#' @title TaskRunLogs
#' @description TaskRunLogs Class
#' @format An \code{R6Class} generator object
#' @field startTime  character [optional]
#' @field endTime  character [optional]
#' @field error  character [optional]
#' @field errorDetails  character [optional]
#' @field stdout  character [optional]
#' @field stderr  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TaskRunLogs <- R6::R6Class(
  "TaskRunLogs",
  public = list(
    `startTime` = NULL,
    `endTime` = NULL,
    `error` = NULL,
    `errorDetails` = NULL,
    `stdout` = NULL,
    `stderr` = NULL,
    #' Initialize a new TaskRunLogs class.
    #'
    #' @description
    #' Initialize a new TaskRunLogs class.
    #'
    #' @param startTime startTime
    #' @param endTime endTime
    #' @param error error
    #' @param errorDetails errorDetails
    #' @param stdout stdout
    #' @param stderr stderr
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`startTime` = NULL, `endTime` = NULL, `error` = NULL, `errorDetails` = NULL, `stdout` = NULL, `stderr` = NULL, ...) {
      if (!is.null(`startTime`)) {
        if (!is.character(`startTime`)) {
          stop(paste("Error! Invalid data for `startTime`. Must be a string:", `startTime`))
        }
        self$`startTime` <- `startTime`
      }
      if (!is.null(`endTime`)) {
        if (!is.character(`endTime`)) {
          stop(paste("Error! Invalid data for `endTime`. Must be a string:", `endTime`))
        }
        self$`endTime` <- `endTime`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`errorDetails`)) {
        if (!(is.character(`errorDetails`) && length(`errorDetails`) == 1)) {
          stop(paste("Error! Invalid data for `errorDetails`. Must be a string:", `errorDetails`))
        }
        self$`errorDetails` <- `errorDetails`
      }
      if (!is.null(`stdout`)) {
        if (!(is.character(`stdout`) && length(`stdout`) == 1)) {
          stop(paste("Error! Invalid data for `stdout`. Must be a string:", `stdout`))
        }
        self$`stdout` <- `stdout`
      }
      if (!is.null(`stderr`)) {
        if (!(is.character(`stderr`) && length(`stderr`) == 1)) {
          stop(paste("Error! Invalid data for `stderr`. Must be a string:", `stderr`))
        }
        self$`stderr` <- `stderr`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TaskRunLogs in JSON format
    #' @export
    toJSON = function() {
      TaskRunLogsObject <- list()
      if (!is.null(self$`startTime`)) {
        TaskRunLogsObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`endTime`)) {
        TaskRunLogsObject[["endTime"]] <-
          self$`endTime`
      }
      if (!is.null(self$`error`)) {
        TaskRunLogsObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`errorDetails`)) {
        TaskRunLogsObject[["errorDetails"]] <-
          self$`errorDetails`
      }
      if (!is.null(self$`stdout`)) {
        TaskRunLogsObject[["stdout"]] <-
          self$`stdout`
      }
      if (!is.null(self$`stderr`)) {
        TaskRunLogsObject[["stderr"]] <-
          self$`stderr`
      }
      TaskRunLogsObject
    },
    #' Deserialize JSON string into an instance of TaskRunLogs
    #'
    #' @description
    #' Deserialize JSON string into an instance of TaskRunLogs
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaskRunLogs
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      if (!is.null(this_object$`endTime`)) {
        self$`endTime` <- this_object$`endTime`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`errorDetails`)) {
        self$`errorDetails` <- this_object$`errorDetails`
      }
      if (!is.null(this_object$`stdout`)) {
        self$`stdout` <- this_object$`stdout`
      }
      if (!is.null(this_object$`stderr`)) {
        self$`stderr` <- this_object$`stderr`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TaskRunLogs in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`startTime`)) {
          sprintf(
          '"startTime":
            "%s"
                    ',
          self$`startTime`
          )
        },
        if (!is.null(self$`endTime`)) {
          sprintf(
          '"endTime":
            "%s"
                    ',
          self$`endTime`
          )
        },
        if (!is.null(self$`error`)) {
          sprintf(
          '"error":
            "%s"
                    ',
          self$`error`
          )
        },
        if (!is.null(self$`errorDetails`)) {
          sprintf(
          '"errorDetails":
            "%s"
                    ',
          self$`errorDetails`
          )
        },
        if (!is.null(self$`stdout`)) {
          sprintf(
          '"stdout":
            "%s"
                    ',
          self$`stdout`
          )
        },
        if (!is.null(self$`stderr`)) {
          sprintf(
          '"stderr":
            "%s"
                    ',
          self$`stderr`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TaskRunLogs
    #'
    #' @description
    #' Deserialize JSON string into an instance of TaskRunLogs
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaskRunLogs
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`startTime` <- this_object$`startTime`
      self$`endTime` <- this_object$`endTime`
      self$`error` <- this_object$`error`
      self$`errorDetails` <- this_object$`errorDetails`
      self$`stdout` <- this_object$`stdout`
      self$`stderr` <- this_object$`stderr`
      self
    },
    #' Validate JSON input with respect to TaskRunLogs
    #'
    #' @description
    #' Validate JSON input with respect to TaskRunLogs and throw an exception if invalid
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
    #' @return String representation of TaskRunLogs
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
# TaskRunLogs$unlock()
#
## Below is an example to define the print function
# TaskRunLogs$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TaskRunLogs$lock()

