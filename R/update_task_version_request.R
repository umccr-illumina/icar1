#' Create a new UpdateTaskVersionRequest
#'
#' @description
#' UpdateTaskVersionRequest Class
#'
#' @docType class
#' @title UpdateTaskVersionRequest
#' @description UpdateTaskVersionRequest Class
#' @format An \code{R6Class} generator object
#' @field version User-defined version of task version character [optional]
#' @field description User-defined description of task version character [optional]
#' @field execution  \link{Execution} [optional]
#' @field acl  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateTaskVersionRequest <- R6::R6Class(
  "UpdateTaskVersionRequest",
  public = list(
    `version` = NULL,
    `description` = NULL,
    `execution` = NULL,
    `acl` = NULL,
    #' Initialize a new UpdateTaskVersionRequest class.
    #'
    #' @description
    #' Initialize a new UpdateTaskVersionRequest class.
    #'
    #' @param version User-defined version of task version
    #' @param description User-defined description of task version
    #' @param execution execution
    #' @param acl acl
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`version` = NULL, `description` = NULL, `execution` = NULL, `acl` = NULL, ...) {
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`execution`)) {
        stopifnot(R6::is.R6(`execution`))
        self$`execution` <- `execution`
      }
      if (!is.null(`acl`)) {
        stopifnot(is.vector(`acl`), length(`acl`) != 0)
        sapply(`acl`, function(x) stopifnot(is.character(x)))
        self$`acl` <- `acl`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateTaskVersionRequest in JSON format
    #' @export
    toJSON = function() {
      UpdateTaskVersionRequestObject <- list()
      if (!is.null(self$`version`)) {
        UpdateTaskVersionRequestObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`description`)) {
        UpdateTaskVersionRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`execution`)) {
        UpdateTaskVersionRequestObject[["execution"]] <-
          self$`execution`$toJSON()
      }
      if (!is.null(self$`acl`)) {
        UpdateTaskVersionRequestObject[["acl"]] <-
          self$`acl`
      }
      UpdateTaskVersionRequestObject
    },
    #' Deserialize JSON string into an instance of UpdateTaskVersionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateTaskVersionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateTaskVersionRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`execution`)) {
        `execution_object` <- Execution$new()
        `execution_object`$fromJSON(jsonlite::toJSON(this_object$`execution`, auto_unbox = TRUE, digits = NA))
        self$`execution` <- `execution_object`
      }
      if (!is.null(this_object$`acl`)) {
        self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateTaskVersionRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`version`)) {
          sprintf(
          '"version":
            "%s"
                    ',
          self$`version`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`execution`)) {
          sprintf(
          '"execution":
          %s
          ',
          jsonlite::toJSON(self$`execution`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`acl`)) {
          sprintf(
          '"acl":
             [%s]
          ',
          paste(unlist(lapply(self$`acl`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UpdateTaskVersionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateTaskVersionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateTaskVersionRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`version` <- this_object$`version`
      self$`description` <- this_object$`description`
      self$`execution` <- Execution$new()$fromJSON(jsonlite::toJSON(this_object$`execution`, auto_unbox = TRUE, digits = NA))
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to UpdateTaskVersionRequest
    #'
    #' @description
    #' Validate JSON input with respect to UpdateTaskVersionRequest and throw an exception if invalid
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
    #' @return String representation of UpdateTaskVersionRequest
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
      if (nchar(self$`version`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`version`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 4096) {
        return(FALSE)
      }
      if (nchar(self$`description`) < 0) {
        return(FALSE)
      }

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
      if (nchar(self$`version`) > 255) {
        invalid_fields["version"] <- "Invalid length for `version`, must be smaller than or equal to 255."
      }
      if (nchar(self$`version`) < 0) {
        invalid_fields["version"] <- "Invalid length for `version`, must be bigger than or equal to 0."
      }

      if (nchar(self$`description`) > 4096) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 4096."
      }
      if (nchar(self$`description`) < 0) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 0."
      }

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
# UpdateTaskVersionRequest$unlock()
#
## Below is an example to define the print function
# UpdateTaskVersionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateTaskVersionRequest$lock()

