#' Create a new Image
#'
#' @description
#' Image Class
#'
#' @docType class
#' @title Image
#' @description Image Class
#' @format An \code{R6Class} generator object
#' @field name Name of url for Docker Image character
#' @field tag Version of image as defined in repository character [optional]
#' @field digest Version of image as defined in repository character [optional]
#' @field credentials  \link{Credentials} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Image <- R6::R6Class(
  "Image",
  public = list(
    `name` = NULL,
    `tag` = NULL,
    `digest` = NULL,
    `credentials` = NULL,
    #' Initialize a new Image class.
    #'
    #' @description
    #' Initialize a new Image class.
    #'
    #' @param name Name of url for Docker Image
    #' @param tag Version of image as defined in repository
    #' @param digest Version of image as defined in repository
    #' @param credentials credentials
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `tag` = NULL, `digest` = NULL, `credentials` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`tag`)) {
        if (!(is.character(`tag`) && length(`tag`) == 1)) {
          stop(paste("Error! Invalid data for `tag`. Must be a string:", `tag`))
        }
        self$`tag` <- `tag`
      }
      if (!is.null(`digest`)) {
        if (!(is.character(`digest`) && length(`digest`) == 1)) {
          stop(paste("Error! Invalid data for `digest`. Must be a string:", `digest`))
        }
        self$`digest` <- `digest`
      }
      if (!is.null(`credentials`)) {
        stopifnot(R6::is.R6(`credentials`))
        self$`credentials` <- `credentials`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Image in JSON format
    #' @export
    toJSON = function() {
      ImageObject <- list()
      if (!is.null(self$`name`)) {
        ImageObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`tag`)) {
        ImageObject[["tag"]] <-
          self$`tag`
      }
      if (!is.null(self$`digest`)) {
        ImageObject[["digest"]] <-
          self$`digest`
      }
      if (!is.null(self$`credentials`)) {
        ImageObject[["credentials"]] <-
          self$`credentials`$toJSON()
      }
      ImageObject
    },
    #' Deserialize JSON string into an instance of Image
    #'
    #' @description
    #' Deserialize JSON string into an instance of Image
    #'
    #' @param input_json the JSON input
    #' @return the instance of Image
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`tag`)) {
        self$`tag` <- this_object$`tag`
      }
      if (!is.null(this_object$`digest`)) {
        self$`digest` <- this_object$`digest`
      }
      if (!is.null(this_object$`credentials`)) {
        `credentials_object` <- Credentials$new()
        `credentials_object`$fromJSON(jsonlite::toJSON(this_object$`credentials`, auto_unbox = TRUE, digits = NA))
        self$`credentials` <- `credentials_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Image in JSON format
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
        if (!is.null(self$`tag`)) {
          sprintf(
          '"tag":
            "%s"
                    ',
          self$`tag`
          )
        },
        if (!is.null(self$`digest`)) {
          sprintf(
          '"digest":
            "%s"
                    ',
          self$`digest`
          )
        },
        if (!is.null(self$`credentials`)) {
          sprintf(
          '"credentials":
          %s
          ',
          jsonlite::toJSON(self$`credentials`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Image
    #'
    #' @description
    #' Deserialize JSON string into an instance of Image
    #'
    #' @param input_json the JSON input
    #' @return the instance of Image
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`tag` <- this_object$`tag`
      self$`digest` <- this_object$`digest`
      self$`credentials` <- Credentials$new()$fromJSON(jsonlite::toJSON(this_object$`credentials`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to Image
    #'
    #' @description
    #' Validate JSON input with respect to Image and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Image: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Image
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
# Image$unlock()
#
## Below is an example to define the print function
# Image$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Image$lock()

