#' Create a new BulkFolderUpdateItem
#'
#' @description
#' BulkFolderUpdateItem Class
#'
#' @docType class
#' @title BulkFolderUpdateItem
#' @description BulkFolderUpdateItem Class
#' @format An \code{R6Class} generator object
#' @field id Id of this folder character [optional]
#' @field metadata Metadata about this folder and its contents object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BulkFolderUpdateItem <- R6::R6Class(
  "BulkFolderUpdateItem",
  public = list(
    `id` = NULL,
    `metadata` = NULL,
    #' Initialize a new BulkFolderUpdateItem class.
    #'
    #' @description
    #' Initialize a new BulkFolderUpdateItem class.
    #'
    #' @param id Id of this folder
    #' @param metadata Metadata about this folder and its contents
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `metadata` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkFolderUpdateItem in JSON format
    #' @export
    toJSON = function() {
      BulkFolderUpdateItemObject <- list()
      if (!is.null(self$`id`)) {
        BulkFolderUpdateItemObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`metadata`)) {
        BulkFolderUpdateItemObject[["metadata"]] <-
          self$`metadata`
      }
      BulkFolderUpdateItemObject
    },
    #' Deserialize JSON string into an instance of BulkFolderUpdateItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFolderUpdateItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFolderUpdateItem
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
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
    #' @return BulkFolderUpdateItem in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
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
    #' Deserialize JSON string into an instance of BulkFolderUpdateItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFolderUpdateItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFolderUpdateItem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`metadata` <- this_object$`metadata`
      self
    },
    #' Validate JSON input with respect to BulkFolderUpdateItem
    #'
    #' @description
    #' Validate JSON input with respect to BulkFolderUpdateItem and throw an exception if invalid
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
    #' @return String representation of BulkFolderUpdateItem
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
# BulkFolderUpdateItem$unlock()
#
## Below is an example to define the print function
# BulkFolderUpdateItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BulkFolderUpdateItem$lock()

