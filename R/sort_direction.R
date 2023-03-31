#' @docType class
#' @title SortDirection
#' @description SortDirection Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SortDirection <- R6::R6Class(
  "SortDirection",
  public = list(
    #' Initialize a new SortDirection class.
    #'
    #' @description
    #' Initialize a new SortDirection class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_SortDirection()

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
    #' @return SortDirection in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of SortDirection
    #'
    #' @description
    #' Deserialize JSON string into an instance of SortDirection
    #'
    #' @param input_json the JSON input
    #' @return the instance of SortDirection
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
    #' @return SortDirection in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of SortDirection
    #'
    #' @description
    #' Deserialize JSON string into an instance of SortDirection
    #'
    #' @param input_json the JSON input
    #' @return the instance of SortDirection
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
.parse_SortDirection <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[Asc, Desc]")
  unlist(strsplit(res, ", "))
}

