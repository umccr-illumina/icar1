#' Create a new WorkflowLanguage
#'
#' @description
#' Language details about a workflow version
#'
#' @docType class
#' @title WorkflowLanguage
#' @description WorkflowLanguage Class
#' @format An \code{R6Class} generator object
#' @field name The name of the workflow language character
#' @field version The version of the workflow language, if any character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkflowLanguage <- R6::R6Class(
  "WorkflowLanguage",
  public = list(
    `name` = NULL,
    `version` = NULL,
    #' Initialize a new WorkflowLanguage class.
    #'
    #' @description
    #' Initialize a new WorkflowLanguage class.
    #'
    #' @param name The name of the workflow language
    #' @param version The version of the workflow language, if any
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `version` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkflowLanguage in JSON format
    #' @export
    toJSON = function() {
      WorkflowLanguageObject <- list()
      if (!is.null(self$`name`)) {
        WorkflowLanguageObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`version`)) {
        WorkflowLanguageObject[["version"]] <-
          self$`version`
      }
      WorkflowLanguageObject
    },
    #' Deserialize JSON string into an instance of WorkflowLanguage
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowLanguage
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowLanguage
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkflowLanguage in JSON format
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
        if (!is.null(self$`version`)) {
          sprintf(
          '"version":
            "%s"
                    ',
          self$`version`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of WorkflowLanguage
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowLanguage
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowLanguage
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`version` <- this_object$`version`
      self
    },
    #' Validate JSON input with respect to WorkflowLanguage
    #'
    #' @description
    #' Validate JSON input with respect to WorkflowLanguage and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for WorkflowLanguage: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WorkflowLanguage
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

      if (nchar(self$`name`) < 1) {
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

      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
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
# WorkflowLanguage$unlock()
#
## Below is an example to define the print function
# WorkflowLanguage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkflowLanguage$lock()

