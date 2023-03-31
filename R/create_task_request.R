#' Create a new CreateTaskRequest
#'
#' @description
#' CreateTaskRequest Class
#'
#' @docType class
#' @title CreateTaskRequest
#' @description CreateTaskRequest Class
#' @format An \code{R6Class} generator object
#' @field name User-defined name of the task character
#' @field description User-defined description of the task character [optional]
#' @field acl Access Control List list(character) [optional]
#' @field taskVersions List of task versions list(\link{CreateTaskVersionRequest}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateTaskRequest <- R6::R6Class(
  "CreateTaskRequest",
  public = list(
    `name` = NULL,
    `description` = NULL,
    `acl` = NULL,
    `taskVersions` = NULL,
    #' Initialize a new CreateTaskRequest class.
    #'
    #' @description
    #' Initialize a new CreateTaskRequest class.
    #'
    #' @param name User-defined name of the task
    #' @param description User-defined description of the task
    #' @param acl Access Control List
    #' @param taskVersions List of task versions
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `description` = NULL, `acl` = NULL, `taskVersions` = NULL, ...) {
      if (!missing(`name`)) {
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
      if (!is.null(`taskVersions`)) {
        stopifnot(is.vector(`taskVersions`), length(`taskVersions`) != 0)
        sapply(`taskVersions`, function(x) stopifnot(R6::is.R6(x)))
        self$`taskVersions` <- `taskVersions`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateTaskRequest in JSON format
    #' @export
    toJSON = function() {
      CreateTaskRequestObject <- list()
      if (!is.null(self$`name`)) {
        CreateTaskRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        CreateTaskRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`acl`)) {
        CreateTaskRequestObject[["acl"]] <-
          self$`acl`
      }
      if (!is.null(self$`taskVersions`)) {
        CreateTaskRequestObject[["taskVersions"]] <-
          lapply(self$`taskVersions`, function(x) x$toJSON())
      }
      CreateTaskRequestObject
    },
    #' Deserialize JSON string into an instance of CreateTaskRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateTaskRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTaskRequest
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
      if (!is.null(this_object$`taskVersions`)) {
        self$`taskVersions` <- ApiClient$new()$deserializeObj(this_object$`taskVersions`, "array[CreateTaskVersionRequest]", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateTaskRequest in JSON format
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
        if (!is.null(self$`taskVersions`)) {
          sprintf(
          '"taskVersions":
          [%s]
',
          paste(sapply(self$`taskVersions`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateTaskRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateTaskRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTaskRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self$`taskVersions` <- ApiClient$new()$deserializeObj(this_object$`taskVersions`, "array[CreateTaskVersionRequest]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to CreateTaskRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateTaskRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateTaskRequest: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateTaskRequest
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

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
# CreateTaskRequest$unlock()
#
## Below is an example to define the print function
# CreateTaskRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateTaskRequest$lock()

