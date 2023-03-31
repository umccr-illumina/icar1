#' Create a new WorkflowRunHistoryEvent
#'
#' @description
#' Information about a specific event in the workflow run history
#'
#' @docType class
#' @title WorkflowRunHistoryEvent
#' @description WorkflowRunHistoryEvent Class
#' @format An \code{R6Class} generator object
#' @field name Name of the event, such as the name of the step/task for state-level events and run name for run-level events character [optional]
#' @field eventId Identifier for the history event, if any integer [optional]
#' @field previousEventId Identifier for any previous history event (if available) integer [optional]
#' @field eventType Type of history event. The associated details entry will be populated based on the type of event. character [optional]
#' @field timestamp Timestamp for the history event character [optional]
#' @field eventDetails Details for history event object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkflowRunHistoryEvent <- R6::R6Class(
  "WorkflowRunHistoryEvent",
  public = list(
    `name` = NULL,
    `eventId` = NULL,
    `previousEventId` = NULL,
    `eventType` = NULL,
    `timestamp` = NULL,
    `eventDetails` = NULL,
    #' Initialize a new WorkflowRunHistoryEvent class.
    #'
    #' @description
    #' Initialize a new WorkflowRunHistoryEvent class.
    #'
    #' @param name Name of the event, such as the name of the step/task for state-level events and run name for run-level events
    #' @param eventId Identifier for the history event, if any
    #' @param previousEventId Identifier for any previous history event (if available)
    #' @param eventType Type of history event. The associated details entry will be populated based on the type of event.
    #' @param timestamp Timestamp for the history event
    #' @param eventDetails Details for history event
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `eventId` = NULL, `previousEventId` = NULL, `eventType` = NULL, `timestamp` = NULL, `eventDetails` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`eventId`)) {
        if (!(is.numeric(`eventId`) && length(`eventId`) == 1)) {
          stop(paste("Error! Invalid data for `eventId`. Must be an integer:", `eventId`))
        }
        self$`eventId` <- `eventId`
      }
      if (!is.null(`previousEventId`)) {
        if (!(is.numeric(`previousEventId`) && length(`previousEventId`) == 1)) {
          stop(paste("Error! Invalid data for `previousEventId`. Must be an integer:", `previousEventId`))
        }
        self$`previousEventId` <- `previousEventId`
      }
      if (!is.null(`eventType`)) {
        if (!(is.character(`eventType`) && length(`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", `eventType`))
        }
        self$`eventType` <- `eventType`
      }
      if (!is.null(`timestamp`)) {
        if (!is.character(`timestamp`)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`eventDetails`)) {
        self$`eventDetails` <- `eventDetails`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkflowRunHistoryEvent in JSON format
    #' @export
    toJSON = function() {
      WorkflowRunHistoryEventObject <- list()
      if (!is.null(self$`name`)) {
        WorkflowRunHistoryEventObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`eventId`)) {
        WorkflowRunHistoryEventObject[["eventId"]] <-
          self$`eventId`
      }
      if (!is.null(self$`previousEventId`)) {
        WorkflowRunHistoryEventObject[["previousEventId"]] <-
          self$`previousEventId`
      }
      if (!is.null(self$`eventType`)) {
        WorkflowRunHistoryEventObject[["eventType"]] <-
          self$`eventType`
      }
      if (!is.null(self$`timestamp`)) {
        WorkflowRunHistoryEventObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`eventDetails`)) {
        WorkflowRunHistoryEventObject[["eventDetails"]] <-
          self$`eventDetails`
      }
      WorkflowRunHistoryEventObject
    },
    #' Deserialize JSON string into an instance of WorkflowRunHistoryEvent
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowRunHistoryEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowRunHistoryEvent
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`eventId`)) {
        self$`eventId` <- this_object$`eventId`
      }
      if (!is.null(this_object$`previousEventId`)) {
        self$`previousEventId` <- this_object$`previousEventId`
      }
      if (!is.null(this_object$`eventType`)) {
        self$`eventType` <- this_object$`eventType`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`eventDetails`)) {
        self$`eventDetails` <- this_object$`eventDetails`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkflowRunHistoryEvent in JSON format
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
        if (!is.null(self$`eventId`)) {
          sprintf(
          '"eventId":
            %d
                    ',
          self$`eventId`
          )
        },
        if (!is.null(self$`previousEventId`)) {
          sprintf(
          '"previousEventId":
            %d
                    ',
          self$`previousEventId`
          )
        },
        if (!is.null(self$`eventType`)) {
          sprintf(
          '"eventType":
            "%s"
                    ',
          self$`eventType`
          )
        },
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            "%s"
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`eventDetails`)) {
          sprintf(
          '"eventDetails":
            "%s"
                    ',
          self$`eventDetails`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of WorkflowRunHistoryEvent
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowRunHistoryEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowRunHistoryEvent
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`eventId` <- this_object$`eventId`
      self$`previousEventId` <- this_object$`previousEventId`
      self$`eventType` <- this_object$`eventType`
      self$`timestamp` <- this_object$`timestamp`
      self$`eventDetails` <- this_object$`eventDetails`
      self
    },
    #' Validate JSON input with respect to WorkflowRunHistoryEvent
    #'
    #' @description
    #' Validate JSON input with respect to WorkflowRunHistoryEvent and throw an exception if invalid
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
    #' @return String representation of WorkflowRunHistoryEvent
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
# WorkflowRunHistoryEvent$unlock()
#
## Below is an example to define the print function
# WorkflowRunHistoryEvent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkflowRunHistoryEvent$lock()

