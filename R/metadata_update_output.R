#' Create a new MetadataUpdateOutput
#'
#' @description
#' MetadataUpdateOutput Class
#'
#' @docType class
#' @title MetadataUpdateOutput
#' @description MetadataUpdateOutput Class
#' @format An \code{R6Class} generator object
#' @field totalCount  integer [optional]
#' @field processedCount  integer [optional]
#' @field itemsFailedCount  integer [optional]
#' @field itemsFailed  list(\link{BulkFailedItem}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MetadataUpdateOutput <- R6::R6Class(
  "MetadataUpdateOutput",
  public = list(
    `totalCount` = NULL,
    `processedCount` = NULL,
    `itemsFailedCount` = NULL,
    `itemsFailed` = NULL,
    #' Initialize a new MetadataUpdateOutput class.
    #'
    #' @description
    #' Initialize a new MetadataUpdateOutput class.
    #'
    #' @param totalCount totalCount
    #' @param processedCount processedCount
    #' @param itemsFailedCount itemsFailedCount
    #' @param itemsFailed itemsFailed
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`totalCount` = NULL, `processedCount` = NULL, `itemsFailedCount` = NULL, `itemsFailed` = NULL, ...) {
      if (!is.null(`totalCount`)) {
        if (!(is.numeric(`totalCount`) && length(`totalCount`) == 1)) {
          stop(paste("Error! Invalid data for `totalCount`. Must be an integer:", `totalCount`))
        }
        self$`totalCount` <- `totalCount`
      }
      if (!is.null(`processedCount`)) {
        if (!(is.numeric(`processedCount`) && length(`processedCount`) == 1)) {
          stop(paste("Error! Invalid data for `processedCount`. Must be an integer:", `processedCount`))
        }
        self$`processedCount` <- `processedCount`
      }
      if (!is.null(`itemsFailedCount`)) {
        if (!(is.numeric(`itemsFailedCount`) && length(`itemsFailedCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemsFailedCount`. Must be an integer:", `itemsFailedCount`))
        }
        self$`itemsFailedCount` <- `itemsFailedCount`
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
    #' @return MetadataUpdateOutput in JSON format
    #' @export
    toJSON = function() {
      MetadataUpdateOutputObject <- list()
      if (!is.null(self$`totalCount`)) {
        MetadataUpdateOutputObject[["totalCount"]] <-
          self$`totalCount`
      }
      if (!is.null(self$`processedCount`)) {
        MetadataUpdateOutputObject[["processedCount"]] <-
          self$`processedCount`
      }
      if (!is.null(self$`itemsFailedCount`)) {
        MetadataUpdateOutputObject[["itemsFailedCount"]] <-
          self$`itemsFailedCount`
      }
      if (!is.null(self$`itemsFailed`)) {
        MetadataUpdateOutputObject[["itemsFailed"]] <-
          lapply(self$`itemsFailed`, function(x) x$toJSON())
      }
      MetadataUpdateOutputObject
    },
    #' Deserialize JSON string into an instance of MetadataUpdateOutput
    #'
    #' @description
    #' Deserialize JSON string into an instance of MetadataUpdateOutput
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetadataUpdateOutput
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`totalCount`)) {
        self$`totalCount` <- this_object$`totalCount`
      }
      if (!is.null(this_object$`processedCount`)) {
        self$`processedCount` <- this_object$`processedCount`
      }
      if (!is.null(this_object$`itemsFailedCount`)) {
        self$`itemsFailedCount` <- this_object$`itemsFailedCount`
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
    #' @return MetadataUpdateOutput in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`totalCount`)) {
          sprintf(
          '"totalCount":
            %d
                    ',
          self$`totalCount`
          )
        },
        if (!is.null(self$`processedCount`)) {
          sprintf(
          '"processedCount":
            %d
                    ',
          self$`processedCount`
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
    #' Deserialize JSON string into an instance of MetadataUpdateOutput
    #'
    #' @description
    #' Deserialize JSON string into an instance of MetadataUpdateOutput
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetadataUpdateOutput
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`totalCount` <- this_object$`totalCount`
      self$`processedCount` <- this_object$`processedCount`
      self$`itemsFailedCount` <- this_object$`itemsFailedCount`
      self$`itemsFailed` <- ApiClient$new()$deserializeObj(this_object$`itemsFailed`, "array[BulkFailedItem]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to MetadataUpdateOutput
    #'
    #' @description
    #' Validate JSON input with respect to MetadataUpdateOutput and throw an exception if invalid
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
    #' @return String representation of MetadataUpdateOutput
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
# MetadataUpdateOutput$unlock()
#
## Below is an example to define the print function
# MetadataUpdateOutput$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MetadataUpdateOutput$lock()

