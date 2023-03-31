#' Create a new BulkFolderUpdateResponse
#'
#' @description
#' BulkFolderUpdateResponse Class
#'
#' @docType class
#' @title BulkFolderUpdateResponse
#' @description BulkFolderUpdateResponse Class
#' @format An \code{R6Class} generator object
#' @field itemsFailed Items failed to be updated with error details list(\link{BulkUpdateFailedItem}) [optional]
#' @field itemsUpdatedCount Total items successfully updated integer [optional]
#' @field itemsFailedCount Total items failed to be updated integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BulkFolderUpdateResponse <- R6::R6Class(
  "BulkFolderUpdateResponse",
  public = list(
    `itemsFailed` = NULL,
    `itemsUpdatedCount` = NULL,
    `itemsFailedCount` = NULL,
    #' Initialize a new BulkFolderUpdateResponse class.
    #'
    #' @description
    #' Initialize a new BulkFolderUpdateResponse class.
    #'
    #' @param itemsFailed Items failed to be updated with error details
    #' @param itemsUpdatedCount Total items successfully updated
    #' @param itemsFailedCount Total items failed to be updated
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`itemsFailed` = NULL, `itemsUpdatedCount` = NULL, `itemsFailedCount` = NULL, ...) {
      if (!is.null(`itemsFailed`)) {
        stopifnot(is.vector(`itemsFailed`), length(`itemsFailed`) != 0)
        sapply(`itemsFailed`, function(x) stopifnot(R6::is.R6(x)))
        self$`itemsFailed` <- `itemsFailed`
      }
      if (!is.null(`itemsUpdatedCount`)) {
        if (!(is.numeric(`itemsUpdatedCount`) && length(`itemsUpdatedCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemsUpdatedCount`. Must be an integer:", `itemsUpdatedCount`))
        }
        self$`itemsUpdatedCount` <- `itemsUpdatedCount`
      }
      if (!is.null(`itemsFailedCount`)) {
        if (!(is.numeric(`itemsFailedCount`) && length(`itemsFailedCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemsFailedCount`. Must be an integer:", `itemsFailedCount`))
        }
        self$`itemsFailedCount` <- `itemsFailedCount`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkFolderUpdateResponse in JSON format
    #' @export
    toJSON = function() {
      BulkFolderUpdateResponseObject <- list()
      if (!is.null(self$`itemsFailed`)) {
        BulkFolderUpdateResponseObject[["itemsFailed"]] <-
          lapply(self$`itemsFailed`, function(x) x$toJSON())
      }
      if (!is.null(self$`itemsUpdatedCount`)) {
        BulkFolderUpdateResponseObject[["itemsUpdatedCount"]] <-
          self$`itemsUpdatedCount`
      }
      if (!is.null(self$`itemsFailedCount`)) {
        BulkFolderUpdateResponseObject[["itemsFailedCount"]] <-
          self$`itemsFailedCount`
      }
      BulkFolderUpdateResponseObject
    },
    #' Deserialize JSON string into an instance of BulkFolderUpdateResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFolderUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFolderUpdateResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`itemsFailed`)) {
        self$`itemsFailed` <- ApiClient$new()$deserializeObj(this_object$`itemsFailed`, "array[BulkUpdateFailedItem]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`itemsUpdatedCount`)) {
        self$`itemsUpdatedCount` <- this_object$`itemsUpdatedCount`
      }
      if (!is.null(this_object$`itemsFailedCount`)) {
        self$`itemsFailedCount` <- this_object$`itemsFailedCount`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkFolderUpdateResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`itemsFailed`)) {
          sprintf(
          '"itemsFailed":
          [%s]
',
          paste(sapply(self$`itemsFailed`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`itemsUpdatedCount`)) {
          sprintf(
          '"itemsUpdatedCount":
            %d
                    ',
          self$`itemsUpdatedCount`
          )
        },
        if (!is.null(self$`itemsFailedCount`)) {
          sprintf(
          '"itemsFailedCount":
            %d
                    ',
          self$`itemsFailedCount`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of BulkFolderUpdateResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFolderUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFolderUpdateResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`itemsFailed` <- ApiClient$new()$deserializeObj(this_object$`itemsFailed`, "array[BulkUpdateFailedItem]", loadNamespace("icar1"))
      self$`itemsUpdatedCount` <- this_object$`itemsUpdatedCount`
      self$`itemsFailedCount` <- this_object$`itemsFailedCount`
      self
    },
    #' Validate JSON input with respect to BulkFolderUpdateResponse
    #'
    #' @description
    #' Validate JSON input with respect to BulkFolderUpdateResponse and throw an exception if invalid
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
    #' @return String representation of BulkFolderUpdateResponse
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
# BulkFolderUpdateResponse$unlock()
#
## Below is an example to define the print function
# BulkFolderUpdateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BulkFolderUpdateResponse$lock()

