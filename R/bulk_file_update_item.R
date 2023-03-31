#' Create a new BulkFileUpdateItem
#'
#' @description
#' BulkFileUpdateItem Class
#'
#' @docType class
#' @title BulkFileUpdateItem
#' @description BulkFileUpdateItem Class
#' @format An \code{R6Class} generator object
#' @field id Id of this file character [optional]
#' @field metadata Metadata about this file and its contents object [optional]
#' @field format The File's Format character [optional]
#' @field formatEdam The File's Edam Format character [optional]
#' @field lifeCycle  \link{FileLifeCycleSettings} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BulkFileUpdateItem <- R6::R6Class(
  "BulkFileUpdateItem",
  public = list(
    `id` = NULL,
    `metadata` = NULL,
    `format` = NULL,
    `formatEdam` = NULL,
    `lifeCycle` = NULL,
    #' Initialize a new BulkFileUpdateItem class.
    #'
    #' @description
    #' Initialize a new BulkFileUpdateItem class.
    #'
    #' @param id Id of this file
    #' @param metadata Metadata about this file and its contents
    #' @param format The File's Format
    #' @param formatEdam The File's Edam Format
    #' @param lifeCycle lifeCycle
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `metadata` = NULL, `format` = NULL, `formatEdam` = NULL, `lifeCycle` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
      if (!is.null(`format`)) {
        if (!(is.character(`format`) && length(`format`) == 1)) {
          stop(paste("Error! Invalid data for `format`. Must be a string:", `format`))
        }
        self$`format` <- `format`
      }
      if (!is.null(`formatEdam`)) {
        if (!(is.character(`formatEdam`) && length(`formatEdam`) == 1)) {
          stop(paste("Error! Invalid data for `formatEdam`. Must be a string:", `formatEdam`))
        }
        self$`formatEdam` <- `formatEdam`
      }
      if (!is.null(`lifeCycle`)) {
        stopifnot(R6::is.R6(`lifeCycle`))
        self$`lifeCycle` <- `lifeCycle`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkFileUpdateItem in JSON format
    #' @export
    toJSON = function() {
      BulkFileUpdateItemObject <- list()
      if (!is.null(self$`id`)) {
        BulkFileUpdateItemObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`metadata`)) {
        BulkFileUpdateItemObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`format`)) {
        BulkFileUpdateItemObject[["format"]] <-
          self$`format`
      }
      if (!is.null(self$`formatEdam`)) {
        BulkFileUpdateItemObject[["formatEdam"]] <-
          self$`formatEdam`
      }
      if (!is.null(self$`lifeCycle`)) {
        BulkFileUpdateItemObject[["lifeCycle"]] <-
          self$`lifeCycle`$toJSON()
      }
      BulkFileUpdateItemObject
    },
    #' Deserialize JSON string into an instance of BulkFileUpdateItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFileUpdateItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFileUpdateItem
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`format`)) {
        self$`format` <- this_object$`format`
      }
      if (!is.null(this_object$`formatEdam`)) {
        self$`formatEdam` <- this_object$`formatEdam`
      }
      if (!is.null(this_object$`lifeCycle`)) {
        `lifecycle_object` <- FileLifeCycleSettings$new()
        `lifecycle_object`$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
        self$`lifeCycle` <- `lifecycle_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkFileUpdateItem in JSON format
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
        },
        if (!is.null(self$`format`)) {
          sprintf(
          '"format":
            "%s"
                    ',
          self$`format`
          )
        },
        if (!is.null(self$`formatEdam`)) {
          sprintf(
          '"formatEdam":
            "%s"
                    ',
          self$`formatEdam`
          )
        },
        if (!is.null(self$`lifeCycle`)) {
          sprintf(
          '"lifeCycle":
          %s
          ',
          jsonlite::toJSON(self$`lifeCycle`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of BulkFileUpdateItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFileUpdateItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFileUpdateItem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`metadata` <- this_object$`metadata`
      self$`format` <- this_object$`format`
      self$`formatEdam` <- this_object$`formatEdam`
      self$`lifeCycle` <- FileLifeCycleSettings$new()$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to BulkFileUpdateItem
    #'
    #' @description
    #' Validate JSON input with respect to BulkFileUpdateItem and throw an exception if invalid
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
    #' @return String representation of BulkFileUpdateItem
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
# BulkFileUpdateItem$unlock()
#
## Below is an example to define the print function
# BulkFileUpdateItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BulkFileUpdateItem$lock()

