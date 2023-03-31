#' Create a new FileListCopyRequest
#'
#' @description
#' FileListCopyRequest Class
#'
#' @docType class
#' @title FileListCopyRequest
#' @description FileListCopyRequest Class
#' @format An \code{R6Class} generator object
#' @field sourceVolumeId The volume where the source files are copied from. character
#' @field destinationFolderId The folder into which the source folder will be copied. character
#' @field ids List of files ids to copy list(character)
#' @field metadataToCopy  list(character) [optional]
#' @field duplicateFileAction  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileListCopyRequest <- R6::R6Class(
  "FileListCopyRequest",
  public = list(
    `sourceVolumeId` = NULL,
    `destinationFolderId` = NULL,
    `ids` = NULL,
    `metadataToCopy` = NULL,
    `duplicateFileAction` = NULL,
    #' Initialize a new FileListCopyRequest class.
    #'
    #' @description
    #' Initialize a new FileListCopyRequest class.
    #'
    #' @param sourceVolumeId The volume where the source files are copied from.
    #' @param destinationFolderId The folder into which the source folder will be copied.
    #' @param ids List of files ids to copy
    #' @param metadataToCopy metadataToCopy
    #' @param duplicateFileAction duplicateFileAction
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`sourceVolumeId`, `destinationFolderId`, `ids`, `metadataToCopy` = NULL, `duplicateFileAction` = NULL, ...) {
      if (!missing(`sourceVolumeId`)) {
        if (!(is.character(`sourceVolumeId`) && length(`sourceVolumeId`) == 1)) {
          stop(paste("Error! Invalid data for `sourceVolumeId`. Must be a string:", `sourceVolumeId`))
        }
        self$`sourceVolumeId` <- `sourceVolumeId`
      }
      if (!missing(`destinationFolderId`)) {
        if (!(is.character(`destinationFolderId`) && length(`destinationFolderId`) == 1)) {
          stop(paste("Error! Invalid data for `destinationFolderId`. Must be a string:", `destinationFolderId`))
        }
        self$`destinationFolderId` <- `destinationFolderId`
      }
      if (!missing(`ids`)) {
        stopifnot(is.vector(`ids`), length(`ids`) != 0)
        sapply(`ids`, function(x) stopifnot(is.character(x)))
        self$`ids` <- `ids`
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
    #' @return FileListCopyRequest in JSON format
    #' @export
    toJSON = function() {
      FileListCopyRequestObject <- list()
      if (!is.null(self$`sourceVolumeId`)) {
        FileListCopyRequestObject[["sourceVolumeId"]] <-
          self$`sourceVolumeId`
      }
      if (!is.null(self$`destinationFolderId`)) {
        FileListCopyRequestObject[["destinationFolderId"]] <-
          self$`destinationFolderId`
      }
      if (!is.null(self$`ids`)) {
        FileListCopyRequestObject[["ids"]] <-
          self$`ids`
      }
      if (!is.null(self$`metadataToCopy`)) {
        FileListCopyRequestObject[["metadataToCopy"]] <-
          self$`metadataToCopy`
      }
      if (!is.null(self$`duplicateFileAction`)) {
        FileListCopyRequestObject[["duplicateFileAction"]] <-
          self$`duplicateFileAction`
      }
      FileListCopyRequestObject
    },
    #' Deserialize JSON string into an instance of FileListCopyRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileListCopyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileListCopyRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sourceVolumeId`)) {
        self$`sourceVolumeId` <- this_object$`sourceVolumeId`
      }
      if (!is.null(this_object$`destinationFolderId`)) {
        self$`destinationFolderId` <- this_object$`destinationFolderId`
      }
      if (!is.null(this_object$`ids`)) {
        self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[character]", loadNamespace("icar1"))
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
    #' @return FileListCopyRequest in JSON format
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
        if (!is.null(self$`destinationFolderId`)) {
          sprintf(
          '"destinationFolderId":
            "%s"
                    ',
          self$`destinationFolderId`
          )
        },
        if (!is.null(self$`ids`)) {
          sprintf(
          '"ids":
             [%s]
          ',
          paste(unlist(lapply(self$`ids`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of FileListCopyRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileListCopyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileListCopyRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sourceVolumeId` <- this_object$`sourceVolumeId`
      self$`destinationFolderId` <- this_object$`destinationFolderId`
      self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[character]", loadNamespace("icar1"))
      self$`metadataToCopy` <- ApiClient$new()$deserializeObj(this_object$`metadataToCopy`, "array[character]", loadNamespace("icar1"))
      self$`duplicateFileAction` <- this_object$`duplicateFileAction`
      self
    },
    #' Validate JSON input with respect to FileListCopyRequest
    #'
    #' @description
    #' Validate JSON input with respect to FileListCopyRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `sourceVolumeId`
      if (!is.null(input_json$`sourceVolumeId`)) {
        if (!(is.character(input_json$`sourceVolumeId`) && length(input_json$`sourceVolumeId`) == 1)) {
          stop(paste("Error! Invalid data for `sourceVolumeId`. Must be a string:", input_json$`sourceVolumeId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FileListCopyRequest: the required field `sourceVolumeId` is missing."))
      }
      # check the required field `destinationFolderId`
      if (!is.null(input_json$`destinationFolderId`)) {
        if (!(is.character(input_json$`destinationFolderId`) && length(input_json$`destinationFolderId`) == 1)) {
          stop(paste("Error! Invalid data for `destinationFolderId`. Must be a string:", input_json$`destinationFolderId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FileListCopyRequest: the required field `destinationFolderId` is missing."))
      }
      # check the required field `ids`
      if (!is.null(input_json$`ids`)) {
        stopifnot(is.vector(input_json$`ids`), length(input_json$`ids`) != 0)
        tmp <- sapply(input_json$`ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FileListCopyRequest: the required field `ids` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FileListCopyRequest
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
      # check if the required `sourceVolumeId` is null
      if (is.null(self$`sourceVolumeId`)) {
        return(FALSE)
      }

      # check if the required `destinationFolderId` is null
      if (is.null(self$`destinationFolderId`)) {
        return(FALSE)
      }

      # check if the required `ids` is null
      if (is.null(self$`ids`)) {
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
      # check if the required `sourceVolumeId` is null
      if (is.null(self$`sourceVolumeId`)) {
        invalid_fields["sourceVolumeId"] <- "Non-nullable required field `sourceVolumeId` cannot be null."
      }

      # check if the required `destinationFolderId` is null
      if (is.null(self$`destinationFolderId`)) {
        invalid_fields["destinationFolderId"] <- "Non-nullable required field `destinationFolderId` cannot be null."
      }

      # check if the required `ids` is null
      if (is.null(self$`ids`)) {
        invalid_fields["ids"] <- "Non-nullable required field `ids` cannot be null."
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
# FileListCopyRequest$unlock()
#
## Below is an example to define the print function
# FileListCopyRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FileListCopyRequest$lock()

