#' Create a new ContainerState
#'
#' @description
#' ContainerState Class
#'
#' @docType class
#' @title ContainerState
#' @description ContainerState Class
#' @format An \code{R6Class} generator object
#' @field waiting  \link{ContainerStateWaiting} [optional]
#' @field running  \link{ContainerStateRunning} [optional]
#' @field terminated  \link{ContainerStateTerminated} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContainerState <- R6::R6Class(
  "ContainerState",
  public = list(
    `waiting` = NULL,
    `running` = NULL,
    `terminated` = NULL,
    #' Initialize a new ContainerState class.
    #'
    #' @description
    #' Initialize a new ContainerState class.
    #'
    #' @param waiting waiting
    #' @param running running
    #' @param terminated terminated
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`waiting` = NULL, `running` = NULL, `terminated` = NULL, ...) {
      if (!is.null(`waiting`)) {
        stopifnot(R6::is.R6(`waiting`))
        self$`waiting` <- `waiting`
      }
      if (!is.null(`running`)) {
        stopifnot(R6::is.R6(`running`))
        self$`running` <- `running`
      }
      if (!is.null(`terminated`)) {
        stopifnot(R6::is.R6(`terminated`))
        self$`terminated` <- `terminated`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ContainerState in JSON format
    #' @export
    toJSON = function() {
      ContainerStateObject <- list()
      if (!is.null(self$`waiting`)) {
        ContainerStateObject[["waiting"]] <-
          self$`waiting`$toJSON()
      }
      if (!is.null(self$`running`)) {
        ContainerStateObject[["running"]] <-
          self$`running`$toJSON()
      }
      if (!is.null(self$`terminated`)) {
        ContainerStateObject[["terminated"]] <-
          self$`terminated`$toJSON()
      }
      ContainerStateObject
    },
    #' Deserialize JSON string into an instance of ContainerState
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContainerState
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContainerState
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`waiting`)) {
        `waiting_object` <- ContainerStateWaiting$new()
        `waiting_object`$fromJSON(jsonlite::toJSON(this_object$`waiting`, auto_unbox = TRUE, digits = NA))
        self$`waiting` <- `waiting_object`
      }
      if (!is.null(this_object$`running`)) {
        `running_object` <- ContainerStateRunning$new()
        `running_object`$fromJSON(jsonlite::toJSON(this_object$`running`, auto_unbox = TRUE, digits = NA))
        self$`running` <- `running_object`
      }
      if (!is.null(this_object$`terminated`)) {
        `terminated_object` <- ContainerStateTerminated$new()
        `terminated_object`$fromJSON(jsonlite::toJSON(this_object$`terminated`, auto_unbox = TRUE, digits = NA))
        self$`terminated` <- `terminated_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ContainerState in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`waiting`)) {
          sprintf(
          '"waiting":
          %s
          ',
          jsonlite::toJSON(self$`waiting`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`running`)) {
          sprintf(
          '"running":
          %s
          ',
          jsonlite::toJSON(self$`running`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`terminated`)) {
          sprintf(
          '"terminated":
          %s
          ',
          jsonlite::toJSON(self$`terminated`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ContainerState
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContainerState
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContainerState
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`waiting` <- ContainerStateWaiting$new()$fromJSON(jsonlite::toJSON(this_object$`waiting`, auto_unbox = TRUE, digits = NA))
      self$`running` <- ContainerStateRunning$new()$fromJSON(jsonlite::toJSON(this_object$`running`, auto_unbox = TRUE, digits = NA))
      self$`terminated` <- ContainerStateTerminated$new()$fromJSON(jsonlite::toJSON(this_object$`terminated`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to ContainerState
    #'
    #' @description
    #' Validate JSON input with respect to ContainerState and throw an exception if invalid
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
    #' @return String representation of ContainerState
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
# ContainerState$unlock()
#
## Below is an example to define the print function
# ContainerState$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContainerState$lock()

