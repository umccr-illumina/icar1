#' Create a new CheckOutQueuedTaskRunRequest
#'
#' @description
#' CheckOutQueuedTaskRunRequest Class
#'
#' @docType class
#' @title CheckOutQueuedTaskRunRequest
#' @description CheckOutQueuedTaskRunRequest Class
#' @format An \code{R6Class} generator object
#' @field computeType Type of the compute requested (Fpga and NonFpga) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CheckOutQueuedTaskRunRequest <- R6::R6Class(
  "CheckOutQueuedTaskRunRequest",
  public = list(
    `computeType` = NULL,
    #' Initialize a new CheckOutQueuedTaskRunRequest class.
    #'
    #' @description
    #' Initialize a new CheckOutQueuedTaskRunRequest class.
    #'
    #' @param computeType Type of the compute requested (Fpga and NonFpga)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`computeType` = NULL, ...) {
      if (!is.null(`computeType`)) {
        if (!(`computeType` %in% c("Fpga", "NonFpga"))) {
          stop(paste("Error! \"", `computeType`, "\" cannot be assigned to `computeType`. Must be \"Fpga\", \"NonFpga\".", sep = ""))
        }
        if (!(is.character(`computeType`) && length(`computeType`) == 1)) {
          stop(paste("Error! Invalid data for `computeType`. Must be a string:", `computeType`))
        }
        self$`computeType` <- `computeType`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CheckOutQueuedTaskRunRequest in JSON format
    #' @export
    toJSON = function() {
      CheckOutQueuedTaskRunRequestObject <- list()
      if (!is.null(self$`computeType`)) {
        CheckOutQueuedTaskRunRequestObject[["computeType"]] <-
          self$`computeType`
      }
      CheckOutQueuedTaskRunRequestObject
    },
    #' Deserialize JSON string into an instance of CheckOutQueuedTaskRunRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CheckOutQueuedTaskRunRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CheckOutQueuedTaskRunRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`computeType`)) {
        if (!is.null(this_object$`computeType`) && !(this_object$`computeType` %in% c("Fpga", "NonFpga"))) {
          stop(paste("Error! \"", this_object$`computeType`, "\" cannot be assigned to `computeType`. Must be \"Fpga\", \"NonFpga\".", sep = ""))
        }
        self$`computeType` <- this_object$`computeType`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CheckOutQueuedTaskRunRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`computeType`)) {
          sprintf(
          '"computeType":
            "%s"
                    ',
          self$`computeType`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CheckOutQueuedTaskRunRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CheckOutQueuedTaskRunRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CheckOutQueuedTaskRunRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`computeType`) && !(this_object$`computeType` %in% c("Fpga", "NonFpga"))) {
        stop(paste("Error! \"", this_object$`computeType`, "\" cannot be assigned to `computeType`. Must be \"Fpga\", \"NonFpga\".", sep = ""))
      }
      self$`computeType` <- this_object$`computeType`
      self
    },
    #' Validate JSON input with respect to CheckOutQueuedTaskRunRequest
    #'
    #' @description
    #' Validate JSON input with respect to CheckOutQueuedTaskRunRequest and throw an exception if invalid
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
    #' @return String representation of CheckOutQueuedTaskRunRequest
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
# CheckOutQueuedTaskRunRequest$unlock()
#
## Below is an example to define the print function
# CheckOutQueuedTaskRunRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CheckOutQueuedTaskRunRequest$lock()

