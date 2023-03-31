#' Create a new WorkflowArgument
#'
#' @description
#' Argument definition
#'
#' @docType class
#' @title WorkflowArgument
#' @description WorkflowArgument Class
#' @format An \code{R6Class} generator object
#' @field name Name of the argument key character
#' @field value A simple string value for the argument. Cannot provide both Value and Json at the same time. character [optional]
#' @field json A JSON value for the argument. Cannot provide both Value and Json at the same time. object [optional]
#' @field options Comma separated list of options for the argument: Required, Overridable, Writable, Json, Optional, ReadOnly, Final  Some combinations of options are considered errors, like Required/Optional, Overridable/Final, Writable/ReadOnly, etc. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkflowArgument <- R6::R6Class(
  "WorkflowArgument",
  public = list(
    `name` = NULL,
    `value` = NULL,
    `json` = NULL,
    `options` = NULL,
    #' Initialize a new WorkflowArgument class.
    #'
    #' @description
    #' Initialize a new WorkflowArgument class.
    #'
    #' @param name Name of the argument key
    #' @param value A simple string value for the argument. Cannot provide both Value and Json at the same time.
    #' @param json A JSON value for the argument. Cannot provide both Value and Json at the same time.
    #' @param options Comma separated list of options for the argument: Required, Overridable, Writable, Json, Optional, ReadOnly, Final  Some combinations of options are considered errors, like Required/Optional, Overridable/Final, Writable/ReadOnly, etc.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `value` = NULL, `json` = NULL, `options` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
      if (!is.null(`json`)) {
        self$`json` <- `json`
      }
      if (!is.null(`options`)) {
        if (!(is.character(`options`) && length(`options`) == 1)) {
          stop(paste("Error! Invalid data for `options`. Must be a string:", `options`))
        }
        self$`options` <- `options`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkflowArgument in JSON format
    #' @export
    toJSON = function() {
      WorkflowArgumentObject <- list()
      if (!is.null(self$`name`)) {
        WorkflowArgumentObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`value`)) {
        WorkflowArgumentObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`json`)) {
        WorkflowArgumentObject[["json"]] <-
          self$`json`
      }
      if (!is.null(self$`options`)) {
        WorkflowArgumentObject[["options"]] <-
          self$`options`
      }
      WorkflowArgumentObject
    },
    #' Deserialize JSON string into an instance of WorkflowArgument
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowArgument
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowArgument
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`json`)) {
        self$`json` <- this_object$`json`
      }
      if (!is.null(this_object$`options`)) {
        self$`options` <- this_object$`options`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkflowArgument in JSON format
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
        if (!is.null(self$`value`)) {
          sprintf(
          '"value":
            "%s"
                    ',
          self$`value`
          )
        },
        if (!is.null(self$`json`)) {
          sprintf(
          '"json":
            "%s"
                    ',
          self$`json`
          )
        },
        if (!is.null(self$`options`)) {
          sprintf(
          '"options":
            "%s"
                    ',
          self$`options`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of WorkflowArgument
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowArgument
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowArgument
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`value` <- this_object$`value`
      self$`json` <- this_object$`json`
      self$`options` <- this_object$`options`
      self
    },
    #' Validate JSON input with respect to WorkflowArgument
    #'
    #' @description
    #' Validate JSON input with respect to WorkflowArgument and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkflowArgument: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WorkflowArgument
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 128) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 0) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 128) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 128."
      }
      if (nchar(self$`name`) < 0) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 0."
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
# WorkflowArgument$unlock()
#
## Below is an example to define the print function
# WorkflowArgument$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkflowArgument$lock()

