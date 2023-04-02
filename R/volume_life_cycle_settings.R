#' Create a new VolumeLifeCycleSettings
#'
#' @description
#' VolumeLifeCycleSettings Class
#'
#' @docType class
#' @title VolumeLifeCycleSettings
#' @description VolumeLifeCycleSettings Class
#' @format An \code{R6Class} generator object
#' @field gracePeriodDays Number of days before the files associated to this volume expires integer [optional]
#' @field gracePeriodEndAction  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VolumeLifeCycleSettings <- R6::R6Class(
  "VolumeLifeCycleSettings",
  public = list(
    `gracePeriodDays` = NULL,
    `gracePeriodEndAction` = NULL,
    #' Initialize a new VolumeLifeCycleSettings class.
    #'
    #' @description
    #' Initialize a new VolumeLifeCycleSettings class.
    #'
    #' @param gracePeriodDays Number of days before the files associated to this volume expires
    #' @param gracePeriodEndAction gracePeriodEndAction
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`gracePeriodDays` = NULL, `gracePeriodEndAction` = NULL, ...) {
      if (!is.null(`gracePeriodDays`)) {
        if (!(is.numeric(`gracePeriodDays`) && length(`gracePeriodDays`) == 1)) {
          stop(paste("Error! Invalid data for `gracePeriodDays`. Must be an integer:", `gracePeriodDays`))
        }
        self$`gracePeriodDays` <- `gracePeriodDays`
      }
      if (!is.null(`gracePeriodEndAction`)) {
        if (!(is.character(`gracePeriodEndAction`) && length(`gracePeriodEndAction`) == 1)) {
          stop(paste("Error! Invalid data for `gracePeriodEndAction`. Must be a string:", `gracePeriodEndAction`))
        }
        self$`gracePeriodEndAction` <- `gracePeriodEndAction`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VolumeLifeCycleSettings in JSON format
    #' @export
    toJSON = function() {
      VolumeLifeCycleSettingsObject <- list()
      if (!is.null(self$`gracePeriodDays`)) {
        VolumeLifeCycleSettingsObject[["gracePeriodDays"]] <-
          self$`gracePeriodDays`
      }
      if (!is.null(self$`gracePeriodEndAction`)) {
        VolumeLifeCycleSettingsObject[["gracePeriodEndAction"]] <-
          self$`gracePeriodEndAction`
      }
      VolumeLifeCycleSettingsObject
    },
    #' Deserialize JSON string into an instance of VolumeLifeCycleSettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeLifeCycleSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeLifeCycleSettings
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gracePeriodDays`)) {
        self$`gracePeriodDays` <- this_object$`gracePeriodDays`
      }
      if (!is.null(this_object$`gracePeriodEndAction`)) {
        self$`gracePeriodEndAction` <- this_object$`gracePeriodEndAction`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VolumeLifeCycleSettings in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`gracePeriodDays`)) {
          sprintf(
          '"gracePeriodDays":
            %d
                    ',
          self$`gracePeriodDays`
          )
        },
        if (!is.null(self$`gracePeriodEndAction`)) {
          sprintf(
          '"gracePeriodEndAction":
            "%s"
                    ',
          self$`gracePeriodEndAction`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of VolumeLifeCycleSettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeLifeCycleSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeLifeCycleSettings
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gracePeriodDays` <- this_object$`gracePeriodDays`
      self$`gracePeriodEndAction` <- this_object$`gracePeriodEndAction`
      self
    },
    #' Validate JSON input with respect to VolumeLifeCycleSettings
    #'
    #' @description
    #' Validate JSON input with respect to VolumeLifeCycleSettings and throw an exception if invalid
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
    #' @return String representation of VolumeLifeCycleSettings
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
# VolumeLifeCycleSettings$unlock()
#
## Below is an example to define the print function
# VolumeLifeCycleSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VolumeLifeCycleSettings$lock()

