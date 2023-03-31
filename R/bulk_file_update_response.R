#' Create a new BulkFileUpdateResponse
#'
#' @description
#' BulkFileUpdateResponse Class
#'
#' @docType class
#' @title BulkFileUpdateResponse
#' @description BulkFileUpdateResponse Class
#' @format An \code{R6Class} generator object
#' @field itemsFailed Items failed to be updated with error details list(\link{BulkUpdateFailedItem}) [optional]
#' @field itemsUpdatedCount Total items successfully updated integer [optional]
#' @field itemsFailedCount Total items failed to be updated integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BulkFileUpdateResponse <- R6::R6Class(
  "BulkFileUpdateResponse",
  public = list(
    `itemsFailed` = NULL,
    `itemsUpdatedCount` = NULL,
    `itemsFailedCount` = NULL,
    #' Initialize a new BulkFileUpdateResponse class.
    #'
    #' @description
    #' Initialize a new BulkFileUpdateResponse class.
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
    #' @return BulkFileUpdateResponse in JSON format
    #' @export
    toJSON = function() {
      BulkFileUpdateResponseObject <- list()
      if (!is.null(self$`itemsFailed`)) {
        BulkFileUpdateResponseObject[["itemsFailed"]] <-
          lapply(self$`itemsFailed`, function(x) x$toJSON())
      }
      if (!is.null(self$`itemsUpdatedCount`)) {
        BulkFileUpdateResponseObject[["itemsUpdatedCount"]] <-
          self$`itemsUpdatedCount`
      }
      if (!is.null(self$`itemsFailedCount`)) {
        BulkFileUpdateResponseObject[["itemsFailedCount"]] <-
          self$`itemsFailedCount`
      }
      BulkFileUpdateResponseObject
    },
    #' Deserialize JSON string into an instance of BulkFileUpdateResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFileUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFileUpdateResponse
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
    #' @return BulkFileUpdateResponse in JSON format
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
    #' Deserialize JSON string into an instance of BulkFileUpdateResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFileUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFileUpdateResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`itemsFailed` <- ApiClient$new()$deserializeObj(this_object$`itemsFailed`, "array[BulkUpdateFailedItem]", loadNamespace("icar1"))
      self$`itemsUpdatedCount` <- this_object$`itemsUpdatedCount`
      self$`itemsFailedCount` <- this_object$`itemsFailedCount`
      self
    },
    #' Validate JSON input with respect to BulkFileUpdateResponse
    #'
    #' @description
    #' Validate JSON input with respect to BulkFileUpdateResponse and throw an exception if invalid
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
    #' @return String representation of BulkFileUpdateResponse
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
# BulkFileUpdateResponse$unlock()
#
## Below is an example to define the print function
# BulkFileUpdateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BulkFileUpdateResponse$lock()

