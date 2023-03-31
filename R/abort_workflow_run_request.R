#' Create a new AbortWorkflowRunRequest
#'
#' @description
#' Abort a workflow run
#'
#' @docType class
#' @title AbortWorkflowRunRequest
#' @description AbortWorkflowRunRequest Class
#' @format An \code{R6Class} generator object
#' @field error  character
#' @field cause  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AbortWorkflowRunRequest <- R6::R6Class(
  "AbortWorkflowRunRequest",
  public = list(
    `error` = NULL,
    `cause` = NULL,
    #' Initialize a new AbortWorkflowRunRequest class.
    #'
    #' @description
    #' Initialize a new AbortWorkflowRunRequest class.
    #'
    #' @param error error
    #' @param cause cause
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`error`, `cause` = NULL, ...) {
      if (!missing(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`cause`)) {
        if (!(is.character(`cause`) && length(`cause`) == 1)) {
          stop(paste("Error! Invalid data for `cause`. Must be a string:", `cause`))
        }
        self$`cause` <- `cause`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AbortWorkflowRunRequest in JSON format
    #' @export
    toJSON = function() {
      AbortWorkflowRunRequestObject <- list()
      if (!is.null(self$`error`)) {
        AbortWorkflowRunRequestObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`cause`)) {
        AbortWorkflowRunRequestObject[["cause"]] <-
          self$`cause`
      }
      AbortWorkflowRunRequestObject
    },
    #' Deserialize JSON string into an instance of AbortWorkflowRunRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of AbortWorkflowRunRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AbortWorkflowRunRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`cause`)) {
        self$`cause` <- this_object$`cause`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return AbortWorkflowRunRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`error`)) {
          sprintf(
          '"error":
            "%s"
                    ',
          self$`error`
          )
        },
        if (!is.null(self$`cause`)) {
          sprintf(
          '"cause":
            "%s"
                    ',
          self$`cause`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of AbortWorkflowRunRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of AbortWorkflowRunRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AbortWorkflowRunRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`error` <- this_object$`error`
      self$`cause` <- this_object$`cause`
      self
    },
    #' Validate JSON input with respect to AbortWorkflowRunRequest
    #'
    #' @description
    #' Validate JSON input with respect to AbortWorkflowRunRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `error`
      if (!is.null(input_json$`error`)) {
        if (!(is.character(input_json$`error`) && length(input_json$`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", input_json$`error`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AbortWorkflowRunRequest: the required field `error` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AbortWorkflowRunRequest
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
      # check if the required `error` is null
      if (is.null(self$`error`)) {
        return(FALSE)
      }

      if (nchar(self$`error`) > 256) {
        return(FALSE)
      }
      if (nchar(self$`error`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`cause`) > 32768) {
        return(FALSE)
      }
      if (nchar(self$`cause`) < 0) {
        return(FALSE)
      }

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
      # check if the required `error` is null
      if (is.null(self$`error`)) {
        invalid_fields["error"] <- "Non-nullable required field `error` cannot be null."
      }

      if (nchar(self$`error`) > 256) {
        invalid_fields["error"] <- "Invalid length for `error`, must be smaller than or equal to 256."
      }
      if (nchar(self$`error`) < 0) {
        invalid_fields["error"] <- "Invalid length for `error`, must be bigger than or equal to 0."
      }

      if (nchar(self$`cause`) > 32768) {
        invalid_fields["cause"] <- "Invalid length for `cause`, must be smaller than or equal to 32768."
      }
      if (nchar(self$`cause`) < 0) {
        invalid_fields["cause"] <- "Invalid length for `cause`, must be bigger than or equal to 0."
      }

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
# AbortWorkflowRunRequest$unlock()
#
## Below is an example to define the print function
# AbortWorkflowRunRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AbortWorkflowRunRequest$lock()

