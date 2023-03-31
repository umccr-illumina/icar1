#' @docType class
#' @title FileArchiveStorageTier
#' @description FileArchiveStorageTier Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileArchiveStorageTier <- R6::R6Class(
  "FileArchiveStorageTier",
  public = list(
    #' Initialize a new FileArchiveStorageTier class.
    #'
    #' @description
    #' Initialize a new FileArchiveStorageTier class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_FileArchiveStorageTier()

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
    #' @return FileArchiveStorageTier in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of FileArchiveStorageTier
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileArchiveStorageTier
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileArchiveStorageTier
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
    #' @return FileArchiveStorageTier in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of FileArchiveStorageTier
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileArchiveStorageTier
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileArchiveStorageTier
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
.parse_FileArchiveStorageTier <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[Archive, DeepArchive]")
  unlist(strsplit(res, ", "))
}

