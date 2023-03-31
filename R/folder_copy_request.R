#' Create a new FolderCopyRequest
#'
#' @description
#' FolderCopyRequest Class
#'
#' @docType class
#' @title FolderCopyRequest
#' @description FolderCopyRequest Class
#' @format An \code{R6Class} generator object
#' @field targetParentFolderId The parent folder into which the source folder will be copied. character
#' @field destinationFolderName A new name for the destination folder. Required if target parent folder is the same as the destination folder.  When optional and not provided, the source folder name is used as the destination folder name. character [optional]
#' @field metadataToCopy  list(character) [optional]
#' @field duplicateFileAction  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FolderCopyRequest <- R6::R6Class(
  "FolderCopyRequest",
  public = list(
    `targetParentFolderId` = NULL,
    `destinationFolderName` = NULL,
    `metadataToCopy` = NULL,
    `duplicateFileAction` = NULL,
    #' Initialize a new FolderCopyRequest class.
    #'
    #' @description
    #' Initialize a new FolderCopyRequest class.
    #'
    #' @param targetParentFolderId The parent folder into which the source folder will be copied.
    #' @param destinationFolderName A new name for the destination folder. Required if target parent folder is the same as the destination folder.  When optional and not provided, the source folder name is used as the destination folder name.
    #' @param metadataToCopy metadataToCopy
    #' @param duplicateFileAction duplicateFileAction
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`targetParentFolderId`, `destinationFolderName` = NULL, `metadataToCopy` = NULL, `duplicateFileAction` = NULL, ...) {
      if (!missing(`targetParentFolderId`)) {
        if (!(is.character(`targetParentFolderId`) && length(`targetParentFolderId`) == 1)) {
          stop(paste("Error! Invalid data for `targetParentFolderId`. Must be a string:", `targetParentFolderId`))
        }
        self$`targetParentFolderId` <- `targetParentFolderId`
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FolderCopyRequest in JSON format
    #' @export
    toJSON = function() {
      FolderCopyRequestObject <- list()
      if (!is.null(self$`targetParentFolderId`)) {
        FolderCopyRequestObject[["targetParentFolderId"]] <-
          self$`targetParentFolderId`
      }
      if (!is.null(self$`destinationFolderName`)) {
        FolderCopyRequestObject[["destinationFolderName"]] <-
          self$`destinationFolderName`
      }
      if (!is.null(self$`metadataToCopy`)) {
        FolderCopyRequestObject[["metadataToCopy"]] <-
          self$`metadataToCopy`
      }
      if (!is.null(self$`duplicateFileAction`)) {
        FolderCopyRequestObject[["duplicateFileAction"]] <-
          self$`duplicateFileAction`
      }
      FolderCopyRequestObject
    },
    #' Deserialize JSON string into an instance of FolderCopyRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderCopyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderCopyRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`targetParentFolderId`)) {
        self$`targetParentFolderId` <- this_object$`targetParentFolderId`
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
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FolderCopyRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`targetParentFolderId`)) {
          sprintf(
          '"targetParentFolderId":
            "%s"
                    ',
          self$`targetParentFolderId`
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FolderCopyRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderCopyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderCopyRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`targetParentFolderId` <- this_object$`targetParentFolderId`
      self$`destinationFolderName` <- this_object$`destinationFolderName`
      self$`metadataToCopy` <- ApiClient$new()$deserializeObj(this_object$`metadataToCopy`, "array[character]", loadNamespace("icar1"))
      self$`duplicateFileAction` <- this_object$`duplicateFileAction`
      self
    },
    #' Validate JSON input with respect to FolderCopyRequest
    #'
    #' @description
    #' Validate JSON input with respect to FolderCopyRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `targetParentFolderId`
      if (!is.null(input_json$`targetParentFolderId`)) {
        if (!(is.character(input_json$`targetParentFolderId`) && length(input_json$`targetParentFolderId`) == 1)) {
          stop(paste("Error! Invalid data for `targetParentFolderId`. Must be a string:", input_json$`targetParentFolderId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FolderCopyRequest: the required field `targetParentFolderId` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FolderCopyRequest
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
      # check if the required `targetParentFolderId` is null
      if (is.null(self$`targetParentFolderId`)) {
        return(FALSE)
      }

      if (!str_detect(self$`destinationFolderName`, "^[^/]+$")) {
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
      # check if the required `targetParentFolderId` is null
      if (is.null(self$`targetParentFolderId`)) {
        invalid_fields["targetParentFolderId"] <- "Non-nullable required field `targetParentFolderId` cannot be null."
      }

      if (!str_detect(self$`destinationFolderName`, "^[^/]+$")) {
        invalid_fields["destinationFolderName"] <- "Invalid value for `destinationFolderName`, must conform to the pattern ^[^/]+$."
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
# FolderCopyRequest$unlock()
#
## Below is an example to define the print function
# FolderCopyRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FolderCopyRequest$lock()

