#' Create a new BulkFolderMetadataUpdateRequest
#'
#' @description
#' Request to bulk update metadata on folders and sub files.
#'
#' @docType class
#' @title BulkFolderMetadataUpdateRequest
#' @description BulkFolderMetadataUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field folderId Folder unique id. character
#' @field fileStatus File status to filter on. character [optional]
#' @field parentFolderMetadataUpdates  \link{MetadataUpdateRequest} [optional]
#' @field childrenFoldersUpdates  \link{MetadataUpdateRequest} [optional]
#' @field childrenFilesUpdates  \link{MetadataUpdateRequest} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BulkFolderMetadataUpdateRequest <- R6::R6Class(
  "BulkFolderMetadataUpdateRequest",
  public = list(
    `folderId` = NULL,
    `fileStatus` = NULL,
    `parentFolderMetadataUpdates` = NULL,
    `childrenFoldersUpdates` = NULL,
    `childrenFilesUpdates` = NULL,
    #' Initialize a new BulkFolderMetadataUpdateRequest class.
    #'
    #' @description
    #' Initialize a new BulkFolderMetadataUpdateRequest class.
    #'
    #' @param folderId Folder unique id.
    #' @param fileStatus File status to filter on.
    #' @param parentFolderMetadataUpdates parentFolderMetadataUpdates
    #' @param childrenFoldersUpdates childrenFoldersUpdates
    #' @param childrenFilesUpdates childrenFilesUpdates
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`folderId`, `fileStatus` = NULL, `parentFolderMetadataUpdates` = NULL, `childrenFoldersUpdates` = NULL, `childrenFilesUpdates` = NULL, ...) {
      if (!missing(`folderId`)) {
        if (!(is.character(`folderId`) && length(`folderId`) == 1)) {
          stop(paste("Error! Invalid data for `folderId`. Must be a string:", `folderId`))
        }
        self$`folderId` <- `folderId`
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
    #' @return BulkFolderMetadataUpdateRequest in JSON format
    #' @export
    toJSON = function() {
      BulkFolderMetadataUpdateRequestObject <- list()
      if (!is.null(self$`folderId`)) {
        BulkFolderMetadataUpdateRequestObject[["folderId"]] <-
          self$`folderId`
      }
      if (!is.null(self$`fileStatus`)) {
        BulkFolderMetadataUpdateRequestObject[["fileStatus"]] <-
          self$`fileStatus`
      }
      if (!is.null(self$`parentFolderMetadataUpdates`)) {
        BulkFolderMetadataUpdateRequestObject[["parentFolderMetadataUpdates"]] <-
          self$`parentFolderMetadataUpdates`$toJSON()
      }
      if (!is.null(self$`childrenFoldersUpdates`)) {
        BulkFolderMetadataUpdateRequestObject[["childrenFoldersUpdates"]] <-
          self$`childrenFoldersUpdates`$toJSON()
      }
      if (!is.null(self$`childrenFilesUpdates`)) {
        BulkFolderMetadataUpdateRequestObject[["childrenFilesUpdates"]] <-
          self$`childrenFilesUpdates`$toJSON()
      }
      BulkFolderMetadataUpdateRequestObject
    },
    #' Deserialize JSON string into an instance of BulkFolderMetadataUpdateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFolderMetadataUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFolderMetadataUpdateRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`folderId`)) {
        self$`folderId` <- this_object$`folderId`
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
    #' @return BulkFolderMetadataUpdateRequest in JSON format
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
    #' Deserialize JSON string into an instance of BulkFolderMetadataUpdateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of BulkFolderMetadataUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BulkFolderMetadataUpdateRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`folderId` <- this_object$`folderId`
      self$`fileStatus` <- this_object$`fileStatus`
      self$`parentFolderMetadataUpdates` <- MetadataUpdateRequest$new()$fromJSON(jsonlite::toJSON(this_object$`parentFolderMetadataUpdates`, auto_unbox = TRUE, digits = NA))
      self$`childrenFoldersUpdates` <- MetadataUpdateRequest$new()$fromJSON(jsonlite::toJSON(this_object$`childrenFoldersUpdates`, auto_unbox = TRUE, digits = NA))
      self$`childrenFilesUpdates` <- MetadataUpdateRequest$new()$fromJSON(jsonlite::toJSON(this_object$`childrenFilesUpdates`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to BulkFolderMetadataUpdateRequest
    #'
    #' @description
    #' Validate JSON input with respect to BulkFolderMetadataUpdateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `folderId`
      if (!is.null(input_json$`folderId`)) {
        if (!(is.character(input_json$`folderId`) && length(input_json$`folderId`) == 1)) {
          stop(paste("Error! Invalid data for `folderId`. Must be a string:", input_json$`folderId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BulkFolderMetadataUpdateRequest: the required field `folderId` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BulkFolderMetadataUpdateRequest
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
      # check if the required `folderId` is null
      if (is.null(self$`folderId`)) {
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
      # check if the required `folderId` is null
      if (is.null(self$`folderId`)) {
        invalid_fields["folderId"] <- "Non-nullable required field `folderId` cannot be null."
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
# BulkFolderMetadataUpdateRequest$unlock()
#
## Below is an example to define the print function
# BulkFolderMetadataUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BulkFolderMetadataUpdateRequest$lock()

