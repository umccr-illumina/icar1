#' Create a new InputMountMappingWithCreds
#'
#' @description
#' InputMountMappingWithCreds Class
#'
#' @docType class
#' @title InputMountMappingWithCreds
#' @description InputMountMappingWithCreds Class
#' @format An \code{R6Class} generator object
#' @field storageProvider  character [optional]
#' @field credentials  named list(character) [optional]
#' @field path  character [optional]
#' @field url  character [optional]
#' @field urn  character [optional]
#' @field mode  character [optional]
#' @field type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InputMountMappingWithCreds <- R6::R6Class(
  "InputMountMappingWithCreds",
  public = list(
    `storageProvider` = NULL,
    `credentials` = NULL,
    `path` = NULL,
    `url` = NULL,
    `urn` = NULL,
    `mode` = NULL,
    `type` = NULL,
    #' Initialize a new InputMountMappingWithCreds class.
    #'
    #' @description
    #' Initialize a new InputMountMappingWithCreds class.
    #'
    #' @param storageProvider storageProvider
    #' @param credentials credentials
    #' @param path path
    #' @param url url
    #' @param urn urn
    #' @param mode mode
    #' @param type type. Default to "File".
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`storageProvider` = NULL, `credentials` = NULL, `path` = NULL, `url` = NULL, `urn` = NULL, `mode` = NULL, `type` = "File", ...) {
      if (!is.null(`storageProvider`)) {
        if (!(is.character(`storageProvider`) && length(`storageProvider`) == 1)) {
          stop(paste("Error! Invalid data for `storageProvider`. Must be a string:", `storageProvider`))
        }
        self$`storageProvider` <- `storageProvider`
      }
      if (!is.null(`credentials`)) {
        stopifnot(is.vector(`credentials`), length(`credentials`) != 0)
        sapply(`credentials`, function(x) stopifnot(is.character(x)))
        self$`credentials` <- `credentials`
      }
      if (!is.null(`path`)) {
        if (!(is.character(`path`) && length(`path`) == 1)) {
          stop(paste("Error! Invalid data for `path`. Must be a string:", `path`))
        }
        self$`path` <- `path`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`urn`)) {
        if (!(is.character(`urn`) && length(`urn`) == 1)) {
          stop(paste("Error! Invalid data for `urn`. Must be a string:", `urn`))
        }
        self$`urn` <- `urn`
      }
      if (!is.null(`mode`)) {
        if (!(is.character(`mode`) && length(`mode`) == 1)) {
          stop(paste("Error! Invalid data for `mode`. Must be a string:", `mode`))
        }
        self$`mode` <- `mode`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return InputMountMappingWithCreds in JSON format
    #' @export
    toJSON = function() {
      InputMountMappingWithCredsObject <- list()
      if (!is.null(self$`storageProvider`)) {
        InputMountMappingWithCredsObject[["storageProvider"]] <-
          self$`storageProvider`
      }
      if (!is.null(self$`credentials`)) {
        InputMountMappingWithCredsObject[["credentials"]] <-
          self$`credentials`
      }
      if (!is.null(self$`path`)) {
        InputMountMappingWithCredsObject[["path"]] <-
          self$`path`
      }
      if (!is.null(self$`url`)) {
        InputMountMappingWithCredsObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`urn`)) {
        InputMountMappingWithCredsObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`mode`)) {
        InputMountMappingWithCredsObject[["mode"]] <-
          self$`mode`
      }
      if (!is.null(self$`type`)) {
        InputMountMappingWithCredsObject[["type"]] <-
          self$`type`
      }
      InputMountMappingWithCredsObject
    },
    #' Deserialize JSON string into an instance of InputMountMappingWithCreds
    #'
    #' @description
    #' Deserialize JSON string into an instance of InputMountMappingWithCreds
    #'
    #' @param input_json the JSON input
    #' @return the instance of InputMountMappingWithCreds
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`storageProvider`)) {
        self$`storageProvider` <- this_object$`storageProvider`
      }
      if (!is.null(this_object$`credentials`)) {
        self$`credentials` <- ApiClient$new()$deserializeObj(this_object$`credentials`, "map(character)", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`path`)) {
        self$`path` <- this_object$`path`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`urn`)) {
        self$`urn` <- this_object$`urn`
      }
      if (!is.null(this_object$`mode`)) {
        self$`mode` <- this_object$`mode`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return InputMountMappingWithCreds in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`storageProvider`)) {
          sprintf(
          '"storageProvider":
            "%s"
                    ',
          self$`storageProvider`
          )
        },
        if (!is.null(self$`credentials`)) {
          sprintf(
          '"credentials":
            "%s"
          ',
          jsonlite::toJSON(lapply(self$`credentials`, function(x){ x }), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`path`)) {
          sprintf(
          '"path":
            "%s"
                    ',
          self$`path`
          )
        },
        if (!is.null(self$`url`)) {
          sprintf(
          '"url":
            "%s"
                    ',
          self$`url`
          )
        },
        if (!is.null(self$`urn`)) {
          sprintf(
          '"urn":
            "%s"
                    ',
          self$`urn`
          )
        },
        if (!is.null(self$`mode`)) {
          sprintf(
          '"mode":
            "%s"
                    ',
          self$`mode`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of InputMountMappingWithCreds
    #'
    #' @description
    #' Deserialize JSON string into an instance of InputMountMappingWithCreds
    #'
    #' @param input_json the JSON input
    #' @return the instance of InputMountMappingWithCreds
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`storageProvider` <- this_object$`storageProvider`
      self$`credentials` <- ApiClient$new()$deserializeObj(this_object$`credentials`, "map(character)", loadNamespace("icar1"))
      self$`path` <- this_object$`path`
      self$`url` <- this_object$`url`
      self$`urn` <- this_object$`urn`
      self$`mode` <- this_object$`mode`
      self$`type` <- this_object$`type`
      self
    },
    #' Validate JSON input with respect to InputMountMappingWithCreds
    #'
    #' @description
    #' Validate JSON input with respect to InputMountMappingWithCreds and throw an exception if invalid
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
    #' @return String representation of InputMountMappingWithCreds
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
# InputMountMappingWithCreds$unlock()
#
## Below is an example to define the print function
# InputMountMappingWithCreds$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InputMountMappingWithCreds$lock()

