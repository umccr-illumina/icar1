#' Create a new CreateFolderRequest
#'
#' @description
#' CreateFolderRequest Class
#'
#' @docType class
#' @title CreateFolderRequest
#' @description CreateFolderRequest Class
#' @format An \code{R6Class} generator object
#' @field name Folder name, unique to this path, for the folder being created character
#' @field folderPath Path from the root folder to the location for the folder being created; must start and end with '/' character [optional]
#' @field volumeId The unique identifier for this Folder's Volume character [optional]
#' @field volumeName The unique name for the Folder's Volume character [optional]
#' @field metadata Metadata about this folder and its contents object [optional]
#' @field acl Optional array to replace the acl on the resource. list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateFolderRequest <- R6::R6Class(
  "CreateFolderRequest",
  public = list(
    `name` = NULL,
    `folderPath` = NULL,
    `volumeId` = NULL,
    `volumeName` = NULL,
    `metadata` = NULL,
    `acl` = NULL,
    #' Initialize a new CreateFolderRequest class.
    #'
    #' @description
    #' Initialize a new CreateFolderRequest class.
    #'
    #' @param name Folder name, unique to this path, for the folder being created
    #' @param folderPath Path from the root folder to the location for the folder being created; must start and end with '/'
    #' @param volumeId The unique identifier for this Folder's Volume
    #' @param volumeName The unique name for the Folder's Volume
    #' @param metadata Metadata about this folder and its contents
    #' @param acl Optional array to replace the acl on the resource.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `folderPath` = NULL, `volumeId` = NULL, `volumeName` = NULL, `metadata` = NULL, `acl` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`volumeName`)) {
        if (!(is.character(`volumeName`) && length(`volumeName`) == 1)) {
          stop(paste("Error! Invalid data for `volumeName`. Must be a string:", `volumeName`))
        }
        self$`volumeName` <- `volumeName`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
      if (!is.null(`acl`)) {
        stopifnot(is.vector(`acl`), length(`acl`) != 0)
        sapply(`acl`, function(x) stopifnot(is.character(x)))
        self$`acl` <- `acl`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateFolderRequest in JSON format
    #' @export
    toJSON = function() {
      CreateFolderRequestObject <- list()
      if (!is.null(self$`name`)) {
        CreateFolderRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`folderPath`)) {
        CreateFolderRequestObject[["folderPath"]] <-
          self$`folderPath`
      }
      if (!is.null(self$`volumeId`)) {
        CreateFolderRequestObject[["volumeId"]] <-
          self$`volumeId`
      }
      if (!is.null(self$`volumeName`)) {
        CreateFolderRequestObject[["volumeName"]] <-
          self$`volumeName`
      }
      if (!is.null(self$`metadata`)) {
        CreateFolderRequestObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`acl`)) {
        CreateFolderRequestObject[["acl"]] <-
          self$`acl`
      }
      CreateFolderRequestObject
    },
    #' Deserialize JSON string into an instance of CreateFolderRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateFolderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateFolderRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`folderPath`)) {
        self$`folderPath` <- this_object$`folderPath`
      }
      if (!is.null(this_object$`volumeId`)) {
        self$`volumeId` <- this_object$`volumeId`
      }
      if (!is.null(this_object$`volumeName`)) {
        self$`volumeName` <- this_object$`volumeName`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`acl`)) {
        self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateFolderRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
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
        if (!is.null(self$`volumeName`)) {
          sprintf(
          '"volumeName":
            "%s"
                    ',
          self$`volumeName`
          )
        },
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
            "%s"
                    ',
          self$`metadata`
          )
        },
        if (!is.null(self$`acl`)) {
          sprintf(
          '"acl":
             [%s]
          ',
          paste(unlist(lapply(self$`acl`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateFolderRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateFolderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateFolderRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`folderPath` <- this_object$`folderPath`
      self$`volumeId` <- this_object$`volumeId`
      self$`volumeName` <- this_object$`volumeName`
      self$`metadata` <- this_object$`metadata`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to CreateFolderRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateFolderRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateFolderRequest: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateFolderRequest
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (!str_detect(self$`name`, "^[^/]+$")) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (!str_detect(self$`name`, "^[^/]+$")) {
        invalid_fields["name"] <- "Invalid value for `name`, must conform to the pattern ^[^/]+$."
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
# CreateFolderRequest$unlock()
#
## Below is an example to define the print function
# CreateFolderRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateFolderRequest$lock()

