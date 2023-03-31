#' Create a new FileCopyOutput
#'
#' @description
#' FileCopyOutput Class
#'
#' @docType class
#' @title FileCopyOutput
#' @description FileCopyOutput Class
#' @format An \code{R6Class} generator object
#' @field itemsSkippedCount  integer [optional]
#' @field itemsFailedCount  integer [optional]
#' @field itemsCopiedCount  integer [optional]
#' @field elasticIndexingMatched  character [optional]
#' @field itemsFailed  list(\link{BulkFailedItem}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileCopyOutput <- R6::R6Class(
  "FileCopyOutput",
  public = list(
    `itemsSkippedCount` = NULL,
    `itemsFailedCount` = NULL,
    `itemsCopiedCount` = NULL,
    `elasticIndexingMatched` = NULL,
    `itemsFailed` = NULL,
    #' Initialize a new FileCopyOutput class.
    #'
    #' @description
    #' Initialize a new FileCopyOutput class.
    #'
    #' @param itemsSkippedCount itemsSkippedCount
    #' @param itemsFailedCount itemsFailedCount
    #' @param itemsCopiedCount itemsCopiedCount
    #' @param elasticIndexingMatched elasticIndexingMatched
    #' @param itemsFailed itemsFailed
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`itemsSkippedCount` = NULL, `itemsFailedCount` = NULL, `itemsCopiedCount` = NULL, `elasticIndexingMatched` = NULL, `itemsFailed` = NULL, ...) {
      if (!is.null(`itemsSkippedCount`)) {
        if (!(is.numeric(`itemsSkippedCount`) && length(`itemsSkippedCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemsSkippedCount`. Must be an integer:", `itemsSkippedCount`))
        }
        self$`itemsSkippedCount` <- `itemsSkippedCount`
      }
      if (!is.null(`itemsFailedCount`)) {
        if (!(is.numeric(`itemsFailedCount`) && length(`itemsFailedCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemsFailedCount`. Must be an integer:", `itemsFailedCount`))
        }
        self$`itemsFailedCount` <- `itemsFailedCount`
      }
      if (!is.null(`itemsCopiedCount`)) {
        if (!(is.numeric(`itemsCopiedCount`) && length(`itemsCopiedCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemsCopiedCount`. Must be an integer:", `itemsCopiedCount`))
        }
        self$`itemsCopiedCount` <- `itemsCopiedCount`
      }
      if (!is.null(`elasticIndexingMatched`)) {
        if (!(is.logical(`elasticIndexingMatched`) && length(`elasticIndexingMatched`) == 1)) {
          stop(paste("Error! Invalid data for `elasticIndexingMatched`. Must be a boolean:", `elasticIndexingMatched`))
        }
        self$`elasticIndexingMatched` <- `elasticIndexingMatched`
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
    #' @return FileCopyOutput in JSON format
    #' @export
    toJSON = function() {
      FileCopyOutputObject <- list()
      if (!is.null(self$`itemsSkippedCount`)) {
        FileCopyOutputObject[["itemsSkippedCount"]] <-
          self$`itemsSkippedCount`
      }
      if (!is.null(self$`itemsFailedCount`)) {
        FileCopyOutputObject[["itemsFailedCount"]] <-
          self$`itemsFailedCount`
      }
      if (!is.null(self$`itemsCopiedCount`)) {
        FileCopyOutputObject[["itemsCopiedCount"]] <-
          self$`itemsCopiedCount`
      }
      if (!is.null(self$`elasticIndexingMatched`)) {
        FileCopyOutputObject[["elasticIndexingMatched"]] <-
          self$`elasticIndexingMatched`
      }
      if (!is.null(self$`itemsFailed`)) {
        FileCopyOutputObject[["itemsFailed"]] <-
          lapply(self$`itemsFailed`, function(x) x$toJSON())
      }
      FileCopyOutputObject
    },
    #' Deserialize JSON string into an instance of FileCopyOutput
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileCopyOutput
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileCopyOutput
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`itemsSkippedCount`)) {
        self$`itemsSkippedCount` <- this_object$`itemsSkippedCount`
      }
      if (!is.null(this_object$`itemsFailedCount`)) {
        self$`itemsFailedCount` <- this_object$`itemsFailedCount`
      }
      if (!is.null(this_object$`itemsCopiedCount`)) {
        self$`itemsCopiedCount` <- this_object$`itemsCopiedCount`
      }
      if (!is.null(this_object$`elasticIndexingMatched`)) {
        self$`elasticIndexingMatched` <- this_object$`elasticIndexingMatched`
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
    #' @return FileCopyOutput in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`itemsSkippedCount`)) {
          sprintf(
          '"itemsSkippedCount":
            %d
                    ',
          self$`itemsSkippedCount`
          )
        },
        if (!is.null(self$`itemsFailedCount`)) {
          sprintf(
          '"itemsFailedCount":
            %d
                    ',
          self$`itemsFailedCount`
          )
        },
        if (!is.null(self$`itemsCopiedCount`)) {
          sprintf(
          '"itemsCopiedCount":
            %d
                    ',
          self$`itemsCopiedCount`
          )
        },
        if (!is.null(self$`elasticIndexingMatched`)) {
          sprintf(
          '"elasticIndexingMatched":
            %s
                    ',
          tolower(self$`elasticIndexingMatched`)
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
    #' Deserialize JSON string into an instance of FileCopyOutput
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileCopyOutput
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileCopyOutput
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`itemsSkippedCount` <- this_object$`itemsSkippedCount`
      self$`itemsFailedCount` <- this_object$`itemsFailedCount`
      self$`itemsCopiedCount` <- this_object$`itemsCopiedCount`
      self$`elasticIndexingMatched` <- this_object$`elasticIndexingMatched`
      self$`itemsFailed` <- ApiClient$new()$deserializeObj(this_object$`itemsFailed`, "array[BulkFailedItem]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to FileCopyOutput
    #'
    #' @description
    #' Validate JSON input with respect to FileCopyOutput and throw an exception if invalid
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
    #' @return String representation of FileCopyOutput
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
# FileCopyOutput$unlock()
#
## Below is an example to define the print function
# FileCopyOutput$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FileCopyOutput$lock()

