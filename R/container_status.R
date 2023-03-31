#' Create a new ContainerStatus
#'
#' @description
#' ContainerStatus Class
#'
#' @docType class
#' @title ContainerStatus
#' @description ContainerStatus Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field state  \link{ContainerState} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContainerStatus <- R6::R6Class(
  "ContainerStatus",
  public = list(
    `name` = NULL,
    `state` = NULL,
    #' Initialize a new ContainerStatus class.
    #'
    #' @description
    #' Initialize a new ContainerStatus class.
    #'
    #' @param name name
    #' @param state state
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `state` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`state`)) {
        stopifnot(R6::is.R6(`state`))
        self$`state` <- `state`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ContainerStatus in JSON format
    #' @export
    toJSON = function() {
      ContainerStatusObject <- list()
      if (!is.null(self$`name`)) {
        ContainerStatusObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`state`)) {
        ContainerStatusObject[["state"]] <-
          self$`state`$toJSON()
      }
      ContainerStatusObject
    },
    #' Deserialize JSON string into an instance of ContainerStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContainerStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContainerStatus
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`state`)) {
        `state_object` <- ContainerState$new()
        `state_object`$fromJSON(jsonlite::toJSON(this_object$`state`, auto_unbox = TRUE, digits = NA))
        self$`state` <- `state_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ContainerStatus in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`state`)) {
          sprintf(
          '"state":
          %s
          ',
          jsonlite::toJSON(self$`state`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ContainerStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContainerStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContainerStatus
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`state` <- ContainerState$new()$fromJSON(jsonlite::toJSON(this_object$`state`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to ContainerStatus
    #'
    #' @description
    #' Validate JSON input with respect to ContainerStatus and throw an exception if invalid
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
    #' @return String representation of ContainerStatus
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
# ContainerStatus$unlock()
#
## Below is an example to define the print function
# ContainerStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContainerStatus$lock()

