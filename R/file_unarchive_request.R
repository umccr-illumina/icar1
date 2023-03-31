#' Create a new FileUnarchiveRequest
#'
#' @description
#' FileUnarchiveRequest to specify the RestoreSpeed
#'
#' @docType class
#' @title FileUnarchiveRequest
#' @description FileUnarchiveRequest Class
#' @format An \code{R6Class} generator object
#' @field restoreSpeed The desired Restore Speed to move the File to the Standard Storage Tier. Valid values are Economy and Standard. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileUnarchiveRequest <- R6::R6Class(
  "FileUnarchiveRequest",
  public = list(
    `restoreSpeed` = NULL,
    #' Initialize a new FileUnarchiveRequest class.
    #'
    #' @description
    #' Initialize a new FileUnarchiveRequest class.
    #'
    #' @param restoreSpeed The desired Restore Speed to move the File to the Standard Storage Tier. Valid values are Economy and Standard.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`restoreSpeed`, ...) {
      if (!missing(`restoreSpeed`)) {
        if (!(is.character(`restoreSpeed`) && length(`restoreSpeed`) == 1)) {
          stop(paste("Error! Invalid data for `restoreSpeed`. Must be a string:", `restoreSpeed`))
        }
        self$`restoreSpeed` <- `restoreSpeed`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileUnarchiveRequest in JSON format
    #' @export
    toJSON = function() {
      FileUnarchiveRequestObject <- list()
      if (!is.null(self$`restoreSpeed`)) {
        FileUnarchiveRequestObject[["restoreSpeed"]] <-
          self$`restoreSpeed`
      }
      FileUnarchiveRequestObject
    },
    #' Deserialize JSON string into an instance of FileUnarchiveRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileUnarchiveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileUnarchiveRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`restoreSpeed`)) {
        self$`restoreSpeed` <- this_object$`restoreSpeed`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileUnarchiveRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`restoreSpeed`)) {
          sprintf(
          '"restoreSpeed":
            "%s"
                    ',
          self$`restoreSpeed`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FileUnarchiveRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileUnarchiveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileUnarchiveRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`restoreSpeed` <- this_object$`restoreSpeed`
      self
    },
    #' Validate JSON input with respect to FileUnarchiveRequest
    #'
    #' @description
    #' Validate JSON input with respect to FileUnarchiveRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `restoreSpeed`
      if (!is.null(input_json$`restoreSpeed`)) {
        if (!(is.character(input_json$`restoreSpeed`) && length(input_json$`restoreSpeed`) == 1)) {
          stop(paste("Error! Invalid data for `restoreSpeed`. Must be a string:", input_json$`restoreSpeed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FileUnarchiveRequest: the required field `restoreSpeed` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FileUnarchiveRequest
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
      # check if the required `restoreSpeed` is null
      if (is.null(self$`restoreSpeed`)) {
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
      # check if the required `restoreSpeed` is null
      if (is.null(self$`restoreSpeed`)) {
        invalid_fields["restoreSpeed"] <- "Non-nullable required field `restoreSpeed` cannot be null."
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
# FileUnarchiveRequest$unlock()
#
## Below is an example to define the print function
# FileUnarchiveRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FileUnarchiveRequest$lock()

