#' Create a new CreateVolumeRequest
#'
#' @description
#' CreateVolumeRequest Class
#'
#' @docType class
#' @title CreateVolumeRequest
#' @description CreateVolumeRequest Class
#' @format An \code{R6Class} generator object
#' @field name Name for the volume character
#' @field volumeConfigurationName Unique name of the volume configuration to use character [optional]
#' @field rootKeyPrefix The base bucket location for volumes associated with custom VolumeConfigurations. If not provided, the given volume Name is used.  If provided, it must start with the VolumeConfiguration's keyprefix and end with a /.  To create a volume representing the root of a bucket, use the value '/'. character [optional]
#' @field metadata Metadata about this volume and its contents object [optional]
#' @field lifeCycle  \link{VolumeLifeCycleSettings} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateVolumeRequest <- R6::R6Class(
  "CreateVolumeRequest",
  public = list(
    `name` = NULL,
    `volumeConfigurationName` = NULL,
    `rootKeyPrefix` = NULL,
    `metadata` = NULL,
    `lifeCycle` = NULL,
    #' Initialize a new CreateVolumeRequest class.
    #'
    #' @description
    #' Initialize a new CreateVolumeRequest class.
    #'
    #' @param name Name for the volume
    #' @param volumeConfigurationName Unique name of the volume configuration to use
    #' @param rootKeyPrefix The base bucket location for volumes associated with custom VolumeConfigurations. If not provided, the given volume Name is used.  If provided, it must start with the VolumeConfiguration's keyprefix and end with a /.  To create a volume representing the root of a bucket, use the value '/'.
    #' @param metadata Metadata about this volume and its contents
    #' @param lifeCycle lifeCycle
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `volumeConfigurationName` = NULL, `rootKeyPrefix` = NULL, `metadata` = NULL, `lifeCycle` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`volumeConfigurationName`)) {
        if (!(is.character(`volumeConfigurationName`) && length(`volumeConfigurationName`) == 1)) {
          stop(paste("Error! Invalid data for `volumeConfigurationName`. Must be a string:", `volumeConfigurationName`))
        }
        self$`volumeConfigurationName` <- `volumeConfigurationName`
      }
      if (!is.null(`rootKeyPrefix`)) {
        if (!(is.character(`rootKeyPrefix`) && length(`rootKeyPrefix`) == 1)) {
          stop(paste("Error! Invalid data for `rootKeyPrefix`. Must be a string:", `rootKeyPrefix`))
        }
        self$`rootKeyPrefix` <- `rootKeyPrefix`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
      if (!is.null(`lifeCycle`)) {
        stopifnot(R6::is.R6(`lifeCycle`))
        self$`lifeCycle` <- `lifeCycle`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateVolumeRequest in JSON format
    #' @export
    toJSON = function() {
      CreateVolumeRequestObject <- list()
      if (!is.null(self$`name`)) {
        CreateVolumeRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`volumeConfigurationName`)) {
        CreateVolumeRequestObject[["volumeConfigurationName"]] <-
          self$`volumeConfigurationName`
      }
      if (!is.null(self$`rootKeyPrefix`)) {
        CreateVolumeRequestObject[["rootKeyPrefix"]] <-
          self$`rootKeyPrefix`
      }
      if (!is.null(self$`metadata`)) {
        CreateVolumeRequestObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`lifeCycle`)) {
        CreateVolumeRequestObject[["lifeCycle"]] <-
          self$`lifeCycle`$toJSON()
      }
      CreateVolumeRequestObject
    },
    #' Deserialize JSON string into an instance of CreateVolumeRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateVolumeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateVolumeRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`volumeConfigurationName`)) {
        self$`volumeConfigurationName` <- this_object$`volumeConfigurationName`
      }
      if (!is.null(this_object$`rootKeyPrefix`)) {
        self$`rootKeyPrefix` <- this_object$`rootKeyPrefix`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`lifeCycle`)) {
        `lifecycle_object` <- VolumeLifeCycleSettings$new()
        `lifecycle_object`$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
        self$`lifeCycle` <- `lifecycle_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateVolumeRequest in JSON format
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
        if (!is.null(self$`volumeConfigurationName`)) {
          sprintf(
          '"volumeConfigurationName":
            "%s"
                    ',
          self$`volumeConfigurationName`
          )
        },
        if (!is.null(self$`rootKeyPrefix`)) {
          sprintf(
          '"rootKeyPrefix":
            "%s"
                    ',
          self$`rootKeyPrefix`
          )
        },
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
            "%s"
                    ',
          self$`metadata`
          )
        },
        if (!is.null(self$`lifeCycle`)) {
          sprintf(
          '"lifeCycle":
          %s
          ',
          jsonlite::toJSON(self$`lifeCycle`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateVolumeRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateVolumeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateVolumeRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`volumeConfigurationName` <- this_object$`volumeConfigurationName`
      self$`rootKeyPrefix` <- this_object$`rootKeyPrefix`
      self$`metadata` <- this_object$`metadata`
      self$`lifeCycle` <- VolumeLifeCycleSettings$new()$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to CreateVolumeRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateVolumeRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateVolumeRequest: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateVolumeRequest
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

      if (!str_detect(self$`rootKeyPrefix`, "^(/)$|^([^/].*[/])$")) {
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

      if (!str_detect(self$`rootKeyPrefix`, "^(/)$|^([^/].*[/])$")) {
        invalid_fields["rootKeyPrefix"] <- "Invalid value for `rootKeyPrefix`, must conform to the pattern ^(/)$|^([^/].*[/])$."
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
# CreateVolumeRequest$unlock()
#
## Below is an example to define the print function
# CreateVolumeRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateVolumeRequest$lock()

