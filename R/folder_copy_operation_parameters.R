#' Create a new FolderCopyOperationParameters
#'
#' @description
#' Operation parameters for folder copy operations
#'
#' @docType class
#' @title FolderCopyOperationParameters
#' @description FolderCopyOperationParameters Class
#' @format An \code{R6Class} generator object
#' @field sourceFolderUrn The Urn of the source folder for the copy operation character [optional]
#' @field targetFolderUrn The Urn of the target folder for the copy operation character [optional]
#' @field destinationFolderName The folder name for the copied folder character [optional]
#' @field metadataToCopy  list(character) [optional]
#' @field duplicateFileAction  character [optional]
#' @field copyUploadedFilesOnly  character [optional]
#' @field sourceFolderId  character [optional]
#' @field targetFolderId  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FolderCopyOperationParameters <- R6::R6Class(
  "FolderCopyOperationParameters",
  public = list(
    `sourceFolderUrn` = NULL,
    `targetFolderUrn` = NULL,
    `destinationFolderName` = NULL,
    `metadataToCopy` = NULL,
    `duplicateFileAction` = NULL,
    `copyUploadedFilesOnly` = NULL,
    `sourceFolderId` = NULL,
    `targetFolderId` = NULL,
    #' Initialize a new FolderCopyOperationParameters class.
    #'
    #' @description
    #' Initialize a new FolderCopyOperationParameters class.
    #'
    #' @param sourceFolderUrn The Urn of the source folder for the copy operation
    #' @param targetFolderUrn The Urn of the target folder for the copy operation
    #' @param destinationFolderName The folder name for the copied folder
    #' @param metadataToCopy metadataToCopy
    #' @param duplicateFileAction duplicateFileAction
    #' @param copyUploadedFilesOnly copyUploadedFilesOnly
    #' @param sourceFolderId sourceFolderId
    #' @param targetFolderId targetFolderId
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`sourceFolderUrn` = NULL, `targetFolderUrn` = NULL, `destinationFolderName` = NULL, `metadataToCopy` = NULL, `duplicateFileAction` = NULL, `copyUploadedFilesOnly` = NULL, `sourceFolderId` = NULL, `targetFolderId` = NULL, ...) {
      if (!is.null(`sourceFolderUrn`)) {
        if (!(is.character(`sourceFolderUrn`) && length(`sourceFolderUrn`) == 1)) {
          stop(paste("Error! Invalid data for `sourceFolderUrn`. Must be a string:", `sourceFolderUrn`))
        }
        self$`sourceFolderUrn` <- `sourceFolderUrn`
      }
      if (!is.null(`targetFolderUrn`)) {
        if (!(is.character(`targetFolderUrn`) && length(`targetFolderUrn`) == 1)) {
          stop(paste("Error! Invalid data for `targetFolderUrn`. Must be a string:", `targetFolderUrn`))
        }
        self$`targetFolderUrn` <- `targetFolderUrn`
      }
      if (!is.null(`destinationFolderName`)) {
        if (!(is.character(`destinationFolderName`) && length(`destinationFolderName`) == 1)) {
          stop(paste("Error! Invalid data for `destinationFolderName`. Must be a string:", `destinationFolderName`))
        }
        self$`destinationFolderName` <- `destinationFolderName`
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
      if (!is.null(`copyUploadedFilesOnly`)) {
        if (!(is.logical(`copyUploadedFilesOnly`) && length(`copyUploadedFilesOnly`) == 1)) {
          stop(paste("Error! Invalid data for `copyUploadedFilesOnly`. Must be a boolean:", `copyUploadedFilesOnly`))
        }
        self$`copyUploadedFilesOnly` <- `copyUploadedFilesOnly`
      }
      if (!is.null(`sourceFolderId`)) {
        if (!(is.character(`sourceFolderId`) && length(`sourceFolderId`) == 1)) {
          stop(paste("Error! Invalid data for `sourceFolderId`. Must be a string:", `sourceFolderId`))
        }
        self$`sourceFolderId` <- `sourceFolderId`
      }
      if (!is.null(`targetFolderId`)) {
        if (!(is.character(`targetFolderId`) && length(`targetFolderId`) == 1)) {
          stop(paste("Error! Invalid data for `targetFolderId`. Must be a string:", `targetFolderId`))
        }
        self$`targetFolderId` <- `targetFolderId`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FolderCopyOperationParameters in JSON format
    #' @export
    toJSON = function() {
      FolderCopyOperationParametersObject <- list()
      if (!is.null(self$`sourceFolderUrn`)) {
        FolderCopyOperationParametersObject[["sourceFolderUrn"]] <-
          self$`sourceFolderUrn`
      }
      if (!is.null(self$`targetFolderUrn`)) {
        FolderCopyOperationParametersObject[["targetFolderUrn"]] <-
          self$`targetFolderUrn`
      }
      if (!is.null(self$`destinationFolderName`)) {
        FolderCopyOperationParametersObject[["destinationFolderName"]] <-
          self$`destinationFolderName`
      }
      if (!is.null(self$`metadataToCopy`)) {
        FolderCopyOperationParametersObject[["metadataToCopy"]] <-
          self$`metadataToCopy`
      }
      if (!is.null(self$`duplicateFileAction`)) {
        FolderCopyOperationParametersObject[["duplicateFileAction"]] <-
          self$`duplicateFileAction`
      }
      if (!is.null(self$`copyUploadedFilesOnly`)) {
        FolderCopyOperationParametersObject[["copyUploadedFilesOnly"]] <-
          self$`copyUploadedFilesOnly`
      }
      if (!is.null(self$`sourceFolderId`)) {
        FolderCopyOperationParametersObject[["sourceFolderId"]] <-
          self$`sourceFolderId`
      }
      if (!is.null(self$`targetFolderId`)) {
        FolderCopyOperationParametersObject[["targetFolderId"]] <-
          self$`targetFolderId`
      }
      FolderCopyOperationParametersObject
    },
    #' Deserialize JSON string into an instance of FolderCopyOperationParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderCopyOperationParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderCopyOperationParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sourceFolderUrn`)) {
        self$`sourceFolderUrn` <- this_object$`sourceFolderUrn`
      }
      if (!is.null(this_object$`targetFolderUrn`)) {
        self$`targetFolderUrn` <- this_object$`targetFolderUrn`
      }
      if (!is.null(this_object$`destinationFolderName`)) {
        self$`destinationFolderName` <- this_object$`destinationFolderName`
      }
      if (!is.null(this_object$`metadataToCopy`)) {
        self$`metadataToCopy` <- ApiClient$new()$deserializeObj(this_object$`metadataToCopy`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`duplicateFileAction`)) {
        self$`duplicateFileAction` <- this_object$`duplicateFileAction`
      }
      if (!is.null(this_object$`copyUploadedFilesOnly`)) {
        self$`copyUploadedFilesOnly` <- this_object$`copyUploadedFilesOnly`
      }
      if (!is.null(this_object$`sourceFolderId`)) {
        self$`sourceFolderId` <- this_object$`sourceFolderId`
      }
      if (!is.null(this_object$`targetFolderId`)) {
        self$`targetFolderId` <- this_object$`targetFolderId`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FolderCopyOperationParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`sourceFolderUrn`)) {
          sprintf(
          '"sourceFolderUrn":
            "%s"
                    ',
          self$`sourceFolderUrn`
          )
        },
        if (!is.null(self$`targetFolderUrn`)) {
          sprintf(
          '"targetFolderUrn":
            "%s"
                    ',
          self$`targetFolderUrn`
          )
        },
        if (!is.null(self$`destinationFolderName`)) {
          sprintf(
          '"destinationFolderName":
            "%s"
                    ',
          self$`destinationFolderName`
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
        },
        if (!is.null(self$`copyUploadedFilesOnly`)) {
          sprintf(
          '"copyUploadedFilesOnly":
            %s
                    ',
          tolower(self$`copyUploadedFilesOnly`)
          )
        },
        if (!is.null(self$`sourceFolderId`)) {
          sprintf(
          '"sourceFolderId":
            "%s"
                    ',
          self$`sourceFolderId`
          )
        },
        if (!is.null(self$`targetFolderId`)) {
          sprintf(
          '"targetFolderId":
            "%s"
                    ',
          self$`targetFolderId`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FolderCopyOperationParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderCopyOperationParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderCopyOperationParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sourceFolderUrn` <- this_object$`sourceFolderUrn`
      self$`targetFolderUrn` <- this_object$`targetFolderUrn`
      self$`destinationFolderName` <- this_object$`destinationFolderName`
      self$`metadataToCopy` <- ApiClient$new()$deserializeObj(this_object$`metadataToCopy`, "array[character]", loadNamespace("icar1"))
      self$`duplicateFileAction` <- this_object$`duplicateFileAction`
      self$`copyUploadedFilesOnly` <- this_object$`copyUploadedFilesOnly`
      self$`sourceFolderId` <- this_object$`sourceFolderId`
      self$`targetFolderId` <- this_object$`targetFolderId`
      self
    },
    #' Validate JSON input with respect to FolderCopyOperationParameters
    #'
    #' @description
    #' Validate JSON input with respect to FolderCopyOperationParameters and throw an exception if invalid
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
    #' @return String representation of FolderCopyOperationParameters
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
# FolderCopyOperationParameters$unlock()
#
## Below is an example to define the print function
# FolderCopyOperationParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FolderCopyOperationParameters$lock()

