#' @docType class
#' @title JobProgressStatus
#' @description JobProgressStatus Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobProgressStatus <- R6::R6Class(
  "JobProgressStatus",
  public = list(
    #' Initialize a new JobProgressStatus class.
    #'
    #' @description
    #' Initialize a new JobProgressStatus class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_JobProgressStatus()

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
    #' @return JobProgressStatus in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of JobProgressStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobProgressStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobProgressStatus
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
    #' @return JobProgressStatus in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of JobProgressStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobProgressStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobProgressStatus
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
.parse_JobProgressStatus <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[Pending, InProgress, Completed, Failed, CompletedWithError, Aborted]")
  unlist(strsplit(res, ", "))
}

