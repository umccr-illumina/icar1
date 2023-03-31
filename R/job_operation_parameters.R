#' Create a new JobOperationParameters
#'
#' @description
#' Container for XXXOperationParameters objects, which have additional details related to the specific job operation type.  Only one object will be populated.
#'
#' @docType class
#' @title JobOperationParameters
#' @description JobOperationParameters Class
#' @format An \code{R6Class} generator object
#' @field folderCopy  \link{FolderCopyOperationParameters} [optional]
#' @field folderDelete  \link{FolderDeleteOperationParameters} [optional]
#' @field volumeMigration  \link{VolumeMigrationOperationParameters} [optional]
#' @field fileCopy  \link{FileCopyOperationParameters} [optional]
#' @field bulkMetadataUpdate  \link{BulkMetadataUpdateOperationParameters} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobOperationParameters <- R6::R6Class(
  "JobOperationParameters",
  public = list(
    `folderCopy` = NULL,
    `folderDelete` = NULL,
    `volumeMigration` = NULL,
    `fileCopy` = NULL,
    `bulkMetadataUpdate` = NULL,
    #' Initialize a new JobOperationParameters class.
    #'
    #' @description
    #' Initialize a new JobOperationParameters class.
    #'
    #' @param folderCopy folderCopy
    #' @param folderDelete folderDelete
    #' @param volumeMigration volumeMigration
    #' @param fileCopy fileCopy
    #' @param bulkMetadataUpdate bulkMetadataUpdate
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`folderCopy` = NULL, `folderDelete` = NULL, `volumeMigration` = NULL, `fileCopy` = NULL, `bulkMetadataUpdate` = NULL, ...) {
      if (!is.null(`folderCopy`)) {
        stopifnot(R6::is.R6(`folderCopy`))
        self$`folderCopy` <- `folderCopy`
      }
      if (!is.null(`folderDelete`)) {
        stopifnot(R6::is.R6(`folderDelete`))
        self$`folderDelete` <- `folderDelete`
      }
      if (!is.null(`volumeMigration`)) {
        stopifnot(R6::is.R6(`volumeMigration`))
        self$`volumeMigration` <- `volumeMigration`
      }
      if (!is.null(`fileCopy`)) {
        stopifnot(R6::is.R6(`fileCopy`))
        self$`fileCopy` <- `fileCopy`
      }
      if (!is.null(`bulkMetadataUpdate`)) {
        stopifnot(R6::is.R6(`bulkMetadataUpdate`))
        self$`bulkMetadataUpdate` <- `bulkMetadataUpdate`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return JobOperationParameters in JSON format
    #' @export
    toJSON = function() {
      JobOperationParametersObject <- list()
      if (!is.null(self$`folderCopy`)) {
        JobOperationParametersObject[["folderCopy"]] <-
          self$`folderCopy`$toJSON()
      }
      if (!is.null(self$`folderDelete`)) {
        JobOperationParametersObject[["folderDelete"]] <-
          self$`folderDelete`$toJSON()
      }
      if (!is.null(self$`volumeMigration`)) {
        JobOperationParametersObject[["volumeMigration"]] <-
          self$`volumeMigration`$toJSON()
      }
      if (!is.null(self$`fileCopy`)) {
        JobOperationParametersObject[["fileCopy"]] <-
          self$`fileCopy`$toJSON()
      }
      if (!is.null(self$`bulkMetadataUpdate`)) {
        JobOperationParametersObject[["bulkMetadataUpdate"]] <-
          self$`bulkMetadataUpdate`$toJSON()
      }
      JobOperationParametersObject
    },
    #' Deserialize JSON string into an instance of JobOperationParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobOperationParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobOperationParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`folderCopy`)) {
        `foldercopy_object` <- FolderCopyOperationParameters$new()
        `foldercopy_object`$fromJSON(jsonlite::toJSON(this_object$`folderCopy`, auto_unbox = TRUE, digits = NA))
        self$`folderCopy` <- `foldercopy_object`
      }
      if (!is.null(this_object$`folderDelete`)) {
        `folderdelete_object` <- FolderDeleteOperationParameters$new()
        `folderdelete_object`$fromJSON(jsonlite::toJSON(this_object$`folderDelete`, auto_unbox = TRUE, digits = NA))
        self$`folderDelete` <- `folderdelete_object`
      }
      if (!is.null(this_object$`volumeMigration`)) {
        `volumemigration_object` <- VolumeMigrationOperationParameters$new()
        `volumemigration_object`$fromJSON(jsonlite::toJSON(this_object$`volumeMigration`, auto_unbox = TRUE, digits = NA))
        self$`volumeMigration` <- `volumemigration_object`
      }
      if (!is.null(this_object$`fileCopy`)) {
        `filecopy_object` <- FileCopyOperationParameters$new()
        `filecopy_object`$fromJSON(jsonlite::toJSON(this_object$`fileCopy`, auto_unbox = TRUE, digits = NA))
        self$`fileCopy` <- `filecopy_object`
      }
      if (!is.null(this_object$`bulkMetadataUpdate`)) {
        `bulkmetadataupdate_object` <- BulkMetadataUpdateOperationParameters$new()
        `bulkmetadataupdate_object`$fromJSON(jsonlite::toJSON(this_object$`bulkMetadataUpdate`, auto_unbox = TRUE, digits = NA))
        self$`bulkMetadataUpdate` <- `bulkmetadataupdate_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return JobOperationParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`folderCopy`)) {
          sprintf(
          '"folderCopy":
          %s
          ',
          jsonlite::toJSON(self$`folderCopy`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`folderDelete`)) {
          sprintf(
          '"folderDelete":
          %s
          ',
          jsonlite::toJSON(self$`folderDelete`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`volumeMigration`)) {
          sprintf(
          '"volumeMigration":
          %s
          ',
          jsonlite::toJSON(self$`volumeMigration`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fileCopy`)) {
          sprintf(
          '"fileCopy":
          %s
          ',
          jsonlite::toJSON(self$`fileCopy`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`bulkMetadataUpdate`)) {
          sprintf(
          '"bulkMetadataUpdate":
          %s
          ',
          jsonlite::toJSON(self$`bulkMetadataUpdate`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of JobOperationParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobOperationParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobOperationParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`folderCopy` <- FolderCopyOperationParameters$new()$fromJSON(jsonlite::toJSON(this_object$`folderCopy`, auto_unbox = TRUE, digits = NA))
      self$`folderDelete` <- FolderDeleteOperationParameters$new()$fromJSON(jsonlite::toJSON(this_object$`folderDelete`, auto_unbox = TRUE, digits = NA))
      self$`volumeMigration` <- VolumeMigrationOperationParameters$new()$fromJSON(jsonlite::toJSON(this_object$`volumeMigration`, auto_unbox = TRUE, digits = NA))
      self$`fileCopy` <- FileCopyOperationParameters$new()$fromJSON(jsonlite::toJSON(this_object$`fileCopy`, auto_unbox = TRUE, digits = NA))
      self$`bulkMetadataUpdate` <- BulkMetadataUpdateOperationParameters$new()$fromJSON(jsonlite::toJSON(this_object$`bulkMetadataUpdate`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to JobOperationParameters
    #'
    #' @description
    #' Validate JSON input with respect to JobOperationParameters and throw an exception if invalid
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
    #' @return String representation of JobOperationParameters
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
# JobOperationParameters$unlock()
#
## Below is an example to define the print function
# JobOperationParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JobOperationParameters$lock()

