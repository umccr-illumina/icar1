#' Create a new BulkFolderUpdateRequest
#'
#' @description
#' BulkFolderUpdateRequest Class
#'
#' @docType class
#' @title BulkFolderUpdateRequest
#' @description BulkFolderUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field items  list(\link{BulkFolderUpdateItem}) [optional]
#' @field timeOutInSeconds  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BulkFolderUpdateRequest <- R6::R6Class(
  "BulkFolderUpdateRequest",
  public = list(
    `items` = NULL,
    `timeOutInSeconds` = NULL,
    #' Initialize a new BulkFolderUpdateRequest class.
    #'
    #' @description
    #' Initialize a new BulkFolderUpdateRequest class.
    #'
    #' @param items items
    #' @param timeOutInSeconds timeOutInSeconds
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`items` = NULL, `timeOutInSeconds` = NULL, ...) {
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`timeOutInSeconds`)) {
        if (!(is.numeric(`timeOutInSeconds`) && length(`timeOutInSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `timeOutInSeconds`. Must be an integer:", `timeOutInSeconds`))
        }
        self$`timeOutInSeconds` <- `timeOutInSeconds`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkFolderUpdateRequest in JSON format
    #' @export
    toJSON = function() {
      BulkFolderUpdateRequestObject <- list()
      if (!is.null(self$`items`)) {
        BulkFolderUpdateRequestObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      if (!is.null(self$`timeOutInSeconds`)) {
        BulkFolderUpdateRequestObject[["timeOutInSeconds"]] <-
          self$`timeOutInSeconds`
      }
      BulkFolderUpdateRequestObject
    },
    #' Deserialize JSON string into an instance of BulkFolderUpdateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFolderUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFolderUpdateRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[BulkFolderUpdateItem]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`timeOutInSeconds`)) {
        self$`timeOutInSeconds` <- this_object$`timeOutInSeconds`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkFolderUpdateRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`items`)) {
          sprintf(
          '"items":
          [%s]
',
          paste(sapply(self$`items`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`timeOutInSeconds`)) {
          sprintf(
          '"timeOutInSeconds":
            %d
                    ',
          self$`timeOutInSeconds`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of BulkFolderUpdateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFolderUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFolderUpdateRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[BulkFolderUpdateItem]", loadNamespace("icar1"))
      self$`timeOutInSeconds` <- this_object$`timeOutInSeconds`
      self
    },
    #' Validate JSON input with respect to BulkFolderUpdateRequest
    #'
    #' @description
    #' Validate JSON input with respect to BulkFolderUpdateRequest and throw an exception if invalid
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
    #' @return String representation of BulkFolderUpdateRequest
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
# BulkFolderUpdateRequest$unlock()
#
## Below is an example to define the print function
# BulkFolderUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BulkFolderUpdateRequest$lock()

