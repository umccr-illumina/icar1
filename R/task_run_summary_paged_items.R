#' Create a new TaskRunSummaryPagedItems
#'
#' @description
#' TaskRunSummaryPagedItems Class
#'
#' @docType class
#' @title TaskRunSummaryPagedItems
#' @description TaskRunSummaryPagedItems Class
#' @format An \code{R6Class} generator object
#' @field items  list(\link{TaskRunSummary}) [optional]
#' @field itemCount  integer [optional]
#' @field firstPageToken  character [optional]
#' @field nextPageToken  character [optional]
#' @field prevPageToken  character [optional]
#' @field lastPageToken  character [optional]
#' @field totalItemCount  integer [optional]
#' @field totalPageCount  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TaskRunSummaryPagedItems <- R6::R6Class(
  "TaskRunSummaryPagedItems",
  public = list(
    `items` = NULL,
    `itemCount` = NULL,
    `firstPageToken` = NULL,
    `nextPageToken` = NULL,
    `prevPageToken` = NULL,
    `lastPageToken` = NULL,
    `totalItemCount` = NULL,
    `totalPageCount` = NULL,
    #' Initialize a new TaskRunSummaryPagedItems class.
    #'
    #' @description
    #' Initialize a new TaskRunSummaryPagedItems class.
    #'
    #' @param items items
    #' @param itemCount itemCount
    #' @param firstPageToken firstPageToken
    #' @param nextPageToken nextPageToken
    #' @param prevPageToken prevPageToken
    #' @param lastPageToken lastPageToken
    #' @param totalItemCount totalItemCount
    #' @param totalPageCount totalPageCount
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
    #' @return TaskRunSummaryPagedItems in JSON format
    #' @export
    toJSON = function() {
      TaskRunSummaryPagedItemsObject <- list()
      if (!is.null(self$`items`)) {
        TaskRunSummaryPagedItemsObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      if (!is.null(self$`itemCount`)) {
        TaskRunSummaryPagedItemsObject[["itemCount"]] <-
          self$`itemCount`
      }
      if (!is.null(self$`firstPageToken`)) {
        TaskRunSummaryPagedItemsObject[["firstPageToken"]] <-
          self$`firstPageToken`
      }
      if (!is.null(self$`nextPageToken`)) {
        TaskRunSummaryPagedItemsObject[["nextPageToken"]] <-
          self$`nextPageToken`
      }
      if (!is.null(self$`prevPageToken`)) {
        TaskRunSummaryPagedItemsObject[["prevPageToken"]] <-
          self$`prevPageToken`
      }
      if (!is.null(self$`lastPageToken`)) {
        TaskRunSummaryPagedItemsObject[["lastPageToken"]] <-
          self$`lastPageToken`
      }
      if (!is.null(self$`totalItemCount`)) {
        TaskRunSummaryPagedItemsObject[["totalItemCount"]] <-
          self$`totalItemCount`
      }
      if (!is.null(self$`totalPageCount`)) {
        TaskRunSummaryPagedItemsObject[["totalPageCount"]] <-
          self$`totalPageCount`
      }
      TaskRunSummaryPagedItemsObject
    },
    #' Deserialize JSON string into an instance of TaskRunSummaryPagedItems
    #'
    #' @description
    #' Deserialize JSON string into an instance of TaskRunSummaryPagedItems
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaskRunSummaryPagedItems
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[TaskRunSummary]", loadNamespace("icar1"))
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
    #' @return TaskRunSummaryPagedItems in JSON format
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
    #' Deserialize JSON string into an instance of TaskRunSummaryPagedItems
    #'
    #' @description
    #' Deserialize JSON string into an instance of TaskRunSummaryPagedItems
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaskRunSummaryPagedItems
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[TaskRunSummary]", loadNamespace("icar1"))
      self$`itemCount` <- this_object$`itemCount`
      self$`firstPageToken` <- this_object$`firstPageToken`
      self$`nextPageToken` <- this_object$`nextPageToken`
      self$`prevPageToken` <- this_object$`prevPageToken`
      self$`lastPageToken` <- this_object$`lastPageToken`
      self$`totalItemCount` <- this_object$`totalItemCount`
      self$`totalPageCount` <- this_object$`totalPageCount`
      self
    },
    #' Validate JSON input with respect to TaskRunSummaryPagedItems
    #'
    #' @description
    #' Validate JSON input with respect to TaskRunSummaryPagedItems and throw an exception if invalid
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
    #' @return String representation of TaskRunSummaryPagedItems
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
# TaskRunSummaryPagedItems$unlock()
#
## Below is an example to define the print function
# TaskRunSummaryPagedItems$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TaskRunSummaryPagedItems$lock()

