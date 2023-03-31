#' Create a new DeliveryTargetAwsSqsQueue
#'
#' @description
#' Configuration for an AWS SQS delivery queue
#'
#' @docType class
#' @title DeliveryTargetAwsSqsQueue
#' @description DeliveryTargetAwsSqsQueue Class
#' @format An \code{R6Class} generator object
#' @field queueUrl URL for the AWS SQS queue character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeliveryTargetAwsSqsQueue <- R6::R6Class(
  "DeliveryTargetAwsSqsQueue",
  public = list(
    `queueUrl` = NULL,
    #' Initialize a new DeliveryTargetAwsSqsQueue class.
    #'
    #' @description
    #' Initialize a new DeliveryTargetAwsSqsQueue class.
    #'
    #' @param queueUrl URL for the AWS SQS queue
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`queueUrl`, ...) {
      if (!missing(`queueUrl`)) {
        if (!(is.character(`queueUrl`) && length(`queueUrl`) == 1)) {
          stop(paste("Error! Invalid data for `queueUrl`. Must be a string:", `queueUrl`))
        }
        self$`queueUrl` <- `queueUrl`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DeliveryTargetAwsSqsQueue in JSON format
    #' @export
    toJSON = function() {
      DeliveryTargetAwsSqsQueueObject <- list()
      if (!is.null(self$`queueUrl`)) {
        DeliveryTargetAwsSqsQueueObject[["queueUrl"]] <-
          self$`queueUrl`
      }
      DeliveryTargetAwsSqsQueueObject
    },
    #' Deserialize JSON string into an instance of DeliveryTargetAwsSqsQueue
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeliveryTargetAwsSqsQueue
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryTargetAwsSqsQueue
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`queueUrl`)) {
        self$`queueUrl` <- this_object$`queueUrl`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DeliveryTargetAwsSqsQueue in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`queueUrl`)) {
          sprintf(
          '"queueUrl":
            "%s"
                    ',
          self$`queueUrl`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DeliveryTargetAwsSqsQueue
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeliveryTargetAwsSqsQueue
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryTargetAwsSqsQueue
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`queueUrl` <- this_object$`queueUrl`
      self
    },
    #' Validate JSON input with respect to DeliveryTargetAwsSqsQueue
    #'
    #' @description
    #' Validate JSON input with respect to DeliveryTargetAwsSqsQueue and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `queueUrl`
      if (!is.null(input_json$`queueUrl`)) {
        if (!(is.character(input_json$`queueUrl`) && length(input_json$`queueUrl`) == 1)) {
          stop(paste("Error! Invalid data for `queueUrl`. Must be a string:", input_json$`queueUrl`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryTargetAwsSqsQueue: the required field `queueUrl` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeliveryTargetAwsSqsQueue
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
      # check if the required `queueUrl` is null
      if (is.null(self$`queueUrl`)) {
        return(FALSE)
      }

      if (nchar(self$`queueUrl`) < 1) {
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
      # check if the required `queueUrl` is null
      if (is.null(self$`queueUrl`)) {
        invalid_fields["queueUrl"] <- "Non-nullable required field `queueUrl` cannot be null."
      }

      if (nchar(self$`queueUrl`) < 1) {
        invalid_fields["queueUrl"] <- "Invalid length for `queueUrl`, must be bigger than or equal to 1."
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
# DeliveryTargetAwsSqsQueue$unlock()
#
## Below is an example to define the print function
# DeliveryTargetAwsSqsQueue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeliveryTargetAwsSqsQueue$lock()

