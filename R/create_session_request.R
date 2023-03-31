#' Create a new CreateSessionRequest
#'
#' @description
#' CreateSessionRequest Class
#'
#' @docType class
#' @title CreateSessionRequest
#' @description CreateSessionRequest Class
#' @format An \code{R6Class} generator object
#' @field metadata Metadata about this session and its contents object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateSessionRequest <- R6::R6Class(
  "CreateSessionRequest",
  public = list(
    `metadata` = NULL,
    #' Initialize a new CreateSessionRequest class.
    #'
    #' @description
    #' Initialize a new CreateSessionRequest class.
    #'
    #' @param metadata Metadata about this session and its contents
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`metadata` = NULL, ...) {
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateSessionRequest in JSON format
    #' @export
    toJSON = function() {
      CreateSessionRequestObject <- list()
      if (!is.null(self$`metadata`)) {
        CreateSessionRequestObject[["metadata"]] <-
          self$`metadata`
      }
      CreateSessionRequestObject
    },
    #' Deserialize JSON string into an instance of CreateSessionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateSessionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateSessionRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
    #' @return CreateSessionRequest in JSON format
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateSessionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateSessionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateSessionRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metadata` <- this_object$`metadata`
      self
    },
    #' Validate JSON input with respect to CreateSessionRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateSessionRequest and throw an exception if invalid
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
    #' @return String representation of CreateSessionRequest
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
# CreateSessionRequest$unlock()
#
## Below is an example to define the print function
# CreateSessionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateSessionRequest$lock()

