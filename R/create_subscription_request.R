#' Create a new CreateSubscriptionRequest
#'
#' @description
#' CreateSubscriptionRequest Class
#'
#' @docType class
#' @title CreateSubscriptionRequest
#' @description CreateSubscriptionRequest Class
#' @format An \code{R6Class} generator object
#' @field type Event type which will be subscribed to character
#' @field actions Actions which will be subscribed to for the event type list(character) [optional]
#' @field name Name of the subscription character
#' @field description Optional description for the subscription character [optional]
#' @field filterExpression JSON-structured filter expression for events matching the subscription character [optional]
#' @field deliveryTarget  \link{DeliveryTarget}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateSubscriptionRequest <- R6::R6Class(
  "CreateSubscriptionRequest",
  public = list(
    `type` = NULL,
    `actions` = NULL,
    `name` = NULL,
    `description` = NULL,
    `filterExpression` = NULL,
    `deliveryTarget` = NULL,
    #' Initialize a new CreateSubscriptionRequest class.
    #'
    #' @description
    #' Initialize a new CreateSubscriptionRequest class.
    #'
    #' @param type Event type which will be subscribed to
    #' @param name Name of the subscription
    #' @param deliveryTarget deliveryTarget
    #' @param actions Actions which will be subscribed to for the event type
    #' @param description Optional description for the subscription
    #' @param filterExpression JSON-structured filter expression for events matching the subscription
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type`, `name`, `deliveryTarget`, `actions` = NULL, `description` = NULL, `filterExpression` = NULL, ...) {
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`deliveryTarget`)) {
        stopifnot(R6::is.R6(`deliveryTarget`))
        self$`deliveryTarget` <- `deliveryTarget`
      }
      if (!is.null(`actions`)) {
        stopifnot(is.vector(`actions`), length(`actions`) != 0)
        sapply(`actions`, function(x) stopifnot(is.character(x)))
        self$`actions` <- `actions`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`filterExpression`)) {
        if (!(is.character(`filterExpression`) && length(`filterExpression`) == 1)) {
          stop(paste("Error! Invalid data for `filterExpression`. Must be a string:", `filterExpression`))
        }
        self$`filterExpression` <- `filterExpression`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateSubscriptionRequest in JSON format
    #' @export
    toJSON = function() {
      CreateSubscriptionRequestObject <- list()
      if (!is.null(self$`type`)) {
        CreateSubscriptionRequestObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`actions`)) {
        CreateSubscriptionRequestObject[["actions"]] <-
          self$`actions`
      }
      if (!is.null(self$`name`)) {
        CreateSubscriptionRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        CreateSubscriptionRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`filterExpression`)) {
        CreateSubscriptionRequestObject[["filterExpression"]] <-
          self$`filterExpression`
      }
      if (!is.null(self$`deliveryTarget`)) {
        CreateSubscriptionRequestObject[["deliveryTarget"]] <-
          self$`deliveryTarget`$toJSON()
      }
      CreateSubscriptionRequestObject
    },
    #' Deserialize JSON string into an instance of CreateSubscriptionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateSubscriptionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateSubscriptionRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`actions`)) {
        self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`filterExpression`)) {
        self$`filterExpression` <- this_object$`filterExpression`
      }
      if (!is.null(this_object$`deliveryTarget`)) {
        `deliverytarget_object` <- DeliveryTarget$new()
        `deliverytarget_object`$fromJSON(jsonlite::toJSON(this_object$`deliveryTarget`, auto_unbox = TRUE, digits = NA))
        self$`deliveryTarget` <- `deliverytarget_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateSubscriptionRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`actions`)) {
          sprintf(
          '"actions":
             [%s]
          ',
          paste(unlist(lapply(self$`actions`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`filterExpression`)) {
          sprintf(
          '"filterExpression":
            "%s"
                    ',
          self$`filterExpression`
          )
        },
        if (!is.null(self$`deliveryTarget`)) {
          sprintf(
          '"deliveryTarget":
          %s
          ',
          jsonlite::toJSON(self$`deliveryTarget`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateSubscriptionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateSubscriptionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateSubscriptionRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[character]", loadNamespace("icar1"))
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`filterExpression` <- this_object$`filterExpression`
      self$`deliveryTarget` <- DeliveryTarget$new()$fromJSON(jsonlite::toJSON(this_object$`deliveryTarget`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to CreateSubscriptionRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateSubscriptionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateSubscriptionRequest: the required field `type` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateSubscriptionRequest: the required field `name` is missing."))
      }
      # check the required field `deliveryTarget`
      if (!is.null(input_json$`deliveryTarget`)) {
        stopifnot(R6::is.R6(input_json$`deliveryTarget`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateSubscriptionRequest: the required field `deliveryTarget` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateSubscriptionRequest
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
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      if (nchar(self$`type`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`type`) < 1) {
        return(FALSE)
      }
      if (!str_detect(self$`type`, "^[a-zA-Z]+[.a-zA-Z]*$")) {
        return(FALSE)
      }

      if (length(self$`actions`) > 255) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 1) {
        return(FALSE)
      }
      if (!str_detect(self$`name`, "^[a-zA-Z0-9]+[a-zA-Z0-9_-]*$")) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 8192) {
        return(FALSE)
      }

      if (nchar(self$`filterExpression`) > 8192) {
        return(FALSE)
      }

      # check if the required `deliveryTarget` is null
      if (is.null(self$`deliveryTarget`)) {
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
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      if (nchar(self$`type`) > 255) {
        invalid_fields["type"] <- "Invalid length for `type`, must be smaller than or equal to 255."
      }
      if (nchar(self$`type`) < 1) {
        invalid_fields["type"] <- "Invalid length for `type`, must be bigger than or equal to 1."
      }
      if (!str_detect(self$`type`, "^[a-zA-Z]+[.a-zA-Z]*$")) {
        invalid_fields["type"] <- "Invalid value for `type`, must conform to the pattern ^[a-zA-Z]+[.a-zA-Z]*$."
      }

      if (length(self$`actions`) > 255) {
        invalid_fields["actions"] <- "Invalid length for `actions`, number of items must be less than or equal to 255."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }
      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
      }
      if (!str_detect(self$`name`, "^[a-zA-Z0-9]+[a-zA-Z0-9_-]*$")) {
        invalid_fields["name"] <- "Invalid value for `name`, must conform to the pattern ^[a-zA-Z0-9]+[a-zA-Z0-9_-]*$."
      }

      if (nchar(self$`description`) > 8192) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 8192."
      }

      if (nchar(self$`filterExpression`) > 8192) {
        invalid_fields["filterExpression"] <- "Invalid length for `filterExpression`, must be smaller than or equal to 8192."
      }

      # check if the required `deliveryTarget` is null
      if (is.null(self$`deliveryTarget`)) {
        invalid_fields["deliveryTarget"] <- "Non-nullable required field `deliveryTarget` cannot be null."
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
# CreateSubscriptionRequest$unlock()
#
## Below is an example to define the print function
# CreateSubscriptionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateSubscriptionRequest$lock()

