#' Create a new CreateFileRequest
#'
#' @description
#' CreateFileRequest Model
#'
#' @docType class
#' @title CreateFileRequest
#' @description CreateFileRequest Class
#' @format An \code{R6Class} generator object
#' @field name Name of the file to be uploaded, case sensitive. character
#' @field volumeId Volume ID to which the file will be uploaded character [optional]
#' @field folderPath Optional folder path where the file will be uploaded to character [optional]
#' @field type Optional file content type, e.g. text/plain, application/json character [optional]
#' @field volumeName Name of the Volume character [optional]
#' @field format The File's Format character [optional]
#' @field formatEdam The File's Edam Format character [optional]
#' @field metadata Metadata about this file and its contents object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateFileRequest <- R6::R6Class(
  "CreateFileRequest",
  public = list(
    `name` = NULL,
    `volumeId` = NULL,
    `folderPath` = NULL,
    `type` = NULL,
    `volumeName` = NULL,
    `format` = NULL,
    `formatEdam` = NULL,
    `metadata` = NULL,
    #' Initialize a new CreateFileRequest class.
    #'
    #' @description
    #' Initialize a new CreateFileRequest class.
    #'
    #' @param name Name of the file to be uploaded, case sensitive.
    #' @param volumeId Volume ID to which the file will be uploaded
    #' @param folderPath Optional folder path where the file will be uploaded to
    #' @param type Optional file content type, e.g. text/plain, application/json
    #' @param volumeName Name of the Volume
    #' @param format The File's Format
    #' @param formatEdam The File's Edam Format
    #' @param metadata Metadata about this file and its contents
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `volumeId` = NULL, `folderPath` = NULL, `type` = NULL, `volumeName` = NULL, `format` = NULL, `formatEdam` = NULL, `metadata` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`volumeId`)) {
        if (!(is.character(`volumeId`) && length(`volumeId`) == 1)) {
          stop(paste("Error! Invalid data for `volumeId`. Must be a string:", `volumeId`))
        }
        self$`volumeId` <- `volumeId`
      }
      if (!is.null(`folderPath`)) {
        if (!(is.character(`folderPath`) && length(`folderPath`) == 1)) {
          stop(paste("Error! Invalid data for `folderPath`. Must be a string:", `folderPath`))
        }
        self$`folderPath` <- `folderPath`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`volumeName`)) {
        if (!(is.character(`volumeName`) && length(`volumeName`) == 1)) {
          stop(paste("Error! Invalid data for `volumeName`. Must be a string:", `volumeName`))
        }
        self$`volumeName` <- `volumeName`
      }
      if (!is.null(`format`)) {
        if (!(is.character(`format`) && length(`format`) == 1)) {
          stop(paste("Error! Invalid data for `format`. Must be a string:", `format`))
        }
        self$`format` <- `format`
      }
      if (!is.null(`formatEdam`)) {
        if (!(is.character(`formatEdam`) && length(`formatEdam`) == 1)) {
          stop(paste("Error! Invalid data for `formatEdam`. Must be a string:", `formatEdam`))
        }
        self$`formatEdam` <- `formatEdam`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateFileRequest in JSON format
    #' @export
    toJSON = function() {
      CreateFileRequestObject <- list()
      if (!is.null(self$`name`)) {
        CreateFileRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`volumeId`)) {
        CreateFileRequestObject[["volumeId"]] <-
          self$`volumeId`
      }
      if (!is.null(self$`folderPath`)) {
        CreateFileRequestObject[["folderPath"]] <-
          self$`folderPath`
      }
      if (!is.null(self$`type`)) {
        CreateFileRequestObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`volumeName`)) {
        CreateFileRequestObject[["volumeName"]] <-
          self$`volumeName`
      }
      if (!is.null(self$`format`)) {
        CreateFileRequestObject[["format"]] <-
          self$`format`
      }
      if (!is.null(self$`formatEdam`)) {
        CreateFileRequestObject[["formatEdam"]] <-
          self$`formatEdam`
      }
      if (!is.null(self$`metadata`)) {
        CreateFileRequestObject[["metadata"]] <-
          self$`metadata`
      }
      CreateFileRequestObject
    },
    #' Deserialize JSON string into an instance of CreateFileRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateFileRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateFileRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`volumeId`)) {
        self$`volumeId` <- this_object$`volumeId`
      }
      if (!is.null(this_object$`folderPath`)) {
        self$`folderPath` <- this_object$`folderPath`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`volumeName`)) {
        self$`volumeName` <- this_object$`volumeName`
      }
      if (!is.null(this_object$`format`)) {
        self$`format` <- this_object$`format`
      }
      if (!is.null(this_object$`formatEdam`)) {
        self$`formatEdam` <- this_object$`formatEdam`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateFileRequest in JSON format
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
        if (!is.null(self$`volumeId`)) {
          sprintf(
          '"volumeId":
            "%s"
                    ',
          self$`volumeId`
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
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
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
        if (!is.null(self$`format`)) {
          sprintf(
          '"format":
            "%s"
                    ',
          self$`format`
          )
        },
        if (!is.null(self$`formatEdam`)) {
          sprintf(
          '"formatEdam":
            "%s"
                    ',
          self$`formatEdam`
          )
        },
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
            "%s"
                    ',
          self$`metadata`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateFileRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateFileRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateFileRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`volumeId` <- this_object$`volumeId`
      self$`folderPath` <- this_object$`folderPath`
      self$`type` <- this_object$`type`
      self$`volumeName` <- this_object$`volumeName`
      self$`format` <- this_object$`format`
      self$`formatEdam` <- this_object$`formatEdam`
      self$`metadata` <- this_object$`metadata`
      self
    },
    #' Validate JSON input with respect to CreateFileRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateFileRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateFileRequest: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateFileRequest
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
# CreateFileRequest$unlock()
#
## Below is an example to define the print function
# CreateFileRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateFileRequest$lock()

