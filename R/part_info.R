#' Create a new PartInfo
#'
#' @description
#' PartInfo of multi parts presigned url for upload
#'
#' @docType class
#' @title PartInfo
#' @description PartInfo Class
#' @format An \code{R6Class} generator object
#' @field part Part number to be applied to {part} in MultipartTemplate integer [optional]
#' @field date Date to be applied to {date} in MultipartTemplate character [optional]
#' @field dateTime DateTime to be applied to {datetime} in MultipartTemplate character [optional]
#' @field signature Signature to be applied to {signature} in MultipartTemplate character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartInfo <- R6::R6Class(
  "PartInfo",
  public = list(
    `part` = NULL,
    `date` = NULL,
    `dateTime` = NULL,
    `signature` = NULL,
    #' Initialize a new PartInfo class.
    #'
    #' @description
    #' Initialize a new PartInfo class.
    #'
    #' @param part Part number to be applied to {part} in MultipartTemplate
    #' @param date Date to be applied to {date} in MultipartTemplate
    #' @param dateTime DateTime to be applied to {datetime} in MultipartTemplate
    #' @param signature Signature to be applied to {signature} in MultipartTemplate
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`part` = NULL, `date` = NULL, `dateTime` = NULL, `signature` = NULL, ...) {
      if (!is.null(`part`)) {
        if (!(is.numeric(`part`) && length(`part`) == 1)) {
          stop(paste("Error! Invalid data for `part`. Must be an integer:", `part`))
        }
        self$`part` <- `part`
      }
      if (!is.null(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`dateTime`)) {
        if (!(is.character(`dateTime`) && length(`dateTime`) == 1)) {
          stop(paste("Error! Invalid data for `dateTime`. Must be a string:", `dateTime`))
        }
        self$`dateTime` <- `dateTime`
      }
      if (!is.null(`signature`)) {
        if (!(is.character(`signature`) && length(`signature`) == 1)) {
          stop(paste("Error! Invalid data for `signature`. Must be a string:", `signature`))
        }
        self$`signature` <- `signature`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartInfo in JSON format
    #' @export
    toJSON = function() {
      PartInfoObject <- list()
      if (!is.null(self$`part`)) {
        PartInfoObject[["part"]] <-
          self$`part`
      }
      if (!is.null(self$`date`)) {
        PartInfoObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`dateTime`)) {
        PartInfoObject[["dateTime"]] <-
          self$`dateTime`
      }
      if (!is.null(self$`signature`)) {
        PartInfoObject[["signature"]] <-
          self$`signature`
      }
      PartInfoObject
    },
    #' Deserialize JSON string into an instance of PartInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartInfo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`part`)) {
        self$`part` <- this_object$`part`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`dateTime`)) {
        self$`dateTime` <- this_object$`dateTime`
      }
      if (!is.null(this_object$`signature`)) {
        self$`signature` <- this_object$`signature`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PartInfo in JSON format
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
        if (!is.null(self$`date`)) {
          sprintf(
          '"date":
            "%s"
                    ',
          self$`date`
          )
        },
        if (!is.null(self$`dateTime`)) {
          sprintf(
          '"dateTime":
            "%s"
                    ',
          self$`dateTime`
          )
        },
        if (!is.null(self$`signature`)) {
          sprintf(
          '"signature":
            "%s"
                    ',
          self$`signature`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PartInfo
    #'
    #' @description
    #' Deserialize JSON string into an instance of PartInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartInfo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`part` <- this_object$`part`
      self$`date` <- this_object$`date`
      self$`dateTime` <- this_object$`dateTime`
      self$`signature` <- this_object$`signature`
      self
    },
    #' Validate JSON input with respect to PartInfo
    #'
    #' @description
    #' Validate JSON input with respect to PartInfo and throw an exception if invalid
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
    #' @return String representation of PartInfo
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
# PartInfo$unlock()
#
## Below is an example to define the print function
# PartInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PartInfo$lock()

