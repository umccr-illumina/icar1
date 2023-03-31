#' Create a new VolumeFileListResponse
#'
#' @description
#' VolumeFileListResponse Class
#'
#' @docType class
#' @title VolumeFileListResponse
#' @description VolumeFileListResponse Class
#' @format An \code{R6Class} generator object
#' @field items Retrieved files list(\link{FileResponse}) [optional]
#' @field itemSuccessCount Number of items that succeeded integer [optional]
#' @field itemFailedCount Number of items that failed integer [optional]
#' @field itemsFailed Item failures with error details list(\link{BulkFailedItem}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VolumeFileListResponse <- R6::R6Class(
  "VolumeFileListResponse",
  public = list(
    `items` = NULL,
    `itemSuccessCount` = NULL,
    `itemFailedCount` = NULL,
    `itemsFailed` = NULL,
    #' Initialize a new VolumeFileListResponse class.
    #'
    #' @description
    #' Initialize a new VolumeFileListResponse class.
    #'
    #' @param items Retrieved files
    #' @param itemSuccessCount Number of items that succeeded
    #' @param itemFailedCount Number of items that failed
    #' @param itemsFailed Item failures with error details
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`items` = NULL, `itemSuccessCount` = NULL, `itemFailedCount` = NULL, `itemsFailed` = NULL, ...) {
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`itemSuccessCount`)) {
        if (!(is.numeric(`itemSuccessCount`) && length(`itemSuccessCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemSuccessCount`. Must be an integer:", `itemSuccessCount`))
        }
        self$`itemSuccessCount` <- `itemSuccessCount`
      }
      if (!is.null(`itemFailedCount`)) {
        if (!(is.numeric(`itemFailedCount`) && length(`itemFailedCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemFailedCount`. Must be an integer:", `itemFailedCount`))
        }
        self$`itemFailedCount` <- `itemFailedCount`
      }
      if (!is.null(`itemsFailed`)) {
        stopifnot(is.vector(`itemsFailed`), length(`itemsFailed`) != 0)
        sapply(`itemsFailed`, function(x) stopifnot(R6::is.R6(x)))
        self$`itemsFailed` <- `itemsFailed`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VolumeFileListResponse in JSON format
    #' @export
    toJSON = function() {
      VolumeFileListResponseObject <- list()
      if (!is.null(self$`items`)) {
        VolumeFileListResponseObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      if (!is.null(self$`itemSuccessCount`)) {
        VolumeFileListResponseObject[["itemSuccessCount"]] <-
          self$`itemSuccessCount`
      }
      if (!is.null(self$`itemFailedCount`)) {
        VolumeFileListResponseObject[["itemFailedCount"]] <-
          self$`itemFailedCount`
      }
      if (!is.null(self$`itemsFailed`)) {
        VolumeFileListResponseObject[["itemsFailed"]] <-
          lapply(self$`itemsFailed`, function(x) x$toJSON())
      }
      VolumeFileListResponseObject
    },
    #' Deserialize JSON string into an instance of VolumeFileListResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeFileListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeFileListResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[FileResponse]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`itemSuccessCount`)) {
        self$`itemSuccessCount` <- this_object$`itemSuccessCount`
      }
      if (!is.null(this_object$`itemFailedCount`)) {
        self$`itemFailedCount` <- this_object$`itemFailedCount`
      }
      if (!is.null(this_object$`itemsFailed`)) {
        self$`itemsFailed` <- ApiClient$new()$deserializeObj(this_object$`itemsFailed`, "array[BulkFailedItem]", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VolumeFileListResponse in JSON format
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
        if (!is.null(self$`itemSuccessCount`)) {
          sprintf(
          '"itemSuccessCount":
            %d
                    ',
          self$`itemSuccessCount`
          )
        },
        if (!is.null(self$`itemFailedCount`)) {
          sprintf(
          '"itemFailedCount":
            %d
                    ',
          self$`itemFailedCount`
          )
        },
        if (!is.null(self$`itemsFailed`)) {
          sprintf(
          '"itemsFailed":
          [%s]
',
          paste(sapply(self$`itemsFailed`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of VolumeFileListResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeFileListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeFileListResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[FileResponse]", loadNamespace("icar1"))
      self$`itemSuccessCount` <- this_object$`itemSuccessCount`
      self$`itemFailedCount` <- this_object$`itemFailedCount`
      self$`itemsFailed` <- ApiClient$new()$deserializeObj(this_object$`itemsFailed`, "array[BulkFailedItem]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to VolumeFileListResponse
    #'
    #' @description
    #' Validate JSON input with respect to VolumeFileListResponse and throw an exception if invalid
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
    #' @return String representation of VolumeFileListResponse
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
# VolumeFileListResponse$unlock()
#
## Below is an example to define the print function
# VolumeFileListResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VolumeFileListResponse$lock()

