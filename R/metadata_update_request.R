#' Create a new MetadataUpdateRequest
#'
#' @description
#' Metadata to update and/or delete.
#'
#' @docType class
#' @title MetadataUpdateRequest
#' @description MetadataUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field updateMetadata Metadata to update. object [optional]
#' @field deleteMetadata Metadata to delete. object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MetadataUpdateRequest <- R6::R6Class(
  "MetadataUpdateRequest",
  public = list(
    `updateMetadata` = NULL,
    `deleteMetadata` = NULL,
    #' Initialize a new MetadataUpdateRequest class.
    #'
    #' @description
    #' Initialize a new MetadataUpdateRequest class.
    #'
    #' @param updateMetadata Metadata to update.
    #' @param deleteMetadata Metadata to delete.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`updateMetadata` = NULL, `deleteMetadata` = NULL, ...) {
      if (!is.null(`updateMetadata`)) {
        self$`updateMetadata` <- `updateMetadata`
      }
      if (!is.null(`deleteMetadata`)) {
        self$`deleteMetadata` <- `deleteMetadata`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MetadataUpdateRequest in JSON format
    #' @export
    toJSON = function() {
      MetadataUpdateRequestObject <- list()
      if (!is.null(self$`updateMetadata`)) {
        MetadataUpdateRequestObject[["updateMetadata"]] <-
          self$`updateMetadata`
      }
      if (!is.null(self$`deleteMetadata`)) {
        MetadataUpdateRequestObject[["deleteMetadata"]] <-
          self$`deleteMetadata`
      }
      MetadataUpdateRequestObject
    },
    #' Deserialize JSON string into an instance of MetadataUpdateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of MetadataUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetadataUpdateRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`updateMetadata`)) {
        self$`updateMetadata` <- this_object$`updateMetadata`
      }
      if (!is.null(this_object$`deleteMetadata`)) {
        self$`deleteMetadata` <- this_object$`deleteMetadata`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MetadataUpdateRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`updateMetadata`)) {
          sprintf(
          '"updateMetadata":
            "%s"
                    ',
          self$`updateMetadata`
          )
        },
        if (!is.null(self$`deleteMetadata`)) {
          sprintf(
          '"deleteMetadata":
            "%s"
                    ',
          self$`deleteMetadata`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of MetadataUpdateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of MetadataUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetadataUpdateRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`updateMetadata` <- this_object$`updateMetadata`
      self$`deleteMetadata` <- this_object$`deleteMetadata`
      self
    },
    #' Validate JSON input with respect to MetadataUpdateRequest
    #'
    #' @description
    #' Validate JSON input with respect to MetadataUpdateRequest and throw an exception if invalid
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
    #' @return String representation of MetadataUpdateRequest
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
# MetadataUpdateRequest$unlock()
#
## Below is an example to define the print function
# MetadataUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MetadataUpdateRequest$lock()

