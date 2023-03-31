#' @docType class
#' @title RestoreType
#' @description RestoreType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RestoreType <- R6::R6Class(
  "RestoreType",
  public = list(
    #' Initialize a new RestoreType class.
    #'
    #' @description
    #' Initialize a new RestoreType class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_RestoreType()

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
    #' @return RestoreType in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of RestoreType
    #'
    #' @description
    #' Deserialize JSON string into an instance of RestoreType
    #'
    #' @param input_json the JSON input
    #' @return the instance of RestoreType
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
    #' @return RestoreType in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of RestoreType
    #'
    #' @description
    #' Deserialize JSON string into an instance of RestoreType
    #'
    #' @param input_json the JSON input
    #' @return the instance of RestoreType
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
.parse_RestoreType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[Permanent, Temporary]")
  unlist(strsplit(res, ", "))
}

