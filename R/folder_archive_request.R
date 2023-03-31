#' Create a new FolderArchiveRequest
#'
#' @description
#' FolderArchiveRequest to specify the Storage Tier
#'
#' @docType class
#' @title FolderArchiveRequest
#' @description FolderArchiveRequest Class
#' @format An \code{R6Class} generator object
#' @field storageTier  \link{FolderArchiveStorageTier}
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
        if (!(`storageTier` %in% c())) {
          stop(paste("Error! \"", `storageTier`, "\" cannot be assigned to `storageTier`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`storageTier`))
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
          self$`storageTier`$toJSON()
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
        `storagetier_object` <- FolderArchiveStorageTier$new()
        `storagetier_object`$fromJSON(jsonlite::toJSON(this_object$`storageTier`, auto_unbox = TRUE, digits = NA))
        self$`storageTier` <- `storagetier_object`
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
          %s
          ',
          jsonlite::toJSON(self$`storageTier`$toJSON(), auto_unbox = TRUE, digits = NA)
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
      self$`storageTier` <- FolderArchiveStorageTier$new()$fromJSON(jsonlite::toJSON(this_object$`storageTier`, auto_unbox = TRUE, digits = NA))
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
        stopifnot(R6::is.R6(input_json$`storageTier`))
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

