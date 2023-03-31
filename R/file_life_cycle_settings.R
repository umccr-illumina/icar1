#' Create a new FileLifeCycleSettings
#'
#' @description
#' FileLifeCycleSettings Class
#'
#' @docType class
#' @title FileLifeCycleSettings
#' @description FileLifeCycleSettings Class
#' @format An \code{R6Class} generator object
#' @field timeGracePeriodEnds If set, date when billing for the file will start character [optional]
#' @field timeToBeArchived If set, date when file will be archived character [optional]
#' @field timeToBeDeleted If set, date when file will be deleted character [optional]
#' @field archiveStorageTier  \link{FileArchiveStorageTier} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileLifeCycleSettings <- R6::R6Class(
  "FileLifeCycleSettings",
  public = list(
    `timeGracePeriodEnds` = NULL,
    `timeToBeArchived` = NULL,
    `timeToBeDeleted` = NULL,
    `archiveStorageTier` = NULL,
    #' Initialize a new FileLifeCycleSettings class.
    #'
    #' @description
    #' Initialize a new FileLifeCycleSettings class.
    #'
    #' @param timeGracePeriodEnds If set, date when billing for the file will start
    #' @param timeToBeArchived If set, date when file will be archived
    #' @param timeToBeDeleted If set, date when file will be deleted
    #' @param archiveStorageTier archiveStorageTier
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`timeGracePeriodEnds` = NULL, `timeToBeArchived` = NULL, `timeToBeDeleted` = NULL, `archiveStorageTier` = NULL, ...) {
      if (!is.null(`timeGracePeriodEnds`)) {
        if (!is.character(`timeGracePeriodEnds`)) {
          stop(paste("Error! Invalid data for `timeGracePeriodEnds`. Must be a string:", `timeGracePeriodEnds`))
        }
        self$`timeGracePeriodEnds` <- `timeGracePeriodEnds`
      }
      if (!is.null(`timeToBeArchived`)) {
        if (!is.character(`timeToBeArchived`)) {
          stop(paste("Error! Invalid data for `timeToBeArchived`. Must be a string:", `timeToBeArchived`))
        }
        self$`timeToBeArchived` <- `timeToBeArchived`
      }
      if (!is.null(`timeToBeDeleted`)) {
        if (!is.character(`timeToBeDeleted`)) {
          stop(paste("Error! Invalid data for `timeToBeDeleted`. Must be a string:", `timeToBeDeleted`))
        }
        self$`timeToBeDeleted` <- `timeToBeDeleted`
      }
      if (!is.null(`archiveStorageTier`)) {
        if (!(`archiveStorageTier` %in% c())) {
          stop(paste("Error! \"", `archiveStorageTier`, "\" cannot be assigned to `archiveStorageTier`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`archiveStorageTier`))
        self$`archiveStorageTier` <- `archiveStorageTier`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileLifeCycleSettings in JSON format
    #' @export
    toJSON = function() {
      FileLifeCycleSettingsObject <- list()
      if (!is.null(self$`timeGracePeriodEnds`)) {
        FileLifeCycleSettingsObject[["timeGracePeriodEnds"]] <-
          self$`timeGracePeriodEnds`
      }
      if (!is.null(self$`timeToBeArchived`)) {
        FileLifeCycleSettingsObject[["timeToBeArchived"]] <-
          self$`timeToBeArchived`
      }
      if (!is.null(self$`timeToBeDeleted`)) {
        FileLifeCycleSettingsObject[["timeToBeDeleted"]] <-
          self$`timeToBeDeleted`
      }
      if (!is.null(self$`archiveStorageTier`)) {
        FileLifeCycleSettingsObject[["archiveStorageTier"]] <-
          self$`archiveStorageTier`$toJSON()
      }
      FileLifeCycleSettingsObject
    },
    #' Deserialize JSON string into an instance of FileLifeCycleSettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileLifeCycleSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileLifeCycleSettings
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`timeGracePeriodEnds`)) {
        self$`timeGracePeriodEnds` <- this_object$`timeGracePeriodEnds`
      }
      if (!is.null(this_object$`timeToBeArchived`)) {
        self$`timeToBeArchived` <- this_object$`timeToBeArchived`
      }
      if (!is.null(this_object$`timeToBeDeleted`)) {
        self$`timeToBeDeleted` <- this_object$`timeToBeDeleted`
      }
      if (!is.null(this_object$`archiveStorageTier`)) {
        `archivestoragetier_object` <- FileArchiveStorageTier$new()
        `archivestoragetier_object`$fromJSON(jsonlite::toJSON(this_object$`archiveStorageTier`, auto_unbox = TRUE, digits = NA))
        self$`archiveStorageTier` <- `archivestoragetier_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileLifeCycleSettings in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`timeGracePeriodEnds`)) {
          sprintf(
          '"timeGracePeriodEnds":
            "%s"
                    ',
          self$`timeGracePeriodEnds`
          )
        },
        if (!is.null(self$`timeToBeArchived`)) {
          sprintf(
          '"timeToBeArchived":
            "%s"
                    ',
          self$`timeToBeArchived`
          )
        },
        if (!is.null(self$`timeToBeDeleted`)) {
          sprintf(
          '"timeToBeDeleted":
            "%s"
                    ',
          self$`timeToBeDeleted`
          )
        },
        if (!is.null(self$`archiveStorageTier`)) {
          sprintf(
          '"archiveStorageTier":
          %s
          ',
          jsonlite::toJSON(self$`archiveStorageTier`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FileLifeCycleSettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileLifeCycleSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileLifeCycleSettings
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`timeGracePeriodEnds` <- this_object$`timeGracePeriodEnds`
      self$`timeToBeArchived` <- this_object$`timeToBeArchived`
      self$`timeToBeDeleted` <- this_object$`timeToBeDeleted`
      self$`archiveStorageTier` <- FileArchiveStorageTier$new()$fromJSON(jsonlite::toJSON(this_object$`archiveStorageTier`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FileLifeCycleSettings
    #'
    #' @description
    #' Validate JSON input with respect to FileLifeCycleSettings and throw an exception if invalid
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
    #' @return String representation of FileLifeCycleSettings
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
# FileLifeCycleSettings$unlock()
#
## Below is an example to define the print function
# FileLifeCycleSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FileLifeCycleSettings$lock()

