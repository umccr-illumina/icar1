#' Create a new DeliveryTarget
#'
#' @description
#' Configuration for the action to perform for events matching this subscription; only one delivery type may be specified
#'
#' @docType class
#' @title DeliveryTarget
#' @description DeliveryTarget Class
#' @format An \code{R6Class} generator object
#' @field awsSnsTopic  \link{DeliveryTargetAwsSnsTopic} [optional]
#' @field awsSqsQueue  \link{DeliveryTargetAwsSqsQueue} [optional]
#' @field workflowRunLaunch  \link{DeliveryTargetWorkflowRunLaunch} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeliveryTarget <- R6::R6Class(
  "DeliveryTarget",
  public = list(
    `awsSnsTopic` = NULL,
    `awsSqsQueue` = NULL,
    `workflowRunLaunch` = NULL,
    #' Initialize a new DeliveryTarget class.
    #'
    #' @description
    #' Initialize a new DeliveryTarget class.
    #'
    #' @param awsSnsTopic awsSnsTopic
    #' @param awsSqsQueue awsSqsQueue
    #' @param workflowRunLaunch workflowRunLaunch
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`awsSnsTopic` = NULL, `awsSqsQueue` = NULL, `workflowRunLaunch` = NULL, ...) {
      if (!is.null(`awsSnsTopic`)) {
        stopifnot(R6::is.R6(`awsSnsTopic`))
        self$`awsSnsTopic` <- `awsSnsTopic`
      }
      if (!is.null(`awsSqsQueue`)) {
        stopifnot(R6::is.R6(`awsSqsQueue`))
        self$`awsSqsQueue` <- `awsSqsQueue`
      }
      if (!is.null(`workflowRunLaunch`)) {
        stopifnot(R6::is.R6(`workflowRunLaunch`))
        self$`workflowRunLaunch` <- `workflowRunLaunch`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DeliveryTarget in JSON format
    #' @export
    toJSON = function() {
      DeliveryTargetObject <- list()
      if (!is.null(self$`awsSnsTopic`)) {
        DeliveryTargetObject[["awsSnsTopic"]] <-
          self$`awsSnsTopic`$toJSON()
      }
      if (!is.null(self$`awsSqsQueue`)) {
        DeliveryTargetObject[["awsSqsQueue"]] <-
          self$`awsSqsQueue`$toJSON()
      }
      if (!is.null(self$`workflowRunLaunch`)) {
        DeliveryTargetObject[["workflowRunLaunch"]] <-
          self$`workflowRunLaunch`$toJSON()
      }
      DeliveryTargetObject
    },
    #' Deserialize JSON string into an instance of DeliveryTarget
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeliveryTarget
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryTarget
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`awsSnsTopic`)) {
        `awssnstopic_object` <- DeliveryTargetAwsSnsTopic$new()
        `awssnstopic_object`$fromJSON(jsonlite::toJSON(this_object$`awsSnsTopic`, auto_unbox = TRUE, digits = NA))
        self$`awsSnsTopic` <- `awssnstopic_object`
      }
      if (!is.null(this_object$`awsSqsQueue`)) {
        `awssqsqueue_object` <- DeliveryTargetAwsSqsQueue$new()
        `awssqsqueue_object`$fromJSON(jsonlite::toJSON(this_object$`awsSqsQueue`, auto_unbox = TRUE, digits = NA))
        self$`awsSqsQueue` <- `awssqsqueue_object`
      }
      if (!is.null(this_object$`workflowRunLaunch`)) {
        `workflowrunlaunch_object` <- DeliveryTargetWorkflowRunLaunch$new()
        `workflowrunlaunch_object`$fromJSON(jsonlite::toJSON(this_object$`workflowRunLaunch`, auto_unbox = TRUE, digits = NA))
        self$`workflowRunLaunch` <- `workflowrunlaunch_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DeliveryTarget in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`awsSnsTopic`)) {
          sprintf(
          '"awsSnsTopic":
          %s
          ',
          jsonlite::toJSON(self$`awsSnsTopic`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`awsSqsQueue`)) {
          sprintf(
          '"awsSqsQueue":
          %s
          ',
          jsonlite::toJSON(self$`awsSqsQueue`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`workflowRunLaunch`)) {
          sprintf(
          '"workflowRunLaunch":
          %s
          ',
          jsonlite::toJSON(self$`workflowRunLaunch`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DeliveryTarget
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeliveryTarget
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryTarget
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`awsSnsTopic` <- DeliveryTargetAwsSnsTopic$new()$fromJSON(jsonlite::toJSON(this_object$`awsSnsTopic`, auto_unbox = TRUE, digits = NA))
      self$`awsSqsQueue` <- DeliveryTargetAwsSqsQueue$new()$fromJSON(jsonlite::toJSON(this_object$`awsSqsQueue`, auto_unbox = TRUE, digits = NA))
      self$`workflowRunLaunch` <- DeliveryTargetWorkflowRunLaunch$new()$fromJSON(jsonlite::toJSON(this_object$`workflowRunLaunch`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to DeliveryTarget
    #'
    #' @description
    #' Validate JSON input with respect to DeliveryTarget and throw an exception if invalid
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
    #' @return String representation of DeliveryTarget
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
# DeliveryTarget$unlock()
#
## Below is an example to define the print function
# DeliveryTarget$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeliveryTarget$lock()

