#' Create a new BulkFailedItem
#'
#' @description
#' BulkFailedItem Class
#'
#' @docType class
#' @title BulkFailedItem
#' @description BulkFailedItem Class
#' @format An \code{R6Class} generator object
#' @field id Id of resource that failed character [optional]
#' @field errorResponse  \link{ErrorResponse} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BulkFailedItem <- R6::R6Class(
  "BulkFailedItem",
  public = list(
    `id` = NULL,
    `errorResponse` = NULL,
    #' Initialize a new BulkFailedItem class.
    #'
    #' @description
    #' Initialize a new BulkFailedItem class.
    #'
    #' @param id Id of resource that failed
    #' @param errorResponse errorResponse
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `errorResponse` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`errorResponse`)) {
        stopifnot(R6::is.R6(`errorResponse`))
        self$`errorResponse` <- `errorResponse`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkFailedItem in JSON format
    #' @export
    toJSON = function() {
      BulkFailedItemObject <- list()
      if (!is.null(self$`id`)) {
        BulkFailedItemObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`errorResponse`)) {
        BulkFailedItemObject[["errorResponse"]] <-
          self$`errorResponse`$toJSON()
      }
      BulkFailedItemObject
    },
    #' Deserialize JSON string into an instance of BulkFailedItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFailedItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFailedItem
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`errorResponse`)) {
        `errorresponse_object` <- ErrorResponse$new()
        `errorresponse_object`$fromJSON(jsonlite::toJSON(this_object$`errorResponse`, auto_unbox = TRUE, digits = NA))
        self$`errorResponse` <- `errorresponse_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkFailedItem in JSON format
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
        if (!is.null(self$`errorResponse`)) {
          sprintf(
          '"errorResponse":
          %s
          ',
          jsonlite::toJSON(self$`errorResponse`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of BulkFailedItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFailedItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFailedItem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`errorResponse` <- ErrorResponse$new()$fromJSON(jsonlite::toJSON(this_object$`errorResponse`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to BulkFailedItem
    #'
    #' @description
    #' Validate JSON input with respect to BulkFailedItem and throw an exception if invalid
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
    #' @return String representation of BulkFailedItem
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
# BulkFailedItem$unlock()
#
## Below is an example to define the print function
# BulkFailedItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BulkFailedItem$lock()

