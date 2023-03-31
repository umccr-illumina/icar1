#' Create a new CreateTaskRunRequest
#'
#' @description
#' CreateTaskRunRequest Class
#'
#' @docType class
#' @title CreateTaskRunRequest
#' @description CreateTaskRunRequest Class
#' @format An \code{R6Class} generator object
#' @field name User-defined name of the task run character [optional]
#' @field description User-defined description of the task run character [optional]
#' @field acl Access Control List list(character) [optional]
#' @field execution  \link{Execution} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateTaskRunRequest <- R6::R6Class(
  "CreateTaskRunRequest",
  public = list(
    `name` = NULL,
    `description` = NULL,
    `acl` = NULL,
    `execution` = NULL,
    #' Initialize a new CreateTaskRunRequest class.
    #'
    #' @description
    #' Initialize a new CreateTaskRunRequest class.
    #'
    #' @param name User-defined name of the task run
    #' @param description User-defined description of the task run
    #' @param acl Access Control List
    #' @param execution execution
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `description` = NULL, `acl` = NULL, `execution` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`acl`)) {
        stopifnot(is.vector(`acl`), length(`acl`) != 0)
        sapply(`acl`, function(x) stopifnot(is.character(x)))
        self$`acl` <- `acl`
      }
      if (!is.null(`execution`)) {
        stopifnot(R6::is.R6(`execution`))
        self$`execution` <- `execution`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateTaskRunRequest in JSON format
    #' @export
    toJSON = function() {
      CreateTaskRunRequestObject <- list()
      if (!is.null(self$`name`)) {
        CreateTaskRunRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        CreateTaskRunRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`acl`)) {
        CreateTaskRunRequestObject[["acl"]] <-
          self$`acl`
      }
      if (!is.null(self$`execution`)) {
        CreateTaskRunRequestObject[["execution"]] <-
          self$`execution`$toJSON()
      }
      CreateTaskRunRequestObject
    },
    #' Deserialize JSON string into an instance of CreateTaskRunRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateTaskRunRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTaskRunRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`acl`)) {
        self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`execution`)) {
        `execution_object` <- Execution$new()
        `execution_object`$fromJSON(jsonlite::toJSON(this_object$`execution`, auto_unbox = TRUE, digits = NA))
        self$`execution` <- `execution_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateTaskRunRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`acl`)) {
          sprintf(
          '"acl":
             [%s]
          ',
          paste(unlist(lapply(self$`acl`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`execution`)) {
          sprintf(
          '"execution":
          %s
          ',
          jsonlite::toJSON(self$`execution`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateTaskRunRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateTaskRunRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTaskRunRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self$`execution` <- Execution$new()$fromJSON(jsonlite::toJSON(this_object$`execution`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to CreateTaskRunRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateTaskRunRequest and throw an exception if invalid
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
    #' @return String representation of CreateTaskRunRequest
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
      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 4096) {
        return(FALSE)
      }
      if (nchar(self$`description`) < 0) {
        return(FALSE)
      }

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
      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }
      if (nchar(self$`name`) < 0) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 0."
      }

      if (nchar(self$`description`) > 4096) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 4096."
      }
      if (nchar(self$`description`) < 0) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 0."
      }

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
# CreateTaskRunRequest$unlock()
#
## Below is an example to define the print function
# CreateTaskRunRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateTaskRunRequest$lock()

