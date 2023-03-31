#' Create a new DeliveryTargetAwsSnsTopic
#'
#' @description
#' Configuration for an AWS SNS delivery topic
#'
#' @docType class
#' @title DeliveryTargetAwsSnsTopic
#' @description DeliveryTargetAwsSnsTopic Class
#' @format An \code{R6Class} generator object
#' @field topicArn ARN for the AWS SNS topic character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeliveryTargetAwsSnsTopic <- R6::R6Class(
  "DeliveryTargetAwsSnsTopic",
  public = list(
    `topicArn` = NULL,
    #' Initialize a new DeliveryTargetAwsSnsTopic class.
    #'
    #' @description
    #' Initialize a new DeliveryTargetAwsSnsTopic class.
    #'
    #' @param topicArn ARN for the AWS SNS topic
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`topicArn`, ...) {
      if (!missing(`topicArn`)) {
        if (!(is.character(`topicArn`) && length(`topicArn`) == 1)) {
          stop(paste("Error! Invalid data for `topicArn`. Must be a string:", `topicArn`))
        }
        self$`topicArn` <- `topicArn`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DeliveryTargetAwsSnsTopic in JSON format
    #' @export
    toJSON = function() {
      DeliveryTargetAwsSnsTopicObject <- list()
      if (!is.null(self$`topicArn`)) {
        DeliveryTargetAwsSnsTopicObject[["topicArn"]] <-
          self$`topicArn`
      }
      DeliveryTargetAwsSnsTopicObject
    },
    #' Deserialize JSON string into an instance of DeliveryTargetAwsSnsTopic
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeliveryTargetAwsSnsTopic
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryTargetAwsSnsTopic
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`topicArn`)) {
        self$`topicArn` <- this_object$`topicArn`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DeliveryTargetAwsSnsTopic in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`topicArn`)) {
          sprintf(
          '"topicArn":
            "%s"
                    ',
          self$`topicArn`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DeliveryTargetAwsSnsTopic
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeliveryTargetAwsSnsTopic
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryTargetAwsSnsTopic
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`topicArn` <- this_object$`topicArn`
      self
    },
    #' Validate JSON input with respect to DeliveryTargetAwsSnsTopic
    #'
    #' @description
    #' Validate JSON input with respect to DeliveryTargetAwsSnsTopic and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `topicArn`
      if (!is.null(input_json$`topicArn`)) {
        if (!(is.character(input_json$`topicArn`) && length(input_json$`topicArn`) == 1)) {
          stop(paste("Error! Invalid data for `topicArn`. Must be a string:", input_json$`topicArn`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryTargetAwsSnsTopic: the required field `topicArn` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeliveryTargetAwsSnsTopic
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
      # check if the required `topicArn` is null
      if (is.null(self$`topicArn`)) {
        return(FALSE)
      }

      if (nchar(self$`topicArn`) < 1) {
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
      # check if the required `topicArn` is null
      if (is.null(self$`topicArn`)) {
        invalid_fields["topicArn"] <- "Non-nullable required field `topicArn` cannot be null."
      }

      if (nchar(self$`topicArn`) < 1) {
        invalid_fields["topicArn"] <- "Invalid length for `topicArn`, must be bigger than or equal to 1."
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
# DeliveryTargetAwsSnsTopic$unlock()
#
## Below is an example to define the print function
# DeliveryTargetAwsSnsTopic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeliveryTargetAwsSnsTopic$lock()

