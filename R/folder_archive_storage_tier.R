#' @docType class
#' @title FolderArchiveStorageTier
#' @description FolderArchiveStorageTier Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FolderArchiveStorageTier <- R6::R6Class(
  "FolderArchiveStorageTier",
  public = list(
    #' Initialize a new FolderArchiveStorageTier class.
    #'
    #' @description
    #' Initialize a new FolderArchiveStorageTier class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_FolderArchiveStorageTier()

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
    #' @return FolderArchiveStorageTier in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of FolderArchiveStorageTier
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderArchiveStorageTier
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderArchiveStorageTier
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
    #' @return FolderArchiveStorageTier in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of FolderArchiveStorageTier
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderArchiveStorageTier
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderArchiveStorageTier
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
.parse_FolderArchiveStorageTier <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[Archive, DeepArchive]")
  unlist(strsplit(res, ", "))
}

