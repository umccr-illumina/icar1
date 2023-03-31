#' Create a new Environment
#'
#' @description
#' Environment Class
#'
#' @docType class
#' @title Environment
#' @description Environment Class
#' @format An \code{R6Class} generator object
#' @field variables  named list(character) [optional]
#' @field resources  \link{Resources} [optional]
#' @field inputStreamSettings  \link{InputStreamSettings} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Environment <- R6::R6Class(
  "Environment",
  public = list(
    `variables` = NULL,
    `resources` = NULL,
    `inputStreamSettings` = NULL,
    #' Initialize a new Environment class.
    #'
    #' @description
    #' Initialize a new Environment class.
    #'
    #' @param variables variables
    #' @param resources resources
    #' @param inputStreamSettings inputStreamSettings
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`variables` = NULL, `resources` = NULL, `inputStreamSettings` = NULL, ...) {
      if (!is.null(`variables`)) {
        stopifnot(is.vector(`variables`), length(`variables`) != 0)
        sapply(`variables`, function(x) stopifnot(is.character(x)))
        self$`variables` <- `variables`
      }
      if (!is.null(`resources`)) {
        stopifnot(R6::is.R6(`resources`))
        self$`resources` <- `resources`
      }
      if (!is.null(`inputStreamSettings`)) {
        stopifnot(R6::is.R6(`inputStreamSettings`))
        self$`inputStreamSettings` <- `inputStreamSettings`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Environment in JSON format
    #' @export
    toJSON = function() {
      EnvironmentObject <- list()
      if (!is.null(self$`variables`)) {
        EnvironmentObject[["variables"]] <-
          self$`variables`
      }
      if (!is.null(self$`resources`)) {
        EnvironmentObject[["resources"]] <-
          self$`resources`$toJSON()
      }
      if (!is.null(self$`inputStreamSettings`)) {
        EnvironmentObject[["inputStreamSettings"]] <-
          self$`inputStreamSettings`$toJSON()
      }
      EnvironmentObject
    },
    #' Deserialize JSON string into an instance of Environment
    #'
    #' @description
    #' Deserialize JSON string into an instance of Environment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Environment
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`variables`)) {
        self$`variables` <- ApiClient$new()$deserializeObj(this_object$`variables`, "map(character)", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`resources`)) {
        `resources_object` <- Resources$new()
        `resources_object`$fromJSON(jsonlite::toJSON(this_object$`resources`, auto_unbox = TRUE, digits = NA))
        self$`resources` <- `resources_object`
      }
      if (!is.null(this_object$`inputStreamSettings`)) {
        `inputstreamsettings_object` <- InputStreamSettings$new()
        `inputstreamsettings_object`$fromJSON(jsonlite::toJSON(this_object$`inputStreamSettings`, auto_unbox = TRUE, digits = NA))
        self$`inputStreamSettings` <- `inputstreamsettings_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Environment in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`variables`)) {
          sprintf(
          '"variables":
            "%s"
          ',
          jsonlite::toJSON(lapply(self$`variables`, function(x){ x }), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`resources`)) {
          sprintf(
          '"resources":
          %s
          ',
          jsonlite::toJSON(self$`resources`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`inputStreamSettings`)) {
          sprintf(
          '"inputStreamSettings":
          %s
          ',
          jsonlite::toJSON(self$`inputStreamSettings`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Environment
    #'
    #' @description
    #' Deserialize JSON string into an instance of Environment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Environment
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`variables` <- ApiClient$new()$deserializeObj(this_object$`variables`, "map(character)", loadNamespace("icar1"))
      self$`resources` <- Resources$new()$fromJSON(jsonlite::toJSON(this_object$`resources`, auto_unbox = TRUE, digits = NA))
      self$`inputStreamSettings` <- InputStreamSettings$new()$fromJSON(jsonlite::toJSON(this_object$`inputStreamSettings`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to Environment
    #'
    #' @description
    #' Validate JSON input with respect to Environment and throw an exception if invalid
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
    #' @return String representation of Environment
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
# Environment$unlock()
#
## Below is an example to define the print function
# Environment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Environment$lock()

