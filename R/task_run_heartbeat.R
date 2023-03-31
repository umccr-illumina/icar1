#' Create a new TaskRunHeartbeat
#'
#' @description
#' TaskRunHeartbeat Class
#'
#' @docType class
#' @title TaskRunHeartbeat
#' @description TaskRunHeartbeat Class
#' @format An \code{R6Class} generator object
#' @field jwt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TaskRunHeartbeat <- R6::R6Class(
  "TaskRunHeartbeat",
  public = list(
    `jwt` = NULL,
    #' Initialize a new TaskRunHeartbeat class.
    #'
    #' @description
    #' Initialize a new TaskRunHeartbeat class.
    #'
    #' @param jwt jwt
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`jwt` = NULL, ...) {
      if (!is.null(`jwt`)) {
        if (!(is.character(`jwt`) && length(`jwt`) == 1)) {
          stop(paste("Error! Invalid data for `jwt`. Must be a string:", `jwt`))
        }
        self$`jwt` <- `jwt`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TaskRunHeartbeat in JSON format
    #' @export
    toJSON = function() {
      TaskRunHeartbeatObject <- list()
      if (!is.null(self$`jwt`)) {
        TaskRunHeartbeatObject[["jwt"]] <-
          self$`jwt`
      }
      TaskRunHeartbeatObject
    },
    #' Deserialize JSON string into an instance of TaskRunHeartbeat
    #'
    #' @description
    #' Deserialize JSON string into an instance of TaskRunHeartbeat
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaskRunHeartbeat
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`jwt`)) {
        self$`jwt` <- this_object$`jwt`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TaskRunHeartbeat in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`jwt`)) {
          sprintf(
          '"jwt":
            "%s"
                    ',
          self$`jwt`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TaskRunHeartbeat
    #'
    #' @description
    #' Deserialize JSON string into an instance of TaskRunHeartbeat
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaskRunHeartbeat
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`jwt` <- this_object$`jwt`
      self
    },
    #' Validate JSON input with respect to TaskRunHeartbeat
    #'
    #' @description
    #' Validate JSON input with respect to TaskRunHeartbeat and throw an exception if invalid
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
    #' @return String representation of TaskRunHeartbeat
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
# TaskRunHeartbeat$unlock()
#
## Below is an example to define the print function
# TaskRunHeartbeat$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TaskRunHeartbeat$lock()

