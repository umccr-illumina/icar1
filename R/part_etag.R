#' Create a new PartEtag
#'
#' @description
#' PartEtag
#'
#' @docType class
#' @title PartEtag
#' @description PartEtag Class
#' @format An \code{R6Class} generator object
#' @field part Part number integer [optional]
#' @field etag Etag response for the part upload character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartEtag <- R6::R6Class(
  "PartEtag",
  public = list(
    `part` = NULL,
    `etag` = NULL,
    #' Initialize a new PartEtag class.
    #'
    #' @description
    #' Initialize a new PartEtag class.
    #'
    #' @param part Part number
    #' @param etag Etag response for the part upload
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`part` = NULL, `etag` = NULL, ...) {
      if (!is.null(`part`)) {
        if (!(is.numeric(`part`) && length(`part`) == 1)) {
          stop(paste("Error! Invalid data for `part`. Must be an integer:", `part`))
        }
        self$`part` <- `part`
      }
      if (!is.null(`etag`)) {
        if (!(is.character(`etag`) && length(`etag`) == 1)) {
          stop(paste("Error! Invalid data for `etag`. Must be a string:", `etag`))
        }
        self$`etag` <- `etag`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartEtag in JSON format
    #' @export
    toJSON = function() {
      PartEtagObject <- list()
      if (!is.null(self$`part`)) {
        PartEtagObject[["part"]] <-
          self$`part`
      }
      if (!is.null(self$`etag`)) {
        PartEtagObject[["etag"]] <-
          self$`etag`
      }
      PartEtagObject
    },
    #' Deserialize JSON string into an instance of PartEtag
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartEtag
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartEtag
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`part`)) {
        self$`part` <- this_object$`part`
      }
      if (!is.null(this_object$`etag`)) {
        self$`etag` <- this_object$`etag`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartEtag in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`part`)) {
          sprintf(
          '"part":
            %d
                    ',
          self$`part`
          )
        },
        if (!is.null(self$`etag`)) {
          sprintf(
          '"etag":
            "%s"
                    ',
          self$`etag`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PartEtag
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartEtag
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartEtag
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`part` <- this_object$`part`
      self$`etag` <- this_object$`etag`
      self
    },
    #' Validate JSON input with respect to PartEtag
    #'
    #' @description
    #' Validate JSON input with respect to PartEtag and throw an exception if invalid
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
    #' @return String representation of PartEtag
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
# PartEtag$unlock()
#
## Below is an example to define the print function
# PartEtag$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PartEtag$lock()

