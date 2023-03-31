#' Create a new ContainerStateRunning
#'
#' @description
#' ContainerStateRunning Class
#'
#' @docType class
#' @title ContainerStateRunning
#' @description ContainerStateRunning Class
#' @format An \code{R6Class} generator object
#' @field startedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContainerStateRunning <- R6::R6Class(
  "ContainerStateRunning",
  public = list(
    `startedAt` = NULL,
    #' Initialize a new ContainerStateRunning class.
    #'
    #' @description
    #' Initialize a new ContainerStateRunning class.
    #'
    #' @param startedAt startedAt
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`startedAt` = NULL, ...) {
      if (!is.null(`startedAt`)) {
        if (!is.character(`startedAt`)) {
          stop(paste("Error! Invalid data for `startedAt`. Must be a string:", `startedAt`))
        }
        self$`startedAt` <- `startedAt`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ContainerStateRunning in JSON format
    #' @export
    toJSON = function() {
      ContainerStateRunningObject <- list()
      if (!is.null(self$`startedAt`)) {
        ContainerStateRunningObject[["startedAt"]] <-
          self$`startedAt`
      }
      ContainerStateRunningObject
    },
    #' Deserialize JSON string into an instance of ContainerStateRunning
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContainerStateRunning
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContainerStateRunning
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`startedAt`)) {
        self$`startedAt` <- this_object$`startedAt`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ContainerStateRunning in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`startedAt`)) {
          sprintf(
          '"startedAt":
            "%s"
                    ',
          self$`startedAt`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ContainerStateRunning
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContainerStateRunning
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContainerStateRunning
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`startedAt` <- this_object$`startedAt`
      self
    },
    #' Validate JSON input with respect to ContainerStateRunning
    #'
    #' @description
    #' Validate JSON input with respect to ContainerStateRunning and throw an exception if invalid
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
    #' @return String representation of ContainerStateRunning
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
# ContainerStateRunning$unlock()
#
## Below is an example to define the print function
# ContainerStateRunning$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContainerStateRunning$lock()

