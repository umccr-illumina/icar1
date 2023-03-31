#' Create a new InputStreamSettings
#'
#' @description
#' InputStreamSettings Class
#'
#' @docType class
#' @title InputStreamSettings
#' @description InputStreamSettings Class
#' @format An \code{R6Class} generator object
#' @field accessPattern  character [optional]
#' @field cacheSizeGB  integer [optional]
#' @field blockSizeMB  numeric [optional]
#' @field prefetchBlocks  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InputStreamSettings <- R6::R6Class(
  "InputStreamSettings",
  public = list(
    `accessPattern` = NULL,
    `cacheSizeGB` = NULL,
    `blockSizeMB` = NULL,
    `prefetchBlocks` = NULL,
    #' Initialize a new InputStreamSettings class.
    #'
    #' @description
    #' Initialize a new InputStreamSettings class.
    #'
    #' @param accessPattern accessPattern. Default to "sequential".
    #' @param cacheSizeGB cacheSizeGB. Default to 50.
    #' @param blockSizeMB blockSizeMB. Default to 32.0.
    #' @param prefetchBlocks prefetchBlocks. Default to 32.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`accessPattern` = "sequential", `cacheSizeGB` = 50, `blockSizeMB` = 32.0, `prefetchBlocks` = 32, ...) {
      if (!is.null(`accessPattern`)) {
        if (!(is.character(`accessPattern`) && length(`accessPattern`) == 1)) {
          stop(paste("Error! Invalid data for `accessPattern`. Must be a string:", `accessPattern`))
        }
        self$`accessPattern` <- `accessPattern`
      }
      if (!is.null(`cacheSizeGB`)) {
        if (!(is.numeric(`cacheSizeGB`) && length(`cacheSizeGB`) == 1)) {
          stop(paste("Error! Invalid data for `cacheSizeGB`. Must be an integer:", `cacheSizeGB`))
        }
        self$`cacheSizeGB` <- `cacheSizeGB`
      }
      if (!is.null(`blockSizeMB`)) {
        if (!(is.numeric(`blockSizeMB`) && length(`blockSizeMB`) == 1)) {
          stop(paste("Error! Invalid data for `blockSizeMB`. Must be a number:", `blockSizeMB`))
        }
        self$`blockSizeMB` <- `blockSizeMB`
      }
      if (!is.null(`prefetchBlocks`)) {
        if (!(is.numeric(`prefetchBlocks`) && length(`prefetchBlocks`) == 1)) {
          stop(paste("Error! Invalid data for `prefetchBlocks`. Must be an integer:", `prefetchBlocks`))
        }
        self$`prefetchBlocks` <- `prefetchBlocks`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return InputStreamSettings in JSON format
    #' @export
    toJSON = function() {
      InputStreamSettingsObject <- list()
      if (!is.null(self$`accessPattern`)) {
        InputStreamSettingsObject[["accessPattern"]] <-
          self$`accessPattern`
      }
      if (!is.null(self$`cacheSizeGB`)) {
        InputStreamSettingsObject[["cacheSizeGB"]] <-
          self$`cacheSizeGB`
      }
      if (!is.null(self$`blockSizeMB`)) {
        InputStreamSettingsObject[["blockSizeMB"]] <-
          self$`blockSizeMB`
      }
      if (!is.null(self$`prefetchBlocks`)) {
        InputStreamSettingsObject[["prefetchBlocks"]] <-
          self$`prefetchBlocks`
      }
      InputStreamSettingsObject
    },
    #' Deserialize JSON string into an instance of InputStreamSettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of InputStreamSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of InputStreamSettings
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accessPattern`)) {
        self$`accessPattern` <- this_object$`accessPattern`
      }
      if (!is.null(this_object$`cacheSizeGB`)) {
        self$`cacheSizeGB` <- this_object$`cacheSizeGB`
      }
      if (!is.null(this_object$`blockSizeMB`)) {
        self$`blockSizeMB` <- this_object$`blockSizeMB`
      }
      if (!is.null(this_object$`prefetchBlocks`)) {
        self$`prefetchBlocks` <- this_object$`prefetchBlocks`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return InputStreamSettings in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`accessPattern`)) {
          sprintf(
          '"accessPattern":
            "%s"
                    ',
          self$`accessPattern`
          )
        },
        if (!is.null(self$`cacheSizeGB`)) {
          sprintf(
          '"cacheSizeGB":
            %d
                    ',
          self$`cacheSizeGB`
          )
        },
        if (!is.null(self$`blockSizeMB`)) {
          sprintf(
          '"blockSizeMB":
            %d
                    ',
          self$`blockSizeMB`
          )
        },
        if (!is.null(self$`prefetchBlocks`)) {
          sprintf(
          '"prefetchBlocks":
            %d
                    ',
          self$`prefetchBlocks`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of InputStreamSettings
    #'
    #' @description
    #' Deserialize JSON string into an instance of InputStreamSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of InputStreamSettings
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accessPattern` <- this_object$`accessPattern`
      self$`cacheSizeGB` <- this_object$`cacheSizeGB`
      self$`blockSizeMB` <- this_object$`blockSizeMB`
      self$`prefetchBlocks` <- this_object$`prefetchBlocks`
      self
    },
    #' Validate JSON input with respect to InputStreamSettings
    #'
    #' @description
    #' Validate JSON input with respect to InputStreamSettings and throw an exception if invalid
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
    #' @return String representation of InputStreamSettings
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
      if (self$`cacheSizeGB` > 10000) {
        return(FALSE)
      }
      if (self$`cacheSizeGB` < 50) {
        return(FALSE)
      }

      if (self$`blockSizeMB` > 1024) {
        return(FALSE)
      }
      if (self$`blockSizeMB` < 0) {
        return(FALSE)
      }

      if (self$`prefetchBlocks` > 64) {
        return(FALSE)
      }
      if (self$`prefetchBlocks` < 0) {
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
      if (self$`cacheSizeGB` > 10000) {
        invalid_fields["cacheSizeGB"] <- "Invalid value for `cacheSizeGB`, must be smaller than or equal to 10000."
      }
      if (self$`cacheSizeGB` < 50) {
        invalid_fields["cacheSizeGB"] <- "Invalid value for `cacheSizeGB`, must be bigger than or equal to 50."
      }

      if (self$`blockSizeMB` > 1024) {
        invalid_fields["blockSizeMB"] <- "Invalid value for `blockSizeMB`, must be smaller than or equal to 1024."
      }
      if (self$`blockSizeMB` < 0) {
        invalid_fields["blockSizeMB"] <- "Invalid value for `blockSizeMB`, must be bigger than or equal to 0."
      }

      if (self$`prefetchBlocks` > 64) {
        invalid_fields["prefetchBlocks"] <- "Invalid value for `prefetchBlocks`, must be smaller than or equal to 64."
      }
      if (self$`prefetchBlocks` < 0) {
        invalid_fields["prefetchBlocks"] <- "Invalid value for `prefetchBlocks`, must be bigger than or equal to 0."
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
# InputStreamSettings$unlock()
#
## Below is an example to define the print function
# InputStreamSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InputStreamSettings$lock()

