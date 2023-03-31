#' Create a new Execution
#'
#' @description
#' Execution Class
#'
#' @docType class
#' @title Execution
#' @description Execution Class
#' @format An \code{R6Class} generator object
#' @field image  \link{Image} [optional]
#' @field command  character [optional]
#' @field args Argument to run specified task list(character) [optional]
#' @field inputs Path (Inputs) - Path to mount file at valid Url  URL (Inputs) - Url of file mounted at specified path list(\link{InputMountMappingWithCreds}) [optional]
#' @field outputs Path (Outputs) - Path where files will be output to valid Url  URL (Outputs) - Url of folder with files from the path will be uploaded list(\link{MountMappingWithCreds}) [optional]
#' @field systemFiles  \link{SystemFiles} [optional]
#' @field environment  \link{Environment} [optional]
#' @field workingDirectory  character [optional]
#' @field retryLimit  integer [optional]
#' @field retryCount  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Execution <- R6::R6Class(
  "Execution",
  public = list(
    `image` = NULL,
    `command` = NULL,
    `args` = NULL,
    `inputs` = NULL,
    `outputs` = NULL,
    `systemFiles` = NULL,
    `environment` = NULL,
    `workingDirectory` = NULL,
    `retryLimit` = NULL,
    `retryCount` = NULL,
    #' Initialize a new Execution class.
    #'
    #' @description
    #' Initialize a new Execution class.
    #'
    #' @param image image
    #' @param command command
    #' @param args Argument to run specified task
    #' @param inputs Path (Inputs) - Path to mount file at valid Url  URL (Inputs) - Url of file mounted at specified path
    #' @param outputs Path (Outputs) - Path where files will be output to valid Url  URL (Outputs) - Url of folder with files from the path will be uploaded
    #' @param systemFiles systemFiles
    #' @param environment environment
    #' @param workingDirectory workingDirectory
    #' @param retryLimit retryLimit. Default to 3.
    #' @param retryCount retryCount. Default to 0.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`image` = NULL, `command` = NULL, `args` = NULL, `inputs` = NULL, `outputs` = NULL, `systemFiles` = NULL, `environment` = NULL, `workingDirectory` = NULL, `retryLimit` = 3, `retryCount` = 0, ...) {
      if (!is.null(`image`)) {
        stopifnot(R6::is.R6(`image`))
        self$`image` <- `image`
      }
      if (!is.null(`command`)) {
        if (!(is.character(`command`) && length(`command`) == 1)) {
          stop(paste("Error! Invalid data for `command`. Must be a string:", `command`))
        }
        self$`command` <- `command`
      }
      if (!is.null(`args`)) {
        stopifnot(is.vector(`args`), length(`args`) != 0)
        sapply(`args`, function(x) stopifnot(is.character(x)))
        self$`args` <- `args`
      }
      if (!is.null(`inputs`)) {
        stopifnot(is.vector(`inputs`), length(`inputs`) != 0)
        sapply(`inputs`, function(x) stopifnot(R6::is.R6(x)))
        self$`inputs` <- `inputs`
      }
      if (!is.null(`outputs`)) {
        stopifnot(is.vector(`outputs`), length(`outputs`) != 0)
        sapply(`outputs`, function(x) stopifnot(R6::is.R6(x)))
        self$`outputs` <- `outputs`
      }
      if (!is.null(`systemFiles`)) {
        stopifnot(R6::is.R6(`systemFiles`))
        self$`systemFiles` <- `systemFiles`
      }
      if (!is.null(`environment`)) {
        stopifnot(R6::is.R6(`environment`))
        self$`environment` <- `environment`
      }
      if (!is.null(`workingDirectory`)) {
        if (!(is.character(`workingDirectory`) && length(`workingDirectory`) == 1)) {
          stop(paste("Error! Invalid data for `workingDirectory`. Must be a string:", `workingDirectory`))
        }
        self$`workingDirectory` <- `workingDirectory`
      }
      if (!is.null(`retryLimit`)) {
        if (!(is.numeric(`retryLimit`) && length(`retryLimit`) == 1)) {
          stop(paste("Error! Invalid data for `retryLimit`. Must be an integer:", `retryLimit`))
        }
        self$`retryLimit` <- `retryLimit`
      }
      if (!is.null(`retryCount`)) {
        if (!(is.numeric(`retryCount`) && length(`retryCount`) == 1)) {
          stop(paste("Error! Invalid data for `retryCount`. Must be an integer:", `retryCount`))
        }
        self$`retryCount` <- `retryCount`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Execution in JSON format
    #' @export
    toJSON = function() {
      ExecutionObject <- list()
      if (!is.null(self$`image`)) {
        ExecutionObject[["image"]] <-
          self$`image`$toJSON()
      }
      if (!is.null(self$`command`)) {
        ExecutionObject[["command"]] <-
          self$`command`
      }
      if (!is.null(self$`args`)) {
        ExecutionObject[["args"]] <-
          self$`args`
      }
      if (!is.null(self$`inputs`)) {
        ExecutionObject[["inputs"]] <-
          lapply(self$`inputs`, function(x) x$toJSON())
      }
      if (!is.null(self$`outputs`)) {
        ExecutionObject[["outputs"]] <-
          lapply(self$`outputs`, function(x) x$toJSON())
      }
      if (!is.null(self$`systemFiles`)) {
        ExecutionObject[["systemFiles"]] <-
          self$`systemFiles`$toJSON()
      }
      if (!is.null(self$`environment`)) {
        ExecutionObject[["environment"]] <-
          self$`environment`$toJSON()
      }
      if (!is.null(self$`workingDirectory`)) {
        ExecutionObject[["workingDirectory"]] <-
          self$`workingDirectory`
      }
      if (!is.null(self$`retryLimit`)) {
        ExecutionObject[["retryLimit"]] <-
          self$`retryLimit`
      }
      if (!is.null(self$`retryCount`)) {
        ExecutionObject[["retryCount"]] <-
          self$`retryCount`
      }
      ExecutionObject
    },
    #' Deserialize JSON string into an instance of Execution
    #'
    #' @description
    #' Deserialize JSON string into an instance of Execution
    #'
    #' @param input_json the JSON input
    #' @return the instance of Execution
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`image`)) {
        `image_object` <- Image$new()
        `image_object`$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
        self$`image` <- `image_object`
      }
      if (!is.null(this_object$`command`)) {
        self$`command` <- this_object$`command`
      }
      if (!is.null(this_object$`args`)) {
        self$`args` <- ApiClient$new()$deserializeObj(this_object$`args`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`inputs`)) {
        self$`inputs` <- ApiClient$new()$deserializeObj(this_object$`inputs`, "array[InputMountMappingWithCreds]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`outputs`)) {
        self$`outputs` <- ApiClient$new()$deserializeObj(this_object$`outputs`, "array[MountMappingWithCreds]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`systemFiles`)) {
        `systemfiles_object` <- SystemFiles$new()
        `systemfiles_object`$fromJSON(jsonlite::toJSON(this_object$`systemFiles`, auto_unbox = TRUE, digits = NA))
        self$`systemFiles` <- `systemfiles_object`
      }
      if (!is.null(this_object$`environment`)) {
        `environment_object` <- Environment$new()
        `environment_object`$fromJSON(jsonlite::toJSON(this_object$`environment`, auto_unbox = TRUE, digits = NA))
        self$`environment` <- `environment_object`
      }
      if (!is.null(this_object$`workingDirectory`)) {
        self$`workingDirectory` <- this_object$`workingDirectory`
      }
      if (!is.null(this_object$`retryLimit`)) {
        self$`retryLimit` <- this_object$`retryLimit`
      }
      if (!is.null(this_object$`retryCount`)) {
        self$`retryCount` <- this_object$`retryCount`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Execution in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`image`)) {
          sprintf(
          '"image":
          %s
          ',
          jsonlite::toJSON(self$`image`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`command`)) {
          sprintf(
          '"command":
            "%s"
                    ',
          self$`command`
          )
        },
        if (!is.null(self$`args`)) {
          sprintf(
          '"args":
             [%s]
          ',
          paste(unlist(lapply(self$`args`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`inputs`)) {
          sprintf(
          '"inputs":
          [%s]
',
          paste(sapply(self$`inputs`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`outputs`)) {
          sprintf(
          '"outputs":
          [%s]
',
          paste(sapply(self$`outputs`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`systemFiles`)) {
          sprintf(
          '"systemFiles":
          %s
          ',
          jsonlite::toJSON(self$`systemFiles`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`environment`)) {
          sprintf(
          '"environment":
          %s
          ',
          jsonlite::toJSON(self$`environment`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`workingDirectory`)) {
          sprintf(
          '"workingDirectory":
            "%s"
                    ',
          self$`workingDirectory`
          )
        },
        if (!is.null(self$`retryLimit`)) {
          sprintf(
          '"retryLimit":
            %d
                    ',
          self$`retryLimit`
          )
        },
        if (!is.null(self$`retryCount`)) {
          sprintf(
          '"retryCount":
            %d
                    ',
          self$`retryCount`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Execution
    #'
    #' @description
    #' Deserialize JSON string into an instance of Execution
    #'
    #' @param input_json the JSON input
    #' @return the instance of Execution
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`image` <- Image$new()$fromJSON(jsonlite::toJSON(this_object$`image`, auto_unbox = TRUE, digits = NA))
      self$`command` <- this_object$`command`
      self$`args` <- ApiClient$new()$deserializeObj(this_object$`args`, "array[character]", loadNamespace("icar1"))
      self$`inputs` <- ApiClient$new()$deserializeObj(this_object$`inputs`, "array[InputMountMappingWithCreds]", loadNamespace("icar1"))
      self$`outputs` <- ApiClient$new()$deserializeObj(this_object$`outputs`, "array[MountMappingWithCreds]", loadNamespace("icar1"))
      self$`systemFiles` <- SystemFiles$new()$fromJSON(jsonlite::toJSON(this_object$`systemFiles`, auto_unbox = TRUE, digits = NA))
      self$`environment` <- Environment$new()$fromJSON(jsonlite::toJSON(this_object$`environment`, auto_unbox = TRUE, digits = NA))
      self$`workingDirectory` <- this_object$`workingDirectory`
      self$`retryLimit` <- this_object$`retryLimit`
      self$`retryCount` <- this_object$`retryCount`
      self
    },
    #' Validate JSON input with respect to Execution
    #'
    #' @description
    #' Validate JSON input with respect to Execution and throw an exception if invalid
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
    #' @return String representation of Execution
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
# Execution$unlock()
#
## Below is an example to define the print function
# Execution$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Execution$lock()

