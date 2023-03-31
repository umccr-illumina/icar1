#' Create a new ContainerStateTerminated
#'
#' @description
#' ContainerStateTerminated Class
#'
#' @docType class
#' @title ContainerStateTerminated
#' @description ContainerStateTerminated Class
#' @format An \code{R6Class} generator object
#' @field exitCode  integer [optional]
#' @field signal  integer [optional]
#' @field reason  character [optional]
#' @field message  character [optional]
#' @field startedAt  character [optional]
#' @field finishedAt  character [optional]
#' @field containerID  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContainerStateTerminated <- R6::R6Class(
  "ContainerStateTerminated",
  public = list(
    `exitCode` = NULL,
    `signal` = NULL,
    `reason` = NULL,
    `message` = NULL,
    `startedAt` = NULL,
    `finishedAt` = NULL,
    `containerID` = NULL,
    #' Initialize a new ContainerStateTerminated class.
    #'
    #' @description
    #' Initialize a new ContainerStateTerminated class.
    #'
    #' @param exitCode exitCode
    #' @param signal signal
    #' @param reason reason
    #' @param message message
    #' @param startedAt startedAt
    #' @param finishedAt finishedAt
    #' @param containerID containerID
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`exitCode` = NULL, `signal` = NULL, `reason` = NULL, `message` = NULL, `startedAt` = NULL, `finishedAt` = NULL, `containerID` = NULL, ...) {
      if (!is.null(`exitCode`)) {
        if (!(is.numeric(`exitCode`) && length(`exitCode`) == 1)) {
          stop(paste("Error! Invalid data for `exitCode`. Must be an integer:", `exitCode`))
        }
        self$`exitCode` <- `exitCode`
      }
      if (!is.null(`signal`)) {
        if (!(is.numeric(`signal`) && length(`signal`) == 1)) {
          stop(paste("Error! Invalid data for `signal`. Must be an integer:", `signal`))
        }
        self$`signal` <- `signal`
      }
      if (!is.null(`reason`)) {
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`startedAt`)) {
        if (!is.character(`startedAt`)) {
          stop(paste("Error! Invalid data for `startedAt`. Must be a string:", `startedAt`))
        }
        self$`startedAt` <- `startedAt`
      }
      if (!is.null(`finishedAt`)) {
        if (!is.character(`finishedAt`)) {
          stop(paste("Error! Invalid data for `finishedAt`. Must be a string:", `finishedAt`))
        }
        self$`finishedAt` <- `finishedAt`
      }
      if (!is.null(`containerID`)) {
        if (!(is.character(`containerID`) && length(`containerID`) == 1)) {
          stop(paste("Error! Invalid data for `containerID`. Must be a string:", `containerID`))
        }
        self$`containerID` <- `containerID`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ContainerStateTerminated in JSON format
    #' @export
    toJSON = function() {
      ContainerStateTerminatedObject <- list()
      if (!is.null(self$`exitCode`)) {
        ContainerStateTerminatedObject[["exitCode"]] <-
          self$`exitCode`
      }
      if (!is.null(self$`signal`)) {
        ContainerStateTerminatedObject[["signal"]] <-
          self$`signal`
      }
      if (!is.null(self$`reason`)) {
        ContainerStateTerminatedObject[["reason"]] <-
          self$`reason`
      }
      if (!is.null(self$`message`)) {
        ContainerStateTerminatedObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`startedAt`)) {
        ContainerStateTerminatedObject[["startedAt"]] <-
          self$`startedAt`
      }
      if (!is.null(self$`finishedAt`)) {
        ContainerStateTerminatedObject[["finishedAt"]] <-
          self$`finishedAt`
      }
      if (!is.null(self$`containerID`)) {
        ContainerStateTerminatedObject[["containerID"]] <-
          self$`containerID`
      }
      ContainerStateTerminatedObject
    },
    #' Deserialize JSON string into an instance of ContainerStateTerminated
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContainerStateTerminated
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContainerStateTerminated
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exitCode`)) {
        self$`exitCode` <- this_object$`exitCode`
      }
      if (!is.null(this_object$`signal`)) {
        self$`signal` <- this_object$`signal`
      }
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`startedAt`)) {
        self$`startedAt` <- this_object$`startedAt`
      }
      if (!is.null(this_object$`finishedAt`)) {
        self$`finishedAt` <- this_object$`finishedAt`
      }
      if (!is.null(this_object$`containerID`)) {
        self$`containerID` <- this_object$`containerID`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ContainerStateTerminated in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`exitCode`)) {
          sprintf(
          '"exitCode":
            %d
                    ',
          self$`exitCode`
          )
        },
        if (!is.null(self$`signal`)) {
          sprintf(
          '"signal":
            %d
                    ',
          self$`signal`
          )
        },
        if (!is.null(self$`reason`)) {
          sprintf(
          '"reason":
            "%s"
                    ',
          self$`reason`
          )
        },
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        },
        if (!is.null(self$`startedAt`)) {
          sprintf(
          '"startedAt":
            "%s"
                    ',
          self$`startedAt`
          )
        },
        if (!is.null(self$`finishedAt`)) {
          sprintf(
          '"finishedAt":
            "%s"
                    ',
          self$`finishedAt`
          )
        },
        if (!is.null(self$`containerID`)) {
          sprintf(
          '"containerID":
            "%s"
                    ',
          self$`containerID`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ContainerStateTerminated
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContainerStateTerminated
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContainerStateTerminated
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exitCode` <- this_object$`exitCode`
      self$`signal` <- this_object$`signal`
      self$`reason` <- this_object$`reason`
      self$`message` <- this_object$`message`
      self$`startedAt` <- this_object$`startedAt`
      self$`finishedAt` <- this_object$`finishedAt`
      self$`containerID` <- this_object$`containerID`
      self
    },
    #' Validate JSON input with respect to ContainerStateTerminated
    #'
    #' @description
    #' Validate JSON input with respect to ContainerStateTerminated and throw an exception if invalid
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
    #' @return String representation of ContainerStateTerminated
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
# ContainerStateTerminated$unlock()
#
## Below is an example to define the print function
# ContainerStateTerminated$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContainerStateTerminated$lock()

