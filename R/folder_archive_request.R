#' Create a new FolderArchiveRequest
#'
#' @description
#' FolderArchiveRequest to specify the Storage Tier
#'
#' @docType class
#' @title FolderArchiveRequest
#' @description FolderArchiveRequest Class
#' @format An \code{R6Class} generator object
#' @field storageTier  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FolderArchiveRequest <- R6::R6Class(
  "FolderArchiveRequest",
  public = list(
    `storageTier` = NULL,
    #' Initialize a new FolderArchiveRequest class.
    #'
    #' @description
    #' Initialize a new FolderArchiveRequest class.
    #'
    #' @param storageTier storageTier
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`storageTier`, ...) {
      if (!missing(`storageTier`)) {
        if (!(is.character(`storageTier`) && length(`storageTier`) == 1)) {
          stop(paste("Error! Invalid data for `storageTier`. Must be a string:", `storageTier`))
        }
        self$`storageTier` <- `storageTier`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FolderArchiveRequest in JSON format
    #' @export
    toJSON = function() {
      FolderArchiveRequestObject <- list()
      if (!is.null(self$`storageTier`)) {
        FolderArchiveRequestObject[["storageTier"]] <-
          self$`storageTier`
      }
      FolderArchiveRequestObject
    },
    #' Deserialize JSON string into an instance of FolderArchiveRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderArchiveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderArchiveRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`storageTier`)) {
        self$`storageTier` <- this_object$`storageTier`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FolderArchiveRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`storageTier`)) {
          sprintf(
          '"storageTier":
            "%s"
                    ',
          self$`storageTier`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FolderArchiveRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderArchiveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderArchiveRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`storageTier` <- this_object$`storageTier`
      self
    },
    #' Validate JSON input with respect to FolderArchiveRequest
    #'
    #' @description
    #' Validate JSON input with respect to FolderArchiveRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `storageTier`
      if (!is.null(input_json$`storageTier`)) {
        if (!(is.character(input_json$`storageTier`) && length(input_json$`storageTier`) == 1)) {
          stop(paste("Error! Invalid data for `storageTier`. Must be a string:", input_json$`storageTier`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FolderArchiveRequest: the required field `storageTier` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FolderArchiveRequest
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
      # check if the required `storageTier` is null
      if (is.null(self$`storageTier`)) {
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
      # check if the required `storageTier` is null
      if (is.null(self$`storageTier`)) {
        invalid_fields["storageTier"] <- "Non-nullable required field `storageTier` cannot be null."
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
# FolderArchiveRequest$unlock()
#
## Below is an example to define the print function
# FolderArchiveRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FolderArchiveRequest$lock()

