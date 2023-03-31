#' Create a new SubscriptionList
#'
#' @description
#' SubscriptionList Class
#'
#' @docType class
#' @title SubscriptionList
#' @description SubscriptionList Class
#' @format An \code{R6Class} generator object
#' @field items  list(\link{Subscription}) [optional]
#' @field itemCount  integer [optional]
#' @field firstPageToken  character [optional]
#' @field nextPageToken  character [optional]
#' @field prevPageToken  character [optional]
#' @field lastPageToken  character [optional]
#' @field totalItemCount  integer [optional]
#' @field totalPageCount  integer [optional]
#' @field sortedBy  \link{SubscriptionListSortFields} [optional]
#' @field sortDirection  \link{SortDirection} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubscriptionList <- R6::R6Class(
  "SubscriptionList",
  public = list(
    `items` = NULL,
    `itemCount` = NULL,
    `firstPageToken` = NULL,
    `nextPageToken` = NULL,
    `prevPageToken` = NULL,
    `lastPageToken` = NULL,
    `totalItemCount` = NULL,
    `totalPageCount` = NULL,
    `sortedBy` = NULL,
    `sortDirection` = NULL,
    #' Initialize a new SubscriptionList class.
    #'
    #' @description
    #' Initialize a new SubscriptionList class.
    #'
    #' @param items items
    #' @param itemCount itemCount
    #' @param firstPageToken firstPageToken
    #' @param nextPageToken nextPageToken
    #' @param prevPageToken prevPageToken
    #' @param lastPageToken lastPageToken
    #' @param totalItemCount totalItemCount
    #' @param totalPageCount totalPageCount
    #' @param sortedBy sortedBy
    #' @param sortDirection sortDirection
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`items` = NULL, `itemCount` = NULL, `firstPageToken` = NULL, `nextPageToken` = NULL, `prevPageToken` = NULL, `lastPageToken` = NULL, `totalItemCount` = NULL, `totalPageCount` = NULL, `sortedBy` = NULL, `sortDirection` = NULL, ...) {
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
      if (!is.null(`sortedBy`)) {
        if (!(`sortedBy` %in% c())) {
          stop(paste("Error! \"", `sortedBy`, "\" cannot be assigned to `sortedBy`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`sortedBy`))
        self$`sortedBy` <- `sortedBy`
      }
      if (!is.null(`sortDirection`)) {
        if (!(`sortDirection` %in% c())) {
          stop(paste("Error! \"", `sortDirection`, "\" cannot be assigned to `sortDirection`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`sortDirection`))
        self$`sortDirection` <- `sortDirection`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SubscriptionList in JSON format
    #' @export
    toJSON = function() {
      SubscriptionListObject <- list()
      if (!is.null(self$`items`)) {
        SubscriptionListObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      if (!is.null(self$`itemCount`)) {
        SubscriptionListObject[["itemCount"]] <-
          self$`itemCount`
      }
      if (!is.null(self$`firstPageToken`)) {
        SubscriptionListObject[["firstPageToken"]] <-
          self$`firstPageToken`
      }
      if (!is.null(self$`nextPageToken`)) {
        SubscriptionListObject[["nextPageToken"]] <-
          self$`nextPageToken`
      }
      if (!is.null(self$`prevPageToken`)) {
        SubscriptionListObject[["prevPageToken"]] <-
          self$`prevPageToken`
      }
      if (!is.null(self$`lastPageToken`)) {
        SubscriptionListObject[["lastPageToken"]] <-
          self$`lastPageToken`
      }
      if (!is.null(self$`totalItemCount`)) {
        SubscriptionListObject[["totalItemCount"]] <-
          self$`totalItemCount`
      }
      if (!is.null(self$`totalPageCount`)) {
        SubscriptionListObject[["totalPageCount"]] <-
          self$`totalPageCount`
      }
      if (!is.null(self$`sortedBy`)) {
        SubscriptionListObject[["sortedBy"]] <-
          self$`sortedBy`$toJSON()
      }
      if (!is.null(self$`sortDirection`)) {
        SubscriptionListObject[["sortDirection"]] <-
          self$`sortDirection`$toJSON()
      }
      SubscriptionListObject
    },
    #' Deserialize JSON string into an instance of SubscriptionList
    #'
    #' @description
    #' Deserialize JSON string into an instance of SubscriptionList
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionList
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[Subscription]", loadNamespace("icar1"))
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
      if (!is.null(this_object$`sortedBy`)) {
        `sortedby_object` <- SubscriptionListSortFields$new()
        `sortedby_object`$fromJSON(jsonlite::toJSON(this_object$`sortedBy`, auto_unbox = TRUE, digits = NA))
        self$`sortedBy` <- `sortedby_object`
      }
      if (!is.null(this_object$`sortDirection`)) {
        `sortdirection_object` <- SortDirection$new()
        `sortdirection_object`$fromJSON(jsonlite::toJSON(this_object$`sortDirection`, auto_unbox = TRUE, digits = NA))
        self$`sortDirection` <- `sortdirection_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SubscriptionList in JSON format
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
        },
        if (!is.null(self$`sortedBy`)) {
          sprintf(
          '"sortedBy":
          %s
          ',
          jsonlite::toJSON(self$`sortedBy`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`sortDirection`)) {
          sprintf(
          '"sortDirection":
          %s
          ',
          jsonlite::toJSON(self$`sortDirection`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SubscriptionList
    #'
    #' @description
    #' Deserialize JSON string into an instance of SubscriptionList
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionList
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[Subscription]", loadNamespace("icar1"))
      self$`itemCount` <- this_object$`itemCount`
      self$`firstPageToken` <- this_object$`firstPageToken`
      self$`nextPageToken` <- this_object$`nextPageToken`
      self$`prevPageToken` <- this_object$`prevPageToken`
      self$`lastPageToken` <- this_object$`lastPageToken`
      self$`totalItemCount` <- this_object$`totalItemCount`
      self$`totalPageCount` <- this_object$`totalPageCount`
      self$`sortedBy` <- SubscriptionListSortFields$new()$fromJSON(jsonlite::toJSON(this_object$`sortedBy`, auto_unbox = TRUE, digits = NA))
      self$`sortDirection` <- SortDirection$new()$fromJSON(jsonlite::toJSON(this_object$`sortDirection`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to SubscriptionList
    #'
    #' @description
    #' Validate JSON input with respect to SubscriptionList and throw an exception if invalid
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
    #' @return String representation of SubscriptionList
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
# SubscriptionList$unlock()
#
## Below is an example to define the print function
# SubscriptionList$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SubscriptionList$lock()

