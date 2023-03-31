#' Create a new CompleteSessionRequest
#'
#' @description
#' CompleteSessionRequest Class
#'
#' @docType class
#' @title CompleteSessionRequest
#' @description CompleteSessionRequest Class
#' @format An \code{R6Class} generator object
#' @field expectedSessionFileCount User-defined count used for reconciling files uploaded when closing the session integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompleteSessionRequest <- R6::R6Class(
  "CompleteSessionRequest",
  public = list(
    `expectedSessionFileCount` = NULL,
    #' Initialize a new CompleteSessionRequest class.
    #'
    #' @description
    #' Initialize a new CompleteSessionRequest class.
    #'
    #' @param expectedSessionFileCount User-defined count used for reconciling files uploaded when closing the session
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`expectedSessionFileCount`, ...) {
      if (!missing(`expectedSessionFileCount`)) {
        if (!(is.numeric(`expectedSessionFileCount`) && length(`expectedSessionFileCount`) == 1)) {
          stop(paste("Error! Invalid data for `expectedSessionFileCount`. Must be an integer:", `expectedSessionFileCount`))
        }
        self$`expectedSessionFileCount` <- `expectedSessionFileCount`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompleteSessionRequest in JSON format
    #' @export
    toJSON = function() {
      CompleteSessionRequestObject <- list()
      if (!is.null(self$`expectedSessionFileCount`)) {
        CompleteSessionRequestObject[["expectedSessionFileCount"]] <-
          self$`expectedSessionFileCount`
      }
      CompleteSessionRequestObject
    },
    #' Deserialize JSON string into an instance of CompleteSessionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompleteSessionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompleteSessionRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`expectedSessionFileCount`)) {
        self$`expectedSessionFileCount` <- this_object$`expectedSessionFileCount`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CompleteSessionRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`expectedSessionFileCount`)) {
          sprintf(
          '"expectedSessionFileCount":
            %d
                    ',
          self$`expectedSessionFileCount`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CompleteSessionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CompleteSessionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompleteSessionRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`expectedSessionFileCount` <- this_object$`expectedSessionFileCount`
      self
    },
    #' Validate JSON input with respect to CompleteSessionRequest
    #'
    #' @description
    #' Validate JSON input with respect to CompleteSessionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `expectedSessionFileCount`
      if (!is.null(input_json$`expectedSessionFileCount`)) {
        if (!(is.numeric(input_json$`expectedSessionFileCount`) && length(input_json$`expectedSessionFileCount`) == 1)) {
          stop(paste("Error! Invalid data for `expectedSessionFileCount`. Must be an integer:", input_json$`expectedSessionFileCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompleteSessionRequest: the required field `expectedSessionFileCount` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompleteSessionRequest
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
      # check if the required `expectedSessionFileCount` is null
      if (is.null(self$`expectedSessionFileCount`)) {
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
      # check if the required `expectedSessionFileCount` is null
      if (is.null(self$`expectedSessionFileCount`)) {
        invalid_fields["expectedSessionFileCount"] <- "Non-nullable required field `expectedSessionFileCount` cannot be null."
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
# CompleteSessionRequest$unlock()
#
## Below is an example to define the print function
# CompleteSessionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompleteSessionRequest$lock()

