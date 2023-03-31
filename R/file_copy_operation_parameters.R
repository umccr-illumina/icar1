#' Create a new FileCopyOperationParameters
#'
#' @description
#' Operation parameters for folder copy operations
#'
#' @docType class
#' @title FileCopyOperationParameters
#' @description FileCopyOperationParameters Class
#' @format An \code{R6Class} generator object
#' @field sourceVolumeId  character [optional]
#' @field sourceFileIds The file Ids for the copy operation list(character) [optional]
#' @field targetFolderId  character [optional]
#' @field metadataToCopy  list(character) [optional]
#' @field duplicateFileAction  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileCopyOperationParameters <- R6::R6Class(
  "FileCopyOperationParameters",
  public = list(
    `sourceVolumeId` = NULL,
    `sourceFileIds` = NULL,
    `targetFolderId` = NULL,
    `metadataToCopy` = NULL,
    `duplicateFileAction` = NULL,
    #' Initialize a new FileCopyOperationParameters class.
    #'
    #' @description
    #' Initialize a new FileCopyOperationParameters class.
    #'
    #' @param sourceVolumeId sourceVolumeId
    #' @param sourceFileIds The file Ids for the copy operation
    #' @param targetFolderId targetFolderId
    #' @param metadataToCopy metadataToCopy
    #' @param duplicateFileAction duplicateFileAction
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`sourceVolumeId` = NULL, `sourceFileIds` = NULL, `targetFolderId` = NULL, `metadataToCopy` = NULL, `duplicateFileAction` = NULL, ...) {
      if (!is.null(`sourceVolumeId`)) {
        if (!(is.character(`sourceVolumeId`) && length(`sourceVolumeId`) == 1)) {
          stop(paste("Error! Invalid data for `sourceVolumeId`. Must be a string:", `sourceVolumeId`))
        }
        self$`sourceVolumeId` <- `sourceVolumeId`
      }
      if (!is.null(`sourceFileIds`)) {
        stopifnot(is.vector(`sourceFileIds`), length(`sourceFileIds`) != 0)
        sapply(`sourceFileIds`, function(x) stopifnot(is.character(x)))
        self$`sourceFileIds` <- `sourceFileIds`
      }
      if (!is.null(`targetFolderId`)) {
        if (!(is.character(`targetFolderId`) && length(`targetFolderId`) == 1)) {
          stop(paste("Error! Invalid data for `targetFolderId`. Must be a string:", `targetFolderId`))
        }
        self$`targetFolderId` <- `targetFolderId`
      }
      if (!is.null(`metadataToCopy`)) {
        stopifnot(is.vector(`metadataToCopy`), length(`metadataToCopy`) != 0)
        sapply(`metadataToCopy`, function(x) stopifnot(is.character(x)))
        self$`metadataToCopy` <- `metadataToCopy`
      }
      if (!is.null(`duplicateFileAction`)) {
        if (!(is.character(`duplicateFileAction`) && length(`duplicateFileAction`) == 1)) {
          stop(paste("Error! Invalid data for `duplicateFileAction`. Must be a string:", `duplicateFileAction`))
        }
        self$`duplicateFileAction` <- `duplicateFileAction`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileCopyOperationParameters in JSON format
    #' @export
    toJSON = function() {
      FileCopyOperationParametersObject <- list()
      if (!is.null(self$`sourceVolumeId`)) {
        FileCopyOperationParametersObject[["sourceVolumeId"]] <-
          self$`sourceVolumeId`
      }
      if (!is.null(self$`sourceFileIds`)) {
        FileCopyOperationParametersObject[["sourceFileIds"]] <-
          self$`sourceFileIds`
      }
      if (!is.null(self$`targetFolderId`)) {
        FileCopyOperationParametersObject[["targetFolderId"]] <-
          self$`targetFolderId`
      }
      if (!is.null(self$`metadataToCopy`)) {
        FileCopyOperationParametersObject[["metadataToCopy"]] <-
          self$`metadataToCopy`
      }
      if (!is.null(self$`duplicateFileAction`)) {
        FileCopyOperationParametersObject[["duplicateFileAction"]] <-
          self$`duplicateFileAction`
      }
      FileCopyOperationParametersObject
    },
    #' Deserialize JSON string into an instance of FileCopyOperationParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileCopyOperationParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileCopyOperationParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sourceVolumeId`)) {
        self$`sourceVolumeId` <- this_object$`sourceVolumeId`
      }
      if (!is.null(this_object$`sourceFileIds`)) {
        self$`sourceFileIds` <- ApiClient$new()$deserializeObj(this_object$`sourceFileIds`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`targetFolderId`)) {
        self$`targetFolderId` <- this_object$`targetFolderId`
      }
      if (!is.null(this_object$`metadataToCopy`)) {
        self$`metadataToCopy` <- ApiClient$new()$deserializeObj(this_object$`metadataToCopy`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`duplicateFileAction`)) {
        self$`duplicateFileAction` <- this_object$`duplicateFileAction`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileCopyOperationParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`sourceVolumeId`)) {
          sprintf(
          '"sourceVolumeId":
            "%s"
                    ',
          self$`sourceVolumeId`
          )
        },
        if (!is.null(self$`sourceFileIds`)) {
          sprintf(
          '"sourceFileIds":
             [%s]
          ',
          paste(unlist(lapply(self$`sourceFileIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`targetFolderId`)) {
          sprintf(
          '"targetFolderId":
            "%s"
                    ',
          self$`targetFolderId`
          )
        },
        if (!is.null(self$`metadataToCopy`)) {
          sprintf(
          '"metadataToCopy":
             [%s]
          ',
          paste(unlist(lapply(self$`metadataToCopy`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`duplicateFileAction`)) {
          sprintf(
          '"duplicateFileAction":
            "%s"
                    ',
          self$`duplicateFileAction`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FileCopyOperationParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileCopyOperationParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileCopyOperationParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sourceVolumeId` <- this_object$`sourceVolumeId`
      self$`sourceFileIds` <- ApiClient$new()$deserializeObj(this_object$`sourceFileIds`, "array[character]", loadNamespace("icar1"))
      self$`targetFolderId` <- this_object$`targetFolderId`
      self$`metadataToCopy` <- ApiClient$new()$deserializeObj(this_object$`metadataToCopy`, "array[character]", loadNamespace("icar1"))
      self$`duplicateFileAction` <- this_object$`duplicateFileAction`
      self
    },
    #' Validate JSON input with respect to FileCopyOperationParameters
    #'
    #' @description
    #' Validate JSON input with respect to FileCopyOperationParameters and throw an exception if invalid
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
    #' @return String representation of FileCopyOperationParameters
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
# FileCopyOperationParameters$unlock()
#
## Below is an example to define the print function
# FileCopyOperationParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FileCopyOperationParameters$lock()

