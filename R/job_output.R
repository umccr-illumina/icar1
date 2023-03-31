#' Create a new JobOutput
#'
#' @description
#' JobOutput Class
#'
#' @docType class
#' @title JobOutput
#' @description JobOutput Class
#' @format An \code{R6Class} generator object
#' @field folderCopy  \link{FileCopyOutput} [optional]
#' @field fileCopy  \link{FileCopyOutput} [optional]
#' @field folderMetadataUpdateOutput  \link{MetadataUpdateOutput} [optional]
#' @field fileMetadataUpdateOutput  \link{MetadataUpdateOutput} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobOutput <- R6::R6Class(
  "JobOutput",
  public = list(
    `folderCopy` = NULL,
    `fileCopy` = NULL,
    `folderMetadataUpdateOutput` = NULL,
    `fileMetadataUpdateOutput` = NULL,
    #' Initialize a new JobOutput class.
    #'
    #' @description
    #' Initialize a new JobOutput class.
    #'
    #' @param folderCopy folderCopy
    #' @param fileCopy fileCopy
    #' @param folderMetadataUpdateOutput folderMetadataUpdateOutput
    #' @param fileMetadataUpdateOutput fileMetadataUpdateOutput
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`folderCopy` = NULL, `fileCopy` = NULL, `folderMetadataUpdateOutput` = NULL, `fileMetadataUpdateOutput` = NULL, ...) {
      if (!is.null(`folderCopy`)) {
        stopifnot(R6::is.R6(`folderCopy`))
        self$`folderCopy` <- `folderCopy`
      }
      if (!is.null(`fileCopy`)) {
        stopifnot(R6::is.R6(`fileCopy`))
        self$`fileCopy` <- `fileCopy`
      }
      if (!is.null(`folderMetadataUpdateOutput`)) {
        stopifnot(R6::is.R6(`folderMetadataUpdateOutput`))
        self$`folderMetadataUpdateOutput` <- `folderMetadataUpdateOutput`
      }
      if (!is.null(`fileMetadataUpdateOutput`)) {
        stopifnot(R6::is.R6(`fileMetadataUpdateOutput`))
        self$`fileMetadataUpdateOutput` <- `fileMetadataUpdateOutput`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return JobOutput in JSON format
    #' @export
    toJSON = function() {
      JobOutputObject <- list()
      if (!is.null(self$`folderCopy`)) {
        JobOutputObject[["folderCopy"]] <-
          self$`folderCopy`$toJSON()
      }
      if (!is.null(self$`fileCopy`)) {
        JobOutputObject[["fileCopy"]] <-
          self$`fileCopy`$toJSON()
      }
      if (!is.null(self$`folderMetadataUpdateOutput`)) {
        JobOutputObject[["folderMetadataUpdateOutput"]] <-
          self$`folderMetadataUpdateOutput`$toJSON()
      }
      if (!is.null(self$`fileMetadataUpdateOutput`)) {
        JobOutputObject[["fileMetadataUpdateOutput"]] <-
          self$`fileMetadataUpdateOutput`$toJSON()
      }
      JobOutputObject
    },
    #' Deserialize JSON string into an instance of JobOutput
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobOutput
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobOutput
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`folderCopy`)) {
        `foldercopy_object` <- FileCopyOutput$new()
        `foldercopy_object`$fromJSON(jsonlite::toJSON(this_object$`folderCopy`, auto_unbox = TRUE, digits = NA))
        self$`folderCopy` <- `foldercopy_object`
      }
      if (!is.null(this_object$`fileCopy`)) {
        `filecopy_object` <- FileCopyOutput$new()
        `filecopy_object`$fromJSON(jsonlite::toJSON(this_object$`fileCopy`, auto_unbox = TRUE, digits = NA))
        self$`fileCopy` <- `filecopy_object`
      }
      if (!is.null(this_object$`folderMetadataUpdateOutput`)) {
        `foldermetadataupdateoutput_object` <- MetadataUpdateOutput$new()
        `foldermetadataupdateoutput_object`$fromJSON(jsonlite::toJSON(this_object$`folderMetadataUpdateOutput`, auto_unbox = TRUE, digits = NA))
        self$`folderMetadataUpdateOutput` <- `foldermetadataupdateoutput_object`
      }
      if (!is.null(this_object$`fileMetadataUpdateOutput`)) {
        `filemetadataupdateoutput_object` <- MetadataUpdateOutput$new()
        `filemetadataupdateoutput_object`$fromJSON(jsonlite::toJSON(this_object$`fileMetadataUpdateOutput`, auto_unbox = TRUE, digits = NA))
        self$`fileMetadataUpdateOutput` <- `filemetadataupdateoutput_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return JobOutput in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`folderCopy`)) {
          sprintf(
          '"folderCopy":
          %s
          ',
          jsonlite::toJSON(self$`folderCopy`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fileCopy`)) {
          sprintf(
          '"fileCopy":
          %s
          ',
          jsonlite::toJSON(self$`fileCopy`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`folderMetadataUpdateOutput`)) {
          sprintf(
          '"folderMetadataUpdateOutput":
          %s
          ',
          jsonlite::toJSON(self$`folderMetadataUpdateOutput`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`fileMetadataUpdateOutput`)) {
          sprintf(
          '"fileMetadataUpdateOutput":
          %s
          ',
          jsonlite::toJSON(self$`fileMetadataUpdateOutput`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of JobOutput
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobOutput
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobOutput
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`folderCopy` <- FileCopyOutput$new()$fromJSON(jsonlite::toJSON(this_object$`folderCopy`, auto_unbox = TRUE, digits = NA))
      self$`fileCopy` <- FileCopyOutput$new()$fromJSON(jsonlite::toJSON(this_object$`fileCopy`, auto_unbox = TRUE, digits = NA))
      self$`folderMetadataUpdateOutput` <- MetadataUpdateOutput$new()$fromJSON(jsonlite::toJSON(this_object$`folderMetadataUpdateOutput`, auto_unbox = TRUE, digits = NA))
      self$`fileMetadataUpdateOutput` <- MetadataUpdateOutput$new()$fromJSON(jsonlite::toJSON(this_object$`fileMetadataUpdateOutput`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to JobOutput
    #'
    #' @description
    #' Validate JSON input with respect to JobOutput and throw an exception if invalid
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
    #' @return String representation of JobOutput
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
# JobOutput$unlock()
#
## Below is an example to define the print function
# JobOutput$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JobOutput$lock()

