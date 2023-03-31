#' Create a new FileListResponse
#'
#' @description
#' FileListResponse Class
#'
#' @docType class
#' @title FileListResponse
#' @description FileListResponse Class
#' @format An \code{R6Class} generator object
#' @field items Items in paged list list(\link{FileResponse}) [optional]
#' @field itemCount Number of items included in the page integer [optional]
#' @field firstPageToken PageToken for first paged list character [optional]
#' @field nextPageToken PageToken for the next paged list character [optional]
#' @field prevPageToken PageToken for the previous paged list character [optional]
#' @field lastPageToken PageToken for the last paged list. Only included when totalItemCount is listed character [optional]
#' @field totalItemCount Total number of items in all pages. Only included when requested integer [optional]
#' @field totalPageCount Total number of pages. Only included when totalItemCount is listed integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileListResponse <- R6::R6Class(
  "FileListResponse",
  public = list(
    `items` = NULL,
    `itemCount` = NULL,
    `firstPageToken` = NULL,
    `nextPageToken` = NULL,
    `prevPageToken` = NULL,
    `lastPageToken` = NULL,
    `totalItemCount` = NULL,
    `totalPageCount` = NULL,
    #' Initialize a new FileListResponse class.
    #'
    #' @description
    #' Initialize a new FileListResponse class.
    #'
    #' @param items Items in paged list
    #' @param itemCount Number of items included in the page
    #' @param firstPageToken PageToken for first paged list
    #' @param nextPageToken PageToken for the next paged list
    #' @param prevPageToken PageToken for the previous paged list
    #' @param lastPageToken PageToken for the last paged list. Only included when totalItemCount is listed
    #' @param totalItemCount Total number of items in all pages. Only included when requested
    #' @param totalPageCount Total number of pages. Only included when totalItemCount is listed
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`items` = NULL, `itemCount` = NULL, `firstPageToken` = NULL, `nextPageToken` = NULL, `prevPageToken` = NULL, `lastPageToken` = NULL, `totalItemCount` = NULL, `totalPageCount` = NULL, ...) {
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`itemCount`)) {
        if (!(is.numeric(`itemCount`) && length(`itemCount`) == 1)) {
          stop(paste("Error! Invalid data for `itemCount`. Must be an integer:", `itemCount`))
        }
        self$`itemCount` <- `itemCount`
      }
      if (!is.null(`firstPageToken`)) {
        if (!(is.character(`firstPageToken`) && length(`firstPageToken`) == 1)) {
          stop(paste("Error! Invalid data for `firstPageToken`. Must be a string:", `firstPageToken`))
        }
        self$`firstPageToken` <- `firstPageToken`
      }
      if (!is.null(`nextPageToken`)) {
        if (!(is.character(`nextPageToken`) && length(`nextPageToken`) == 1)) {
          stop(paste("Error! Invalid data for `nextPageToken`. Must be a string:", `nextPageToken`))
        }
        self$`nextPageToken` <- `nextPageToken`
      }
      if (!is.null(`prevPageToken`)) {
        if (!(is.character(`prevPageToken`) && length(`prevPageToken`) == 1)) {
          stop(paste("Error! Invalid data for `prevPageToken`. Must be a string:", `prevPageToken`))
        }
        self$`prevPageToken` <- `prevPageToken`
      }
      if (!is.null(`lastPageToken`)) {
        if (!(is.character(`lastPageToken`) && length(`lastPageToken`) == 1)) {
          stop(paste("Error! Invalid data for `lastPageToken`. Must be a string:", `lastPageToken`))
        }
        self$`lastPageToken` <- `lastPageToken`
      }
      if (!is.null(`totalItemCount`)) {
        if (!(is.numeric(`totalItemCount`) && length(`totalItemCount`) == 1)) {
          stop(paste("Error! Invalid data for `totalItemCount`. Must be an integer:", `totalItemCount`))
        }
        self$`totalItemCount` <- `totalItemCount`
      }
      if (!is.null(`totalPageCount`)) {
        if (!(is.numeric(`totalPageCount`) && length(`totalPageCount`) == 1)) {
          stop(paste("Error! Invalid data for `totalPageCount`. Must be an integer:", `totalPageCount`))
        }
        self$`totalPageCount` <- `totalPageCount`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileListResponse in JSON format
    #' @export
    toJSON = function() {
      FileListResponseObject <- list()
      if (!is.null(self$`items`)) {
        FileListResponseObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      if (!is.null(self$`itemCount`)) {
        FileListResponseObject[["itemCount"]] <-
          self$`itemCount`
      }
      if (!is.null(self$`firstPageToken`)) {
        FileListResponseObject[["firstPageToken"]] <-
          self$`firstPageToken`
      }
      if (!is.null(self$`nextPageToken`)) {
        FileListResponseObject[["nextPageToken"]] <-
          self$`nextPageToken`
      }
      if (!is.null(self$`prevPageToken`)) {
        FileListResponseObject[["prevPageToken"]] <-
          self$`prevPageToken`
      }
      if (!is.null(self$`lastPageToken`)) {
        FileListResponseObject[["lastPageToken"]] <-
          self$`lastPageToken`
      }
      if (!is.null(self$`totalItemCount`)) {
        FileListResponseObject[["totalItemCount"]] <-
          self$`totalItemCount`
      }
      if (!is.null(self$`totalPageCount`)) {
        FileListResponseObject[["totalPageCount"]] <-
          self$`totalPageCount`
      }
      FileListResponseObject
    },
    #' Deserialize JSON string into an instance of FileListResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileListResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[FileResponse]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`itemCount`)) {
        self$`itemCount` <- this_object$`itemCount`
      }
      if (!is.null(this_object$`firstPageToken`)) {
        self$`firstPageToken` <- this_object$`firstPageToken`
      }
      if (!is.null(this_object$`nextPageToken`)) {
        self$`nextPageToken` <- this_object$`nextPageToken`
      }
      if (!is.null(this_object$`prevPageToken`)) {
        self$`prevPageToken` <- this_object$`prevPageToken`
      }
      if (!is.null(this_object$`lastPageToken`)) {
        self$`lastPageToken` <- this_object$`lastPageToken`
      }
      if (!is.null(this_object$`totalItemCount`)) {
        self$`totalItemCount` <- this_object$`totalItemCount`
      }
      if (!is.null(this_object$`totalPageCount`)) {
        self$`totalPageCount` <- this_object$`totalPageCount`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileListResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`items`)) {
          sprintf(
          '"items":
          [%s]
',
          paste(sapply(self$`items`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`itemCount`)) {
          sprintf(
          '"itemCount":
            %d
                    ',
          self$`itemCount`
          )
        },
        if (!is.null(self$`firstPageToken`)) {
          sprintf(
          '"firstPageToken":
            "%s"
                    ',
          self$`firstPageToken`
          )
        },
        if (!is.null(self$`nextPageToken`)) {
          sprintf(
          '"nextPageToken":
            "%s"
                    ',
          self$`nextPageToken`
          )
        },
        if (!is.null(self$`prevPageToken`)) {
          sprintf(
          '"prevPageToken":
            "%s"
                    ',
          self$`prevPageToken`
          )
        },
        if (!is.null(self$`lastPageToken`)) {
          sprintf(
          '"lastPageToken":
            "%s"
                    ',
          self$`lastPageToken`
          )
        },
        if (!is.null(self$`totalItemCount`)) {
          sprintf(
          '"totalItemCount":
            %d
                    ',
          self$`totalItemCount`
          )
        },
        if (!is.null(self$`totalPageCount`)) {
          sprintf(
          '"totalPageCount":
            %d
                    ',
          self$`totalPageCount`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FileListResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileListResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[FileResponse]", loadNamespace("icar1"))
      self$`itemCount` <- this_object$`itemCount`
      self$`firstPageToken` <- this_object$`firstPageToken`
      self$`nextPageToken` <- this_object$`nextPageToken`
      self$`prevPageToken` <- this_object$`prevPageToken`
      self$`lastPageToken` <- this_object$`lastPageToken`
      self$`totalItemCount` <- this_object$`totalItemCount`
      self$`totalPageCount` <- this_object$`totalPageCount`
      self
    },
    #' Validate JSON input with respect to FileListResponse
    #'
    #' @description
    #' Validate JSON input with respect to FileListResponse and throw an exception if invalid
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
    #' @return String representation of FileListResponse
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
# FileListResponse$unlock()
#
## Below is an example to define the print function
# FileListResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FileListResponse$lock()

