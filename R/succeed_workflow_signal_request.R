#' Create a new SucceedWorkflowSignalRequest
#'
#' @description
#' SucceedWorkflowSignalRequest Class
#'
#' @docType class
#' @title SucceedWorkflowSignalRequest
#' @description SucceedWorkflowSignalRequest Class
#' @format An \code{R6Class} generator object
#' @field result External result of a successful signal. Must resolve to a JSON value. object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SucceedWorkflowSignalRequest <- R6::R6Class(
  "SucceedWorkflowSignalRequest",
  public = list(
    `result` = NULL,
    #' Initialize a new SucceedWorkflowSignalRequest class.
    #'
    #' @description
    #' Initialize a new SucceedWorkflowSignalRequest class.
    #'
    #' @param result External result of a successful signal. Must resolve to a JSON value.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`result` = NULL, ...) {
      if (!is.null(`result`)) {
        self$`result` <- `result`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SucceedWorkflowSignalRequest in JSON format
    #' @export
    toJSON = function() {
      SucceedWorkflowSignalRequestObject <- list()
      if (!is.null(self$`result`)) {
        SucceedWorkflowSignalRequestObject[["result"]] <-
          self$`result`
      }
      SucceedWorkflowSignalRequestObject
    },
    #' Deserialize JSON string into an instance of SucceedWorkflowSignalRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of SucceedWorkflowSignalRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SucceedWorkflowSignalRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`result`)) {
        self$`result` <- this_object$`result`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SucceedWorkflowSignalRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`result`)) {
          sprintf(
          '"result":
            "%s"
                    ',
          self$`result`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SucceedWorkflowSignalRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of SucceedWorkflowSignalRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SucceedWorkflowSignalRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`result` <- this_object$`result`
      self
    },
    #' Validate JSON input with respect to SucceedWorkflowSignalRequest
    #'
    #' @description
    #' Validate JSON input with respect to SucceedWorkflowSignalRequest and throw an exception if invalid
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
    #' @return String representation of SucceedWorkflowSignalRequest
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
# SucceedWorkflowSignalRequest$unlock()
#
## Below is an example to define the print function
# SucceedWorkflowSignalRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SucceedWorkflowSignalRequest$lock()

