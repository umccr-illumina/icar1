#' Create a new FolderUnarchiveRequest
#'
#' @description
#' FolderUnarchiveRequest Class
#'
#' @docType class
#' @title FolderUnarchiveRequest
#' @description FolderUnarchiveRequest Class
#' @format An \code{R6Class} generator object
#' @field restoreSpeed The desired Restore Speed to move the Files in the Folder to the Standard Storage Tier. Valid values are Economy and Standard. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FolderUnarchiveRequest <- R6::R6Class(
  "FolderUnarchiveRequest",
  public = list(
    `restoreSpeed` = NULL,
    #' Initialize a new FolderUnarchiveRequest class.
    #'
    #' @description
    #' Initialize a new FolderUnarchiveRequest class.
    #'
    #' @param restoreSpeed The desired Restore Speed to move the Files in the Folder to the Standard Storage Tier. Valid values are Economy and Standard.
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
    #' @return FolderUnarchiveRequest in JSON format
    #' @export
    toJSON = function() {
      FolderUnarchiveRequestObject <- list()
      if (!is.null(self$`restoreSpeed`)) {
        FolderUnarchiveRequestObject[["restoreSpeed"]] <-
          self$`restoreSpeed`
      }
      FolderUnarchiveRequestObject
    },
    #' Deserialize JSON string into an instance of FolderUnarchiveRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderUnarchiveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderUnarchiveRequest
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
    #' @return FolderUnarchiveRequest in JSON format
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
    #' Deserialize JSON string into an instance of FolderUnarchiveRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderUnarchiveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderUnarchiveRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`restoreSpeed` <- this_object$`restoreSpeed`
      self
    },
    #' Validate JSON input with respect to FolderUnarchiveRequest
    #'
    #' @description
    #' Validate JSON input with respect to FolderUnarchiveRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for FolderUnarchiveRequest: the required field `restoreSpeed` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FolderUnarchiveRequest
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
# FolderUnarchiveRequest$unlock()
#
## Below is an example to define the print function
# FolderUnarchiveRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FolderUnarchiveRequest$lock()

