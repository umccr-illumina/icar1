#' Create a new Resources
#'
#' @description
#' Resources Class
#'
#' @docType class
#' @title Resources
#' @description Resources Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field size  character [optional]
#' @field cpuCores  numeric [optional]
#' @field memoryGb  numeric [optional]
#' @field hardware  list(character) [optional]
#' @field tier  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Resources <- R6::R6Class(
  "Resources",
  public = list(
    `type` = NULL,
    `size` = NULL,
    `cpuCores` = NULL,
    `memoryGb` = NULL,
    `hardware` = NULL,
    `tier` = NULL,
    #' Initialize a new Resources class.
    #'
    #' @description
    #' Initialize a new Resources class.
    #'
    #' @param type type
    #' @param size size
    #' @param cpuCores cpuCores
    #' @param memoryGb memoryGb
    #' @param hardware hardware
    #' @param tier tier
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type` = NULL, `size` = NULL, `cpuCores` = NULL, `memoryGb` = NULL, `hardware` = NULL, `tier` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`size`)) {
        if (!(is.character(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be a string:", `size`))
        }
        self$`size` <- `size`
      }
      if (!is.null(`cpuCores`)) {
        if (!(is.numeric(`cpuCores`) && length(`cpuCores`) == 1)) {
          stop(paste("Error! Invalid data for `cpuCores`. Must be a number:", `cpuCores`))
        }
        self$`cpuCores` <- `cpuCores`
      }
      if (!is.null(`memoryGb`)) {
        if (!(is.numeric(`memoryGb`) && length(`memoryGb`) == 1)) {
          stop(paste("Error! Invalid data for `memoryGb`. Must be a number:", `memoryGb`))
        }
        self$`memoryGb` <- `memoryGb`
      }
      if (!is.null(`hardware`)) {
        stopifnot(is.vector(`hardware`), length(`hardware`) != 0)
        sapply(`hardware`, function(x) stopifnot(is.character(x)))
        self$`hardware` <- `hardware`
      }
      if (!is.null(`tier`)) {
        if (!(is.character(`tier`) && length(`tier`) == 1)) {
          stop(paste("Error! Invalid data for `tier`. Must be a string:", `tier`))
        }
        self$`tier` <- `tier`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Resources in JSON format
    #' @export
    toJSON = function() {
      ResourcesObject <- list()
      if (!is.null(self$`type`)) {
        ResourcesObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`size`)) {
        ResourcesObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`cpuCores`)) {
        ResourcesObject[["cpuCores"]] <-
          self$`cpuCores`
      }
      if (!is.null(self$`memoryGb`)) {
        ResourcesObject[["memoryGb"]] <-
          self$`memoryGb`
      }
      if (!is.null(self$`hardware`)) {
        ResourcesObject[["hardware"]] <-
          self$`hardware`
      }
      if (!is.null(self$`tier`)) {
        ResourcesObject[["tier"]] <-
          self$`tier`
      }
      ResourcesObject
    },
    #' Deserialize JSON string into an instance of Resources
    #'
    #' @description
    #' Deserialize JSON string into an instance of Resources
    #'
    #' @param input_json the JSON input
    #' @return the instance of Resources
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`cpuCores`)) {
        self$`cpuCores` <- this_object$`cpuCores`
      }
      if (!is.null(this_object$`memoryGb`)) {
        self$`memoryGb` <- this_object$`memoryGb`
      }
      if (!is.null(this_object$`hardware`)) {
        self$`hardware` <- ApiClient$new()$deserializeObj(this_object$`hardware`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`tier`)) {
        self$`tier` <- this_object$`tier`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Resources in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`size`)) {
          sprintf(
          '"size":
            "%s"
                    ',
          self$`size`
          )
        },
        if (!is.null(self$`cpuCores`)) {
          sprintf(
          '"cpuCores":
            %d
                    ',
          self$`cpuCores`
          )
        },
        if (!is.null(self$`memoryGb`)) {
          sprintf(
          '"memoryGb":
            %d
                    ',
          self$`memoryGb`
          )
        },
        if (!is.null(self$`hardware`)) {
          sprintf(
          '"hardware":
             [%s]
          ',
          paste(unlist(lapply(self$`hardware`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`tier`)) {
          sprintf(
          '"tier":
            "%s"
                    ',
          self$`tier`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Resources
    #'
    #' @description
    #' Deserialize JSON string into an instance of Resources
    #'
    #' @param input_json the JSON input
    #' @return the instance of Resources
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`size` <- this_object$`size`
      self$`cpuCores` <- this_object$`cpuCores`
      self$`memoryGb` <- this_object$`memoryGb`
      self$`hardware` <- ApiClient$new()$deserializeObj(this_object$`hardware`, "array[character]", loadNamespace("icar1"))
      self$`tier` <- this_object$`tier`
      self
    },
    #' Validate JSON input with respect to Resources
    #'
    #' @description
    #' Validate JSON input with respect to Resources and throw an exception if invalid
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
    #' @return String representation of Resources
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
# Resources$unlock()
#
## Below is an example to define the print function
# Resources$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Resources$lock()

