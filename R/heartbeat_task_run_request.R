#' Create a new HeartbeatTaskRunRequest
#'
#' @description
#' HeartbeatTaskRunRequest Class
#'
#' @docType class
#' @title HeartbeatTaskRunRequest
#' @description HeartbeatTaskRunRequest Class
#' @format An \code{R6Class} generator object
#' @field lastHeartbeat LastHeartbeat character [optional]
#' @field podName  character [optional]
#' @field podUID  character [optional]
#' @field podHardwareDetails  character [optional]
#' @field jobRetryCount  integer [optional]
#' @field nonce  character [optional]
#' @field containerStatus  list(\link{ContainerStatus}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HeartbeatTaskRunRequest <- R6::R6Class(
  "HeartbeatTaskRunRequest",
  public = list(
    `lastHeartbeat` = NULL,
    `podName` = NULL,
    `podUID` = NULL,
    `podHardwareDetails` = NULL,
    `jobRetryCount` = NULL,
    `nonce` = NULL,
    `containerStatus` = NULL,
    #' Initialize a new HeartbeatTaskRunRequest class.
    #'
    #' @description
    #' Initialize a new HeartbeatTaskRunRequest class.
    #'
    #' @param lastHeartbeat LastHeartbeat
    #' @param podName podName
    #' @param podUID podUID
    #' @param podHardwareDetails podHardwareDetails
    #' @param jobRetryCount jobRetryCount
    #' @param nonce nonce
    #' @param containerStatus containerStatus
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`lastHeartbeat` = NULL, `podName` = NULL, `podUID` = NULL, `podHardwareDetails` = NULL, `jobRetryCount` = NULL, `nonce` = NULL, `containerStatus` = NULL, ...) {
      if (!is.null(`lastHeartbeat`)) {
        if (!(is.logical(`lastHeartbeat`) && length(`lastHeartbeat`) == 1)) {
          stop(paste("Error! Invalid data for `lastHeartbeat`. Must be a boolean:", `lastHeartbeat`))
        }
        self$`lastHeartbeat` <- `lastHeartbeat`
      }
      if (!is.null(`podName`)) {
        if (!(is.character(`podName`) && length(`podName`) == 1)) {
          stop(paste("Error! Invalid data for `podName`. Must be a string:", `podName`))
        }
        self$`podName` <- `podName`
      }
      if (!is.null(`podUID`)) {
        if (!(is.character(`podUID`) && length(`podUID`) == 1)) {
          stop(paste("Error! Invalid data for `podUID`. Must be a string:", `podUID`))
        }
        self$`podUID` <- `podUID`
      }
      if (!is.null(`podHardwareDetails`)) {
        if (!(is.character(`podHardwareDetails`) && length(`podHardwareDetails`) == 1)) {
          stop(paste("Error! Invalid data for `podHardwareDetails`. Must be a string:", `podHardwareDetails`))
        }
        self$`podHardwareDetails` <- `podHardwareDetails`
      }
      if (!is.null(`jobRetryCount`)) {
        if (!(is.numeric(`jobRetryCount`) && length(`jobRetryCount`) == 1)) {
          stop(paste("Error! Invalid data for `jobRetryCount`. Must be an integer:", `jobRetryCount`))
        }
        self$`jobRetryCount` <- `jobRetryCount`
      }
      if (!is.null(`nonce`)) {
        if (!(is.character(`nonce`) && length(`nonce`) == 1)) {
          stop(paste("Error! Invalid data for `nonce`. Must be a string:", `nonce`))
        }
        self$`nonce` <- `nonce`
      }
      if (!is.null(`containerStatus`)) {
        stopifnot(is.vector(`containerStatus`), length(`containerStatus`) != 0)
        sapply(`containerStatus`, function(x) stopifnot(R6::is.R6(x)))
        self$`containerStatus` <- `containerStatus`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return HeartbeatTaskRunRequest in JSON format
    #' @export
    toJSON = function() {
      HeartbeatTaskRunRequestObject <- list()
      if (!is.null(self$`lastHeartbeat`)) {
        HeartbeatTaskRunRequestObject[["lastHeartbeat"]] <-
          self$`lastHeartbeat`
      }
      if (!is.null(self$`podName`)) {
        HeartbeatTaskRunRequestObject[["podName"]] <-
          self$`podName`
      }
      if (!is.null(self$`podUID`)) {
        HeartbeatTaskRunRequestObject[["podUID"]] <-
          self$`podUID`
      }
      if (!is.null(self$`podHardwareDetails`)) {
        HeartbeatTaskRunRequestObject[["podHardwareDetails"]] <-
          self$`podHardwareDetails`
      }
      if (!is.null(self$`jobRetryCount`)) {
        HeartbeatTaskRunRequestObject[["jobRetryCount"]] <-
          self$`jobRetryCount`
      }
      if (!is.null(self$`nonce`)) {
        HeartbeatTaskRunRequestObject[["nonce"]] <-
          self$`nonce`
      }
      if (!is.null(self$`containerStatus`)) {
        HeartbeatTaskRunRequestObject[["containerStatus"]] <-
          lapply(self$`containerStatus`, function(x) x$toJSON())
      }
      HeartbeatTaskRunRequestObject
    },
    #' Deserialize JSON string into an instance of HeartbeatTaskRunRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of HeartbeatTaskRunRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of HeartbeatTaskRunRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`lastHeartbeat`)) {
        self$`lastHeartbeat` <- this_object$`lastHeartbeat`
      }
      if (!is.null(this_object$`podName`)) {
        self$`podName` <- this_object$`podName`
      }
      if (!is.null(this_object$`podUID`)) {
        self$`podUID` <- this_object$`podUID`
      }
      if (!is.null(this_object$`podHardwareDetails`)) {
        self$`podHardwareDetails` <- this_object$`podHardwareDetails`
      }
      if (!is.null(this_object$`jobRetryCount`)) {
        self$`jobRetryCount` <- this_object$`jobRetryCount`
      }
      if (!is.null(this_object$`nonce`)) {
        self$`nonce` <- this_object$`nonce`
      }
      if (!is.null(this_object$`containerStatus`)) {
        self$`containerStatus` <- ApiClient$new()$deserializeObj(this_object$`containerStatus`, "array[ContainerStatus]", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return HeartbeatTaskRunRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`lastHeartbeat`)) {
          sprintf(
          '"lastHeartbeat":
            %s
                    ',
          tolower(self$`lastHeartbeat`)
          )
        },
        if (!is.null(self$`podName`)) {
          sprintf(
          '"podName":
            "%s"
                    ',
          self$`podName`
          )
        },
        if (!is.null(self$`podUID`)) {
          sprintf(
          '"podUID":
            "%s"
                    ',
          self$`podUID`
          )
        },
        if (!is.null(self$`podHardwareDetails`)) {
          sprintf(
          '"podHardwareDetails":
            "%s"
                    ',
          self$`podHardwareDetails`
          )
        },
        if (!is.null(self$`jobRetryCount`)) {
          sprintf(
          '"jobRetryCount":
            %d
                    ',
          self$`jobRetryCount`
          )
        },
        if (!is.null(self$`nonce`)) {
          sprintf(
          '"nonce":
            "%s"
                    ',
          self$`nonce`
          )
        },
        if (!is.null(self$`containerStatus`)) {
          sprintf(
          '"containerStatus":
          [%s]
',
          paste(sapply(self$`containerStatus`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of HeartbeatTaskRunRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of HeartbeatTaskRunRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of HeartbeatTaskRunRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`lastHeartbeat` <- this_object$`lastHeartbeat`
      self$`podName` <- this_object$`podName`
      self$`podUID` <- this_object$`podUID`
      self$`podHardwareDetails` <- this_object$`podHardwareDetails`
      self$`jobRetryCount` <- this_object$`jobRetryCount`
      self$`nonce` <- this_object$`nonce`
      self$`containerStatus` <- ApiClient$new()$deserializeObj(this_object$`containerStatus`, "array[ContainerStatus]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to HeartbeatTaskRunRequest
    #'
    #' @description
    #' Validate JSON input with respect to HeartbeatTaskRunRequest and throw an exception if invalid
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
    #' @return String representation of HeartbeatTaskRunRequest
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
# HeartbeatTaskRunRequest$unlock()
#
## Below is an example to define the print function
# HeartbeatTaskRunRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HeartbeatTaskRunRequest$lock()

