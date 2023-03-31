#' Create a new FileUploadCompleteRequest
#'
#' @description
#' FileUploadCompleteRequest
#'
#' @docType class
#' @title FileUploadCompleteRequest
#' @description FileUploadCompleteRequest Class
#' @format An \code{R6Class} generator object
#' @field multipartUploadId The multipart upload id used by the object store character [optional]
#' @field partEtags etags for each uploaded part (optional for files that uses multipart upload) list(\link{PartEtag}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileUploadCompleteRequest <- R6::R6Class(
  "FileUploadCompleteRequest",
  public = list(
    `multipartUploadId` = NULL,
    `partEtags` = NULL,
    #' Initialize a new FileUploadCompleteRequest class.
    #'
    #' @description
    #' Initialize a new FileUploadCompleteRequest class.
    #'
    #' @param multipartUploadId The multipart upload id used by the object store
    #' @param partEtags etags for each uploaded part (optional for files that uses multipart upload)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`multipartUploadId` = NULL, `partEtags` = NULL, ...) {
      if (!is.null(`multipartUploadId`)) {
        if (!(is.character(`multipartUploadId`) && length(`multipartUploadId`) == 1)) {
          stop(paste("Error! Invalid data for `multipartUploadId`. Must be a string:", `multipartUploadId`))
        }
        self$`multipartUploadId` <- `multipartUploadId`
      }
      if (!is.null(`partEtags`)) {
        stopifnot(is.vector(`partEtags`), length(`partEtags`) != 0)
        sapply(`partEtags`, function(x) stopifnot(R6::is.R6(x)))
        self$`partEtags` <- `partEtags`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileUploadCompleteRequest in JSON format
    #' @export
    toJSON = function() {
      FileUploadCompleteRequestObject <- list()
      if (!is.null(self$`multipartUploadId`)) {
        FileUploadCompleteRequestObject[["multipartUploadId"]] <-
          self$`multipartUploadId`
      }
      if (!is.null(self$`partEtags`)) {
        FileUploadCompleteRequestObject[["partEtags"]] <-
          lapply(self$`partEtags`, function(x) x$toJSON())
      }
      FileUploadCompleteRequestObject
    },
    #' Deserialize JSON string into an instance of FileUploadCompleteRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileUploadCompleteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileUploadCompleteRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`multipartUploadId`)) {
        self$`multipartUploadId` <- this_object$`multipartUploadId`
      }
      if (!is.null(this_object$`partEtags`)) {
        self$`partEtags` <- ApiClient$new()$deserializeObj(this_object$`partEtags`, "array[PartEtag]", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileUploadCompleteRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`multipartUploadId`)) {
          sprintf(
          '"multipartUploadId":
            "%s"
                    ',
          self$`multipartUploadId`
          )
        },
        if (!is.null(self$`partEtags`)) {
          sprintf(
          '"partEtags":
          [%s]
',
          paste(sapply(self$`partEtags`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FileUploadCompleteRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileUploadCompleteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileUploadCompleteRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`multipartUploadId` <- this_object$`multipartUploadId`
      self$`partEtags` <- ApiClient$new()$deserializeObj(this_object$`partEtags`, "array[PartEtag]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to FileUploadCompleteRequest
    #'
    #' @description
    #' Validate JSON input with respect to FileUploadCompleteRequest and throw an exception if invalid
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
    #' @return String representation of FileUploadCompleteRequest
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
# FileUploadCompleteRequest$unlock()
#
## Below is an example to define the print function
# FileUploadCompleteRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FileUploadCompleteRequest$lock()

