#' Create a new LaunchWorkflowVersionRequest
#'
#' @description
#' LaunchWorkflowVersionRequest Class
#'
#' @docType class
#' @title LaunchWorkflowVersionRequest
#' @description LaunchWorkflowVersionRequest Class
#' @format An \code{R6Class} generator object
#' @field name Name of the workflow run character [optional]
#' @field input Input for the launched workflow run. Must resolve to a JSON object. object [optional]
#' @field engineParameters Runtime options for launching workflows (currently only used for Airflow     and otherwise ignored). Must resolve to a JSON object. object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LaunchWorkflowVersionRequest <- R6::R6Class(
  "LaunchWorkflowVersionRequest",
  public = list(
    `name` = NULL,
    `input` = NULL,
    `engineParameters` = NULL,
    #' Initialize a new LaunchWorkflowVersionRequest class.
    #'
    #' @description
    #' Initialize a new LaunchWorkflowVersionRequest class.
    #'
    #' @param name Name of the workflow run
    #' @param input Input for the launched workflow run. Must resolve to a JSON object.
    #' @param engineParameters Runtime options for launching workflows (currently only used for Airflow     and otherwise ignored). Must resolve to a JSON object.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `input` = NULL, `engineParameters` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`input`)) {
        self$`input` <- `input`
      }
      if (!is.null(`engineParameters`)) {
        self$`engineParameters` <- `engineParameters`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LaunchWorkflowVersionRequest in JSON format
    #' @export
    toJSON = function() {
      LaunchWorkflowVersionRequestObject <- list()
      if (!is.null(self$`name`)) {
        LaunchWorkflowVersionRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`input`)) {
        LaunchWorkflowVersionRequestObject[["input"]] <-
          self$`input`
      }
      if (!is.null(self$`engineParameters`)) {
        LaunchWorkflowVersionRequestObject[["engineParameters"]] <-
          self$`engineParameters`
      }
      LaunchWorkflowVersionRequestObject
    },
    #' Deserialize JSON string into an instance of LaunchWorkflowVersionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of LaunchWorkflowVersionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LaunchWorkflowVersionRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`input`)) {
        self$`input` <- this_object$`input`
      }
      if (!is.null(this_object$`engineParameters`)) {
        self$`engineParameters` <- this_object$`engineParameters`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return LaunchWorkflowVersionRequest in JSON format
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
        if (!is.null(self$`input`)) {
          sprintf(
          '"input":
            "%s"
                    ',
          self$`input`
          )
        },
        if (!is.null(self$`engineParameters`)) {
          sprintf(
          '"engineParameters":
            "%s"
                    ',
          self$`engineParameters`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of LaunchWorkflowVersionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of LaunchWorkflowVersionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LaunchWorkflowVersionRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`input` <- this_object$`input`
      self$`engineParameters` <- this_object$`engineParameters`
      self
    },
    #' Validate JSON input with respect to LaunchWorkflowVersionRequest
    #'
    #' @description
    #' Validate JSON input with respect to LaunchWorkflowVersionRequest and throw an exception if invalid
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
    #' @return String representation of LaunchWorkflowVersionRequest
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
      if (!str_detect(self$`name`, "^(?![wW][fF][rR]\\..*)(^[0-9a-zA-Z-_\\.]*$)")) {
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
      if (!str_detect(self$`name`, "^(?![wW][fF][rR]\\..*)(^[0-9a-zA-Z-_\\.]*$)")) {
        invalid_fields["name"] <- "Invalid value for `name`, must conform to the pattern ^(?![wW][fF][rR]\\..*)(^[0-9a-zA-Z-_\\.]*$)."
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
# LaunchWorkflowVersionRequest$unlock()
#
## Below is an example to define the print function
# LaunchWorkflowVersionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LaunchWorkflowVersionRequest$lock()

