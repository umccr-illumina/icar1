#' Create a new BulkMetadataUpdateOperationParameters
#'
#' @description
#' Operation parameters for folder bulk metadata update operations
#'
#' @docType class
#' @title BulkMetadataUpdateOperationParameters
#' @description BulkMetadataUpdateOperationParameters Class
#' @format An \code{R6Class} generator object
#' @field folderId  character [optional]
#' @field folderPath  character [optional]
#' @field volumeId  character [optional]
#' @field fileStatus  character [optional]
#' @field parentFolderMetadataUpdates  \link{MetadataUpdateRequest} [optional]
#' @field childrenFoldersUpdates  \link{MetadataUpdateRequest} [optional]
#' @field childrenFilesUpdates  \link{MetadataUpdateRequest} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BulkMetadataUpdateOperationParameters <- R6::R6Class(
  "BulkMetadataUpdateOperationParameters",
  public = list(
    `folderId` = NULL,
    `folderPath` = NULL,
    `volumeId` = NULL,
    `fileStatus` = NULL,
    `parentFolderMetadataUpdates` = NULL,
    `childrenFoldersUpdates` = NULL,
    `childrenFilesUpdates` = NULL,
    #' Initialize a new BulkMetadataUpdateOperationParameters class.
    #'
    #' @description
    #' Initialize a new BulkMetadataUpdateOperationParameters class.
    #'
    #' @param folderId folderId
    #' @param folderPath folderPath
    #' @param volumeId volumeId
    #' @param fileStatus fileStatus
    #' @param parentFolderMetadataUpdates parentFolderMetadataUpdates
    #' @param childrenFoldersUpdates childrenFoldersUpdates
    #' @param childrenFilesUpdates childrenFilesUpdates
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`folderId` = NULL, `folderPath` = NULL, `volumeId` = NULL, `fileStatus` = NULL, `parentFolderMetadataUpdates` = NULL, `childrenFoldersUpdates` = NULL, `childrenFilesUpdates` = NULL, ...) {
      if (!is.null(`folderId`)) {
        if (!(is.character(`folderId`) && length(`folderId`) == 1)) {
          stop(paste("Error! Invalid data for `folderId`. Must be a string:", `folderId`))
        }
        self$`folderId` <- `folderId`
      }
      if (!is.null(`folderPath`)) {
        if (!(is.character(`folderPath`) && length(`folderPath`) == 1)) {
          stop(paste("Error! Invalid data for `folderPath`. Must be a string:", `folderPath`))
        }
        self$`folderPath` <- `folderPath`
      }
      if (!is.null(`volumeId`)) {
        if (!(is.character(`volumeId`) && length(`volumeId`) == 1)) {
          stop(paste("Error! Invalid data for `volumeId`. Must be a string:", `volumeId`))
        }
        self$`volumeId` <- `volumeId`
      }
      if (!is.null(`fileStatus`)) {
        if (!(is.character(`fileStatus`) && length(`fileStatus`) == 1)) {
          stop(paste("Error! Invalid data for `fileStatus`. Must be a string:", `fileStatus`))
        }
        self$`fileStatus` <- `fileStatus`
      }
      if (!is.null(`parentFolderMetadataUpdates`)) {
        stopifnot(R6::is.R6(`parentFolderMetadataUpdates`))
        self$`parentFolderMetadataUpdates` <- `parentFolderMetadataUpdates`
      }
      if (!is.null(`childrenFoldersUpdates`)) {
        stopifnot(R6::is.R6(`childrenFoldersUpdates`))
        self$`childrenFoldersUpdates` <- `childrenFoldersUpdates`
      }
      if (!is.null(`childrenFilesUpdates`)) {
        stopifnot(R6::is.R6(`childrenFilesUpdates`))
        self$`childrenFilesUpdates` <- `childrenFilesUpdates`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkMetadataUpdateOperationParameters in JSON format
    #' @export
    toJSON = function() {
      BulkMetadataUpdateOperationParametersObject <- list()
      if (!is.null(self$`folderId`)) {
        BulkMetadataUpdateOperationParametersObject[["folderId"]] <-
          self$`folderId`
      }
      if (!is.null(self$`folderPath`)) {
        BulkMetadataUpdateOperationParametersObject[["folderPath"]] <-
          self$`folderPath`
      }
      if (!is.null(self$`volumeId`)) {
        BulkMetadataUpdateOperationParametersObject[["volumeId"]] <-
          self$`volumeId`
      }
      if (!is.null(self$`fileStatus`)) {
        BulkMetadataUpdateOperationParametersObject[["fileStatus"]] <-
          self$`fileStatus`
      }
      if (!is.null(self$`parentFolderMetadataUpdates`)) {
        BulkMetadataUpdateOperationParametersObject[["parentFolderMetadataUpdates"]] <-
          self$`parentFolderMetadataUpdates`$toJSON()
      }
      if (!is.null(self$`childrenFoldersUpdates`)) {
        BulkMetadataUpdateOperationParametersObject[["childrenFoldersUpdates"]] <-
          self$`childrenFoldersUpdates`$toJSON()
      }
      if (!is.null(self$`childrenFilesUpdates`)) {
        BulkMetadataUpdateOperationParametersObject[["childrenFilesUpdates"]] <-
          self$`childrenFilesUpdates`$toJSON()
      }
      BulkMetadataUpdateOperationParametersObject
    },
    #' Deserialize JSON string into an instance of BulkMetadataUpdateOperationParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkMetadataUpdateOperationParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkMetadataUpdateOperationParameters
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`folderId`)) {
        self$`folderId` <- this_object$`folderId`
      }
      if (!is.null(this_object$`folderPath`)) {
        self$`folderPath` <- this_object$`folderPath`
      }
      if (!is.null(this_object$`volumeId`)) {
        self$`volumeId` <- this_object$`volumeId`
      }
      if (!is.null(this_object$`fileStatus`)) {
        self$`fileStatus` <- this_object$`fileStatus`
      }
      if (!is.null(this_object$`parentFolderMetadataUpdates`)) {
        `parentfoldermetadataupdates_object` <- MetadataUpdateRequest$new()
        `parentfoldermetadataupdates_object`$fromJSON(jsonlite::toJSON(this_object$`parentFolderMetadataUpdates`, auto_unbox = TRUE, digits = NA))
        self$`parentFolderMetadataUpdates` <- `parentfoldermetadataupdates_object`
      }
      if (!is.null(this_object$`childrenFoldersUpdates`)) {
        `childrenfoldersupdates_object` <- MetadataUpdateRequest$new()
        `childrenfoldersupdates_object`$fromJSON(jsonlite::toJSON(this_object$`childrenFoldersUpdates`, auto_unbox = TRUE, digits = NA))
        self$`childrenFoldersUpdates` <- `childrenfoldersupdates_object`
      }
      if (!is.null(this_object$`childrenFilesUpdates`)) {
        `childrenfilesupdates_object` <- MetadataUpdateRequest$new()
        `childrenfilesupdates_object`$fromJSON(jsonlite::toJSON(this_object$`childrenFilesUpdates`, auto_unbox = TRUE, digits = NA))
        self$`childrenFilesUpdates` <- `childrenfilesupdates_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return BulkMetadataUpdateOperationParameters in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`folderId`)) {
          sprintf(
          '"folderId":
            "%s"
                    ',
          self$`folderId`
          )
        },
        if (!is.null(self$`folderPath`)) {
          sprintf(
          '"folderPath":
            "%s"
                    ',
          self$`folderPath`
          )
        },
        if (!is.null(self$`volumeId`)) {
          sprintf(
          '"volumeId":
            "%s"
                    ',
          self$`volumeId`
          )
        },
        if (!is.null(self$`fileStatus`)) {
          sprintf(
          '"fileStatus":
            "%s"
                    ',
          self$`fileStatus`
          )
        },
        if (!is.null(self$`parentFolderMetadataUpdates`)) {
          sprintf(
          '"parentFolderMetadataUpdates":
          %s
          ',
          jsonlite::toJSON(self$`parentFolderMetadataUpdates`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`childrenFoldersUpdates`)) {
          sprintf(
          '"childrenFoldersUpdates":
          %s
          ',
          jsonlite::toJSON(self$`childrenFoldersUpdates`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`childrenFilesUpdates`)) {
          sprintf(
          '"childrenFilesUpdates":
          %s
          ',
          jsonlite::toJSON(self$`childrenFilesUpdates`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of BulkMetadataUpdateOperationParameters
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkMetadataUpdateOperationParameters
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkMetadataUpdateOperationParameters
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`folderId` <- this_object$`folderId`
      self$`folderPath` <- this_object$`folderPath`
      self$`volumeId` <- this_object$`volumeId`
      self$`fileStatus` <- this_object$`fileStatus`
      self$`parentFolderMetadataUpdates` <- MetadataUpdateRequest$new()$fromJSON(jsonlite::toJSON(this_object$`parentFolderMetadataUpdates`, auto_unbox = TRUE, digits = NA))
      self$`childrenFoldersUpdates` <- MetadataUpdateRequest$new()$fromJSON(jsonlite::toJSON(this_object$`childrenFoldersUpdates`, auto_unbox = TRUE, digits = NA))
      self$`childrenFilesUpdates` <- MetadataUpdateRequest$new()$fromJSON(jsonlite::toJSON(this_object$`childrenFilesUpdates`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to BulkMetadataUpdateOperationParameters
    #'
    #' @description
    #' Validate JSON input with respect to BulkMetadataUpdateOperationParameters and throw an exception if invalid
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
    #' @return String representation of BulkMetadataUpdateOperationParameters
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
# BulkMetadataUpdateOperationParameters$unlock()
#
## Below is an example to define the print function
# BulkMetadataUpdateOperationParameters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BulkMetadataUpdateOperationParameters$lock()

