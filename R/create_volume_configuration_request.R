#' Create a new CreateVolumeConfigurationRequest
#'
#' @description
#' CreateVolumeConfigurationRequest Class
#'
#' @docType class
#' @title CreateVolumeConfigurationRequest
#' @description CreateVolumeConfigurationRequest Class
#' @format An \code{R6Class} generator object
#' @field name Name for the volume configuration character
#' @field versioningEnabled Versioning Enabled or Suspended for the ObjectContainer character [optional]
#' @field objectStoreSettings  \link{ObjectStoreSettings}
#' @field restoreType  \link{RestoreType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateVolumeConfigurationRequest <- R6::R6Class(
  "CreateVolumeConfigurationRequest",
  public = list(
    `name` = NULL,
    `versioningEnabled` = NULL,
    `objectStoreSettings` = NULL,
    `restoreType` = NULL,
    #' Initialize a new CreateVolumeConfigurationRequest class.
    #'
    #' @description
    #' Initialize a new CreateVolumeConfigurationRequest class.
    #'
    #' @param name Name for the volume configuration
    #' @param objectStoreSettings objectStoreSettings
    #' @param versioningEnabled Versioning Enabled or Suspended for the ObjectContainer
    #' @param restoreType restoreType
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `objectStoreSettings`, `versioningEnabled` = NULL, `restoreType` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`objectStoreSettings`)) {
        stopifnot(R6::is.R6(`objectStoreSettings`))
        self$`objectStoreSettings` <- `objectStoreSettings`
      }
      if (!is.null(`versioningEnabled`)) {
        if (!(is.logical(`versioningEnabled`) && length(`versioningEnabled`) == 1)) {
          stop(paste("Error! Invalid data for `versioningEnabled`. Must be a boolean:", `versioningEnabled`))
        }
        self$`versioningEnabled` <- `versioningEnabled`
      }
      if (!is.null(`restoreType`)) {
        if (!(`restoreType` %in% c())) {
          stop(paste("Error! \"", `restoreType`, "\" cannot be assigned to `restoreType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`restoreType`))
        self$`restoreType` <- `restoreType`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateVolumeConfigurationRequest in JSON format
    #' @export
    toJSON = function() {
      CreateVolumeConfigurationRequestObject <- list()
      if (!is.null(self$`name`)) {
        CreateVolumeConfigurationRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`versioningEnabled`)) {
        CreateVolumeConfigurationRequestObject[["versioningEnabled"]] <-
          self$`versioningEnabled`
      }
      if (!is.null(self$`objectStoreSettings`)) {
        CreateVolumeConfigurationRequestObject[["objectStoreSettings"]] <-
          self$`objectStoreSettings`$toJSON()
      }
      if (!is.null(self$`restoreType`)) {
        CreateVolumeConfigurationRequestObject[["restoreType"]] <-
          self$`restoreType`$toJSON()
      }
      CreateVolumeConfigurationRequestObject
    },
    #' Deserialize JSON string into an instance of CreateVolumeConfigurationRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateVolumeConfigurationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateVolumeConfigurationRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`versioningEnabled`)) {
        self$`versioningEnabled` <- this_object$`versioningEnabled`
      }
      if (!is.null(this_object$`objectStoreSettings`)) {
        `objectstoresettings_object` <- ObjectStoreSettings$new()
        `objectstoresettings_object`$fromJSON(jsonlite::toJSON(this_object$`objectStoreSettings`, auto_unbox = TRUE, digits = NA))
        self$`objectStoreSettings` <- `objectstoresettings_object`
      }
      if (!is.null(this_object$`restoreType`)) {
        `restoretype_object` <- RestoreType$new()
        `restoretype_object`$fromJSON(jsonlite::toJSON(this_object$`restoreType`, auto_unbox = TRUE, digits = NA))
        self$`restoreType` <- `restoretype_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateVolumeConfigurationRequest in JSON format
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
        if (!is.null(self$`versioningEnabled`)) {
          sprintf(
          '"versioningEnabled":
            %s
                    ',
          tolower(self$`versioningEnabled`)
          )
        },
        if (!is.null(self$`objectStoreSettings`)) {
          sprintf(
          '"objectStoreSettings":
          %s
          ',
          jsonlite::toJSON(self$`objectStoreSettings`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`restoreType`)) {
          sprintf(
          '"restoreType":
          %s
          ',
          jsonlite::toJSON(self$`restoreType`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateVolumeConfigurationRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateVolumeConfigurationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateVolumeConfigurationRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`versioningEnabled` <- this_object$`versioningEnabled`
      self$`objectStoreSettings` <- ObjectStoreSettings$new()$fromJSON(jsonlite::toJSON(this_object$`objectStoreSettings`, auto_unbox = TRUE, digits = NA))
      self$`restoreType` <- RestoreType$new()$fromJSON(jsonlite::toJSON(this_object$`restoreType`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to CreateVolumeConfigurationRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateVolumeConfigurationRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateVolumeConfigurationRequest: the required field `name` is missing."))
      }
      # check the required field `objectStoreSettings`
      if (!is.null(input_json$`objectStoreSettings`)) {
        stopifnot(R6::is.R6(input_json$`objectStoreSettings`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateVolumeConfigurationRequest: the required field `objectStoreSettings` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateVolumeConfigurationRequest
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

      # check if the required `objectStoreSettings` is null
      if (is.null(self$`objectStoreSettings`)) {
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

      # check if the required `objectStoreSettings` is null
      if (is.null(self$`objectStoreSettings`)) {
        invalid_fields["objectStoreSettings"] <- "Non-nullable required field `objectStoreSettings` cannot be null."
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
# CreateVolumeConfigurationRequest$unlock()
#
## Below is an example to define the print function
# CreateVolumeConfigurationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateVolumeConfigurationRequest$lock()

