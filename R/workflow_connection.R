#' Create a new WorkflowConnection
#'
#' @description
#' Defines a connection that can be used in a workflow definition to perform actions
#'
#' @docType class
#' @title WorkflowConnection
#' @description WorkflowConnection Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field type Type of the connection: PlatformJwt, ApiBearerToken, AwsCredentials, ApiCustomAuthentication, BsshOAuthV2 character [optional]
#' @field host For API based connections, the Host part of the API endpoint character [optional]
#' @field hostValidationRegex Regex that hosts associated with this connection must meet (when host override by each run is allowed) character [optional]
#' @field credentials Credentials associated with the connection. Format depends on type of connection. character [optional]
#' @field options Comma separated list of options associated with the connection: CredentialsRequired, AllowCredentialsOverride, AutoDisableCredentialsAfterUse, AllowHostOverride character [optional]
#' @field autoDisableUrl Relative URL (relative to Host) to call in order to disable the credentials character [optional]
#' @field autoDisableHttpMethod Http method to use to disable the credentials. Must be POST, PUT or DELETE character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkflowConnection <- R6::R6Class(
  "WorkflowConnection",
  public = list(
    `name` = NULL,
    `type` = NULL,
    `host` = NULL,
    `hostValidationRegex` = NULL,
    `credentials` = NULL,
    `options` = NULL,
    `autoDisableUrl` = NULL,
    `autoDisableHttpMethod` = NULL,
    #' Initialize a new WorkflowConnection class.
    #'
    #' @description
    #' Initialize a new WorkflowConnection class.
    #'
    #' @param name name
    #' @param type Type of the connection: PlatformJwt, ApiBearerToken, AwsCredentials, ApiCustomAuthentication, BsshOAuthV2
    #' @param host For API based connections, the Host part of the API endpoint
    #' @param hostValidationRegex Regex that hosts associated with this connection must meet (when host override by each run is allowed)
    #' @param credentials Credentials associated with the connection. Format depends on type of connection.
    #' @param options Comma separated list of options associated with the connection: CredentialsRequired, AllowCredentialsOverride, AutoDisableCredentialsAfterUse, AllowHostOverride
    #' @param autoDisableUrl Relative URL (relative to Host) to call in order to disable the credentials
    #' @param autoDisableHttpMethod Http method to use to disable the credentials. Must be POST, PUT or DELETE
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `type` = NULL, `host` = NULL, `hostValidationRegex` = NULL, `credentials` = NULL, `options` = NULL, `autoDisableUrl` = NULL, `autoDisableHttpMethod` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`host`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `host`. Must be a URL:", `host`))
        }
        self$`host` <- `host`
      }
      if (!is.null(`hostValidationRegex`)) {
        if (!(is.character(`hostValidationRegex`) && length(`hostValidationRegex`) == 1)) {
          stop(paste("Error! Invalid data for `hostValidationRegex`. Must be a string:", `hostValidationRegex`))
        }
        self$`hostValidationRegex` <- `hostValidationRegex`
      }
      if (!is.null(`credentials`)) {
        if (!(is.character(`credentials`) && length(`credentials`) == 1)) {
          stop(paste("Error! Invalid data for `credentials`. Must be a string:", `credentials`))
        }
        self$`credentials` <- `credentials`
      }
      if (!is.null(`options`)) {
        if (!(is.character(`options`) && length(`options`) == 1)) {
          stop(paste("Error! Invalid data for `options`. Must be a string:", `options`))
        }
        self$`options` <- `options`
      }
      if (!is.null(`autoDisableUrl`)) {
        if (!(is.character(`autoDisableUrl`) && length(`autoDisableUrl`) == 1)) {
          stop(paste("Error! Invalid data for `autoDisableUrl`. Must be a string:", `autoDisableUrl`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`autoDisableUrl`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `autoDisableUrl`. Must be a URL:", `autoDisableUrl`))
        }
        self$`autoDisableUrl` <- `autoDisableUrl`
      }
      if (!is.null(`autoDisableHttpMethod`)) {
        if (!(is.character(`autoDisableHttpMethod`) && length(`autoDisableHttpMethod`) == 1)) {
          stop(paste("Error! Invalid data for `autoDisableHttpMethod`. Must be a string:", `autoDisableHttpMethod`))
        }
        self$`autoDisableHttpMethod` <- `autoDisableHttpMethod`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkflowConnection in JSON format
    #' @export
    toJSON = function() {
      WorkflowConnectionObject <- list()
      if (!is.null(self$`name`)) {
        WorkflowConnectionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`type`)) {
        WorkflowConnectionObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`host`)) {
        WorkflowConnectionObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`hostValidationRegex`)) {
        WorkflowConnectionObject[["hostValidationRegex"]] <-
          self$`hostValidationRegex`
      }
      if (!is.null(self$`credentials`)) {
        WorkflowConnectionObject[["credentials"]] <-
          self$`credentials`
      }
      if (!is.null(self$`options`)) {
        WorkflowConnectionObject[["options"]] <-
          self$`options`
      }
      if (!is.null(self$`autoDisableUrl`)) {
        WorkflowConnectionObject[["autoDisableUrl"]] <-
          self$`autoDisableUrl`
      }
      if (!is.null(self$`autoDisableHttpMethod`)) {
        WorkflowConnectionObject[["autoDisableHttpMethod"]] <-
          self$`autoDisableHttpMethod`
      }
      WorkflowConnectionObject
    },
    #' Deserialize JSON string into an instance of WorkflowConnection
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowConnection
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowConnection
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`host`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`host`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `host`. Must be a URL:", this_object$`host`))
        }
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`hostValidationRegex`)) {
        self$`hostValidationRegex` <- this_object$`hostValidationRegex`
      }
      if (!is.null(this_object$`credentials`)) {
        self$`credentials` <- this_object$`credentials`
      }
      if (!is.null(this_object$`options`)) {
        self$`options` <- this_object$`options`
      }
      if (!is.null(this_object$`autoDisableUrl`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`autoDisableUrl`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `autoDisableUrl`. Must be a URL:", this_object$`autoDisableUrl`))
        }
        self$`autoDisableUrl` <- this_object$`autoDisableUrl`
      }
      if (!is.null(this_object$`autoDisableHttpMethod`)) {
        self$`autoDisableHttpMethod` <- this_object$`autoDisableHttpMethod`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return WorkflowConnection in JSON format
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
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`host`)) {
          sprintf(
          '"host":
            "%s"
                    ',
          self$`host`
          )
        },
        if (!is.null(self$`hostValidationRegex`)) {
          sprintf(
          '"hostValidationRegex":
            "%s"
                    ',
          self$`hostValidationRegex`
          )
        },
        if (!is.null(self$`credentials`)) {
          sprintf(
          '"credentials":
            "%s"
                    ',
          self$`credentials`
          )
        },
        if (!is.null(self$`options`)) {
          sprintf(
          '"options":
            "%s"
                    ',
          self$`options`
          )
        },
        if (!is.null(self$`autoDisableUrl`)) {
          sprintf(
          '"autoDisableUrl":
            "%s"
                    ',
          self$`autoDisableUrl`
          )
        },
        if (!is.null(self$`autoDisableHttpMethod`)) {
          sprintf(
          '"autoDisableHttpMethod":
            "%s"
                    ',
          self$`autoDisableHttpMethod`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of WorkflowConnection
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowConnection
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowConnection
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`type` <- this_object$`type`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`host`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `host`. Must be a URL:", this_object$`host`))
      }
      self$`host` <- this_object$`host`
      self$`hostValidationRegex` <- this_object$`hostValidationRegex`
      self$`credentials` <- this_object$`credentials`
      self$`options` <- this_object$`options`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`autoDisableUrl`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `autoDisableUrl`. Must be a URL:", this_object$`autoDisableUrl`))
      }
      self$`autoDisableUrl` <- this_object$`autoDisableUrl`
      self$`autoDisableHttpMethod` <- this_object$`autoDisableHttpMethod`
      self
    },
    #' Validate JSON input with respect to WorkflowConnection
    #'
    #' @description
    #' Validate JSON input with respect to WorkflowConnection and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkflowConnection: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WorkflowConnection
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 128) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`host`) > 1024) {
        return(FALSE)
      }
      if (nchar(self$`host`) < 0) {
        return(FALSE)
      }
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(self$`host`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        return(FALSE)
      }

      if (nchar(self$`hostValidationRegex`) > 100) {
        return(FALSE)
      }
      if (nchar(self$`hostValidationRegex`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`autoDisableUrl`) > 1024) {
        return(FALSE)
      }
      if (nchar(self$`autoDisableUrl`) < 0) {
        return(FALSE)
      }
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(self$`autoDisableUrl`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        return(FALSE)
      }

      if (nchar(self$`autoDisableHttpMethod`) > 10) {
        return(FALSE)
      }
      if (nchar(self$`autoDisableHttpMethod`) < 0) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 128) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 128."
      }
      if (nchar(self$`name`) < 0) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 0."
      }

      if (nchar(self$`host`) > 1024) {
        invalid_fields["host"] <- "Invalid length for `host`, must be smaller than or equal to 1024."
      }
      if (nchar(self$`host`) < 0) {
        invalid_fields["host"] <- "Invalid length for `host`, must be bigger than or equal to 0."
      }
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(self$`host`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        invalid_fields["host"] <- "Invalid value for `host`, must be URL."
      }

      if (nchar(self$`hostValidationRegex`) > 100) {
        invalid_fields["hostValidationRegex"] <- "Invalid length for `hostValidationRegex`, must be smaller than or equal to 100."
      }
      if (nchar(self$`hostValidationRegex`) < 0) {
        invalid_fields["hostValidationRegex"] <- "Invalid length for `hostValidationRegex`, must be bigger than or equal to 0."
      }

      if (nchar(self$`autoDisableUrl`) > 1024) {
        invalid_fields["autoDisableUrl"] <- "Invalid length for `autoDisableUrl`, must be smaller than or equal to 1024."
      }
      if (nchar(self$`autoDisableUrl`) < 0) {
        invalid_fields["autoDisableUrl"] <- "Invalid length for `autoDisableUrl`, must be bigger than or equal to 0."
      }
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(self$`autoDisableUrl`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        invalid_fields["autoDisableUrl"] <- "Invalid value for `autoDisableUrl`, must be URL."
      }

      if (nchar(self$`autoDisableHttpMethod`) > 10) {
        invalid_fields["autoDisableHttpMethod"] <- "Invalid length for `autoDisableHttpMethod`, must be smaller than or equal to 10."
      }
      if (nchar(self$`autoDisableHttpMethod`) < 0) {
        invalid_fields["autoDisableHttpMethod"] <- "Invalid length for `autoDisableHttpMethod`, must be bigger than or equal to 0."
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
# WorkflowConnection$unlock()
#
## Below is an example to define the print function
# WorkflowConnection$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkflowConnection$lock()

