#' @docType class
#' @title SubscriptionListSortFields
#' @description SubscriptionListSortFields Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubscriptionListSortFields <- R6::R6Class(
  "SubscriptionListSortFields",
  public = list(
    #' Initialize a new SubscriptionListSortFields class.
    #'
    #' @description
    #' Initialize a new SubscriptionListSortFields class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_SubscriptionListSortFields()

      stopifnot(length(val) == 1L)

      if (!val %in% enumvec)
          stop("Use one of the valid values: ",
              paste0(enumvec, collapse = ", "))
      private$value <- val
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SubscriptionListSortFields in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of SubscriptionListSortFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of SubscriptionListSortFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionListSortFields
    #' @export
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SubscriptionListSortFields in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of SubscriptionListSortFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of SubscriptionListSortFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionListSortFields
    #' @export
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_SubscriptionListSortFields <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[id]")
  unlist(strsplit(res, ", "))
}

