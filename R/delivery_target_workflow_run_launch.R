#' Create a new DeliveryTargetWorkflowRunLaunch
#'
#' @description
#' Configuration for a delivery via WES workflow run launch
#'
#' @docType class
#' @title DeliveryTargetWorkflowRunLaunch
#' @description DeliveryTargetWorkflowRunLaunch Class
#' @format An \code{R6Class} generator object
#' @field id Id of the workflow to launch character
#' @field version Version of the workflow to launch, for the given id character
#' @field name Name for the workflowRun character
#' @field input Arguments for the workflowRun object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeliveryTargetWorkflowRunLaunch <- R6::R6Class(
  "DeliveryTargetWorkflowRunLaunch",
  public = list(
    `id` = NULL,
    `version` = NULL,
    `name` = NULL,
    `input` = NULL,
    #' Initialize a new DeliveryTargetWorkflowRunLaunch class.
    #'
    #' @description
    #' Initialize a new DeliveryTargetWorkflowRunLaunch class.
    #'
    #' @param id Id of the workflow to launch
    #' @param version Version of the workflow to launch, for the given id
    #' @param name Name for the workflowRun
    #' @param input Arguments for the workflowRun
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id`, `version`, `name`, `input` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`input`)) {
        self$`input` <- `input`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DeliveryTargetWorkflowRunLaunch in JSON format
    #' @export
    toJSON = function() {
      DeliveryTargetWorkflowRunLaunchObject <- list()
      if (!is.null(self$`id`)) {
        DeliveryTargetWorkflowRunLaunchObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`version`)) {
        DeliveryTargetWorkflowRunLaunchObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`name`)) {
        DeliveryTargetWorkflowRunLaunchObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`input`)) {
        DeliveryTargetWorkflowRunLaunchObject[["input"]] <-
          self$`input`
      }
      DeliveryTargetWorkflowRunLaunchObject
    },
    #' Deserialize JSON string into an instance of DeliveryTargetWorkflowRunLaunch
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeliveryTargetWorkflowRunLaunch
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryTargetWorkflowRunLaunch
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`input`)) {
        self$`input` <- this_object$`input`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DeliveryTargetWorkflowRunLaunch in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`version`)) {
          sprintf(
          '"version":
            "%s"
                    ',
          self$`version`
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
        if (!is.null(self$`input`)) {
          sprintf(
          '"input":
            "%s"
                    ',
          self$`input`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DeliveryTargetWorkflowRunLaunch
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeliveryTargetWorkflowRunLaunch
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryTargetWorkflowRunLaunch
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`version` <- this_object$`version`
      self$`name` <- this_object$`name`
      self$`input` <- this_object$`input`
      self
    },
    #' Validate JSON input with respect to DeliveryTargetWorkflowRunLaunch
    #'
    #' @description
    #' Validate JSON input with respect to DeliveryTargetWorkflowRunLaunch and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryTargetWorkflowRunLaunch: the required field `id` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryTargetWorkflowRunLaunch: the required field `version` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryTargetWorkflowRunLaunch: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeliveryTargetWorkflowRunLaunch
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (nchar(self$`id`) < 1) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        return(FALSE)
      }

      if (nchar(self$`version`) < 1) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) < 1) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (nchar(self$`id`) < 1) {
        invalid_fields["id"] <- "Invalid length for `id`, must be bigger than or equal to 1."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
      }

      if (nchar(self$`version`) < 1) {
        invalid_fields["version"] <- "Invalid length for `version`, must be bigger than or equal to 1."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
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
# DeliveryTargetWorkflowRunLaunch$unlock()
#
## Below is an example to define the print function
# DeliveryTargetWorkflowRunLaunch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeliveryTargetWorkflowRunLaunch$lock()

