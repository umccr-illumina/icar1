#' Create a new LaunchTaskRequest
#'
#' @description
#' LaunchTaskRequest Class
#'
#' @docType class
#' @title LaunchTaskRequest
#' @description LaunchTaskRequest Class
#' @format An \code{R6Class} generator object
#' @field name User-defined name for the task run, if not specified version string of task version will be used character [optional]
#' @field description User-defined description for the task run, if not specified task version description will be used character [optional]
#' @field arguments Arguments to launch a task run named list(character) [optional]
#' @field acl Access Control List list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LaunchTaskRequest <- R6::R6Class(
  "LaunchTaskRequest",
  public = list(
    `name` = NULL,
    `description` = NULL,
    `arguments` = NULL,
    `acl` = NULL,
    #' Initialize a new LaunchTaskRequest class.
    #'
    #' @description
    #' Initialize a new LaunchTaskRequest class.
    #'
    #' @param name User-defined name for the task run, if not specified version string of task version will be used
    #' @param description User-defined description for the task run, if not specified task version description will be used
    #' @param arguments Arguments to launch a task run
    #' @param acl Access Control List
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `description` = NULL, `arguments` = NULL, `acl` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`arguments`)) {
        stopifnot(is.vector(`arguments`), length(`arguments`) != 0)
        sapply(`arguments`, function(x) stopifnot(is.character(x)))
        self$`arguments` <- `arguments`
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
    #' @return LaunchTaskRequest in JSON format
    #' @export
    toJSON = function() {
      LaunchTaskRequestObject <- list()
      if (!is.null(self$`name`)) {
        LaunchTaskRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        LaunchTaskRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`arguments`)) {
        LaunchTaskRequestObject[["arguments"]] <-
          self$`arguments`
      }
      if (!is.null(self$`acl`)) {
        LaunchTaskRequestObject[["acl"]] <-
          self$`acl`
      }
      LaunchTaskRequestObject
    },
    #' Deserialize JSON string into an instance of LaunchTaskRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of LaunchTaskRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LaunchTaskRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`arguments`)) {
        self$`arguments` <- ApiClient$new()$deserializeObj(this_object$`arguments`, "map(character)", loadNamespace("icar1"))
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
    #' @return LaunchTaskRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
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
        if (!is.null(self$`arguments`)) {
          sprintf(
          '"arguments":
            "%s"
          ',
          jsonlite::toJSON(lapply(self$`arguments`, function(x){ x }), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of LaunchTaskRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of LaunchTaskRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LaunchTaskRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`arguments` <- ApiClient$new()$deserializeObj(this_object$`arguments`, "map(character)", loadNamespace("icar1"))
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to LaunchTaskRequest
    #'
    #' @description
    #' Validate JSON input with respect to LaunchTaskRequest and throw an exception if invalid
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
    #' @return String representation of LaunchTaskRequest
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
      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 0) {
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
      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }
      if (nchar(self$`name`) < 0) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 0."
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
# LaunchTaskRequest$unlock()
#
## Below is an example to define the print function
# LaunchTaskRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LaunchTaskRequest$lock()

