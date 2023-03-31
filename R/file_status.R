#' @docType class
#' @title FileStatus
#' @description FileStatus Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileStatus <- R6::R6Class(
  "FileStatus",
  public = list(
    #' Initialize a new FileStatus class.
    #'
    #' @description
    #' Initialize a new FileStatus class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_FileStatus()

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
    #' @return FileStatus in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of FileStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileStatus
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
    #' @return FileStatus in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of FileStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileStatus
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
.parse_FileStatus <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[Partial, Available, Archived, Unarchiving, Copying]")
  unlist(strsplit(res, ", "))
}

