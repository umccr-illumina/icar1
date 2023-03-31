#' Create a new ErrorResponse3
#'
#' @description
#' Details for an error which occurred
#'
#' @docType class
#' @title ErrorResponse3
#' @description ErrorResponse3 Class
#' @format An \code{R6Class} generator object
#' @field code Error code which uniquely identifies the type of error which occurred character [optional]
#' @field message Description of the error which occurred character [optional]
#' @field details Additional details for conditions which caused the error list(object) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ErrorResponse3 <- R6::R6Class(
  "ErrorResponse3",
  public = list(
    `code` = NULL,
    `message` = NULL,
    `details` = NULL,
    #' Initialize a new ErrorResponse3 class.
    #'
    #' @description
    #' Initialize a new ErrorResponse3 class.
    #'
    #' @param code Error code which uniquely identifies the type of error which occurred
    #' @param message Description of the error which occurred
    #' @param details Additional details for conditions which caused the error
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`code` = NULL, `message` = NULL, `details` = NULL, ...) {
      if (!is.null(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`details`)) {
        stopifnot(is.vector(`details`), length(`details`) != 0)
        sapply(`details`, function(x) stopifnot(is.character(x)))
        self$`details` <- `details`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ErrorResponse3 in JSON format
    #' @export
    toJSON = function() {
      ErrorResponse3Object <- list()
      if (!is.null(self$`code`)) {
        ErrorResponse3Object[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`message`)) {
        ErrorResponse3Object[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`details`)) {
        ErrorResponse3Object[["details"]] <-
          self$`details`
      }
      ErrorResponse3Object
    },
    #' Deserialize JSON string into an instance of ErrorResponse3
    #'
    #' @description
    #' Deserialize JSON string into an instance of ErrorResponse3
    #'
    #' @param input_json the JSON input
    #' @return the instance of ErrorResponse3
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`details`)) {
        self$`details` <- ApiClient$new()$deserializeObj(this_object$`details`, "array[object]", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ErrorResponse3 in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`code`)) {
          sprintf(
          '"code":
            "%s"
                    ',
          self$`code`
          )
        },
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        },
        if (!is.null(self$`details`)) {
          sprintf(
          '"details":
             [%s]
          ',
          paste(unlist(lapply(self$`details`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ErrorResponse3
    #'
    #' @description
    #' Deserialize JSON string into an instance of ErrorResponse3
    #'
    #' @param input_json the JSON input
    #' @return the instance of ErrorResponse3
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`message` <- this_object$`message`
      self$`details` <- ApiClient$new()$deserializeObj(this_object$`details`, "array[object]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to ErrorResponse3
    #'
    #' @description
    #' Validate JSON input with respect to ErrorResponse3 and throw an exception if invalid
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
    #' @return String representation of ErrorResponse3
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
# ErrorResponse3$unlock()
#
## Below is an example to define the print function
# ErrorResponse3$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ErrorResponse3$lock()

