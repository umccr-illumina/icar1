#' Create a new VolumeFileListRequest
#'
#' @description
#' Request for listing files within a volume
#'
#' @docType class
#' @title VolumeFileListRequest
#' @description VolumeFileListRequest Class
#' @format An \code{R6Class} generator object
#' @field volumeId Volume identifier character [optional]
#' @field fileIds File identifiers to list list(character) [optional]
#' @field includePresignedUrl Optional parameter that returns presigned URL for each file when set to true character [optional]
#' @field presignedUrlMode Optional parameter to specify presigned url's content-disposition. If not specified, the browser will determine the default behavior.  Possible values: Attachment, Inline, Browser character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VolumeFileListRequest <- R6::R6Class(
  "VolumeFileListRequest",
  public = list(
    `volumeId` = NULL,
    `fileIds` = NULL,
    `includePresignedUrl` = NULL,
    `presignedUrlMode` = NULL,
    #' Initialize a new VolumeFileListRequest class.
    #'
    #' @description
    #' Initialize a new VolumeFileListRequest class.
    #'
    #' @param volumeId Volume identifier
    #' @param fileIds File identifiers to list
    #' @param includePresignedUrl Optional parameter that returns presigned URL for each file when set to true
    #' @param presignedUrlMode Optional parameter to specify presigned url's content-disposition. If not specified, the browser will determine the default behavior.  Possible values: Attachment, Inline, Browser
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`volumeId` = NULL, `fileIds` = NULL, `includePresignedUrl` = NULL, `presignedUrlMode` = NULL, ...) {
      if (!is.null(`volumeId`)) {
        if (!(is.character(`volumeId`) && length(`volumeId`) == 1)) {
          stop(paste("Error! Invalid data for `volumeId`. Must be a string:", `volumeId`))
        }
        self$`volumeId` <- `volumeId`
      }
      if (!is.null(`fileIds`)) {
        stopifnot(is.vector(`fileIds`), length(`fileIds`) != 0)
        sapply(`fileIds`, function(x) stopifnot(is.character(x)))
        self$`fileIds` <- `fileIds`
      }
      if (!is.null(`includePresignedUrl`)) {
        if (!(is.logical(`includePresignedUrl`) && length(`includePresignedUrl`) == 1)) {
          stop(paste("Error! Invalid data for `includePresignedUrl`. Must be a boolean:", `includePresignedUrl`))
        }
        self$`includePresignedUrl` <- `includePresignedUrl`
      }
      if (!is.null(`presignedUrlMode`)) {
        if (!(is.character(`presignedUrlMode`) && length(`presignedUrlMode`) == 1)) {
          stop(paste("Error! Invalid data for `presignedUrlMode`. Must be a string:", `presignedUrlMode`))
        }
        self$`presignedUrlMode` <- `presignedUrlMode`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VolumeFileListRequest in JSON format
    #' @export
    toJSON = function() {
      VolumeFileListRequestObject <- list()
      if (!is.null(self$`volumeId`)) {
        VolumeFileListRequestObject[["volumeId"]] <-
          self$`volumeId`
      }
      if (!is.null(self$`fileIds`)) {
        VolumeFileListRequestObject[["fileIds"]] <-
          self$`fileIds`
      }
      if (!is.null(self$`includePresignedUrl`)) {
        VolumeFileListRequestObject[["includePresignedUrl"]] <-
          self$`includePresignedUrl`
      }
      if (!is.null(self$`presignedUrlMode`)) {
        VolumeFileListRequestObject[["presignedUrlMode"]] <-
          self$`presignedUrlMode`
      }
      VolumeFileListRequestObject
    },
    #' Deserialize JSON string into an instance of VolumeFileListRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeFileListRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeFileListRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`volumeId`)) {
        self$`volumeId` <- this_object$`volumeId`
      }
      if (!is.null(this_object$`fileIds`)) {
        self$`fileIds` <- ApiClient$new()$deserializeObj(this_object$`fileIds`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`includePresignedUrl`)) {
        self$`includePresignedUrl` <- this_object$`includePresignedUrl`
      }
      if (!is.null(this_object$`presignedUrlMode`)) {
        self$`presignedUrlMode` <- this_object$`presignedUrlMode`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VolumeFileListRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`volumeId`)) {
          sprintf(
          '"volumeId":
            "%s"
                    ',
          self$`volumeId`
          )
        },
        if (!is.null(self$`fileIds`)) {
          sprintf(
          '"fileIds":
             [%s]
          ',
          paste(unlist(lapply(self$`fileIds`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`includePresignedUrl`)) {
          sprintf(
          '"includePresignedUrl":
            %s
                    ',
          tolower(self$`includePresignedUrl`)
          )
        },
        if (!is.null(self$`presignedUrlMode`)) {
          sprintf(
          '"presignedUrlMode":
            "%s"
                    ',
          self$`presignedUrlMode`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of VolumeFileListRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeFileListRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeFileListRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`volumeId` <- this_object$`volumeId`
      self$`fileIds` <- ApiClient$new()$deserializeObj(this_object$`fileIds`, "array[character]", loadNamespace("icar1"))
      self$`includePresignedUrl` <- this_object$`includePresignedUrl`
      self$`presignedUrlMode` <- this_object$`presignedUrlMode`
      self
    },
    #' Validate JSON input with respect to VolumeFileListRequest
    #'
    #' @description
    #' Validate JSON input with respect to VolumeFileListRequest and throw an exception if invalid
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
    #' @return String representation of VolumeFileListRequest
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
# VolumeFileListRequest$unlock()
#
## Below is an example to define the print function
# VolumeFileListRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VolumeFileListRequest$lock()

