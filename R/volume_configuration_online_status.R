#' @docType class
#' @title VolumeConfigurationOnlineStatus
#' @description VolumeConfigurationOnlineStatus Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VolumeConfigurationOnlineStatus <- R6::R6Class(
  "VolumeConfigurationOnlineStatus",
  public = list(
    #' Initialize a new VolumeConfigurationOnlineStatus class.
    #'
    #' @description
    #' Initialize a new VolumeConfigurationOnlineStatus class.
    #'
    #' @param ... Optional arguments.
    #' @export
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_VolumeConfigurationOnlineStatus()

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
    #' @return VolumeConfigurationOnlineStatus in JSON format
    #' @export
    toJSON = function() {
        jsonlite::toJSON(private$value, auto_unbox = TRUE)
    },
    #' Deserialize JSON string into an instance of VolumeConfigurationOnlineStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeConfigurationOnlineStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeConfigurationOnlineStatus
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
    #' @return VolumeConfigurationOnlineStatus in JSON format
    #' @export
    toJSONString = function() {
      as.character(jsonlite::toJSON(private$value,
          auto_unbox = TRUE))
    },
    #' Deserialize JSON string into an instance of VolumeConfigurationOnlineStatus
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeConfigurationOnlineStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeConfigurationOnlineStatus
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
.parse_VolumeConfigurationOnlineStatus <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[Initializing, Ok, Error]")
  unlist(strsplit(res, ", "))
}

