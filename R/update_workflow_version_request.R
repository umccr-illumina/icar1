#' Create a new UpdateWorkflowVersionRequest
#'
#' @description
#' Update a workflow version definition using patch semantics
#'
#' @docType class
#' @title UpdateWorkflowVersionRequest
#' @description UpdateWorkflowVersionRequest Class
#' @format An \code{R6Class} generator object
#' @field version  character [optional]
#' @field description  character [optional]
#' @field language  \link{WorkflowLanguage} [optional]
#' @field definition  object [optional]
#' @field acl  list(character) [optional]
#' @field status New Status for workflow version character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateWorkflowVersionRequest <- R6::R6Class(
  "UpdateWorkflowVersionRequest",
  public = list(
    `version` = NULL,
    `description` = NULL,
    `language` = NULL,
    `definition` = NULL,
    `acl` = NULL,
    `status` = NULL,
    #' Initialize a new UpdateWorkflowVersionRequest class.
    #'
    #' @description
    #' Initialize a new UpdateWorkflowVersionRequest class.
    #'
    #' @param version version
    #' @param description description
    #' @param language language
    #' @param definition definition
    #' @param acl acl
    #' @param status New Status for workflow version
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`version` = NULL, `description` = NULL, `language` = NULL, `definition` = NULL, `acl` = NULL, `status` = NULL, ...) {
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`language`)) {
        stopifnot(R6::is.R6(`language`))
        self$`language` <- `language`
      }
      if (!is.null(`definition`)) {
        self$`definition` <- `definition`
      }
      if (!is.null(`acl`)) {
        stopifnot(is.vector(`acl`), length(`acl`) != 0)
        sapply(`acl`, function(x) stopifnot(is.character(x)))
        self$`acl` <- `acl`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateWorkflowVersionRequest in JSON format
    #' @export
    toJSON = function() {
      UpdateWorkflowVersionRequestObject <- list()
      if (!is.null(self$`version`)) {
        UpdateWorkflowVersionRequestObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`description`)) {
        UpdateWorkflowVersionRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`language`)) {
        UpdateWorkflowVersionRequestObject[["language"]] <-
          self$`language`$toJSON()
      }
      if (!is.null(self$`definition`)) {
        UpdateWorkflowVersionRequestObject[["definition"]] <-
          self$`definition`
      }
      if (!is.null(self$`acl`)) {
        UpdateWorkflowVersionRequestObject[["acl"]] <-
          self$`acl`
      }
      if (!is.null(self$`status`)) {
        UpdateWorkflowVersionRequestObject[["status"]] <-
          self$`status`
      }
      UpdateWorkflowVersionRequestObject
    },
    #' Deserialize JSON string into an instance of UpdateWorkflowVersionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateWorkflowVersionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateWorkflowVersionRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`language`)) {
        `language_object` <- WorkflowLanguage$new()
        `language_object`$fromJSON(jsonlite::toJSON(this_object$`language`, auto_unbox = TRUE, digits = NA))
        self$`language` <- `language_object`
      }
      if (!is.null(this_object$`definition`)) {
        self$`definition` <- this_object$`definition`
      }
      if (!is.null(this_object$`acl`)) {
        self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateWorkflowVersionRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`version`)) {
          sprintf(
          '"version":
            "%s"
                    ',
          self$`version`
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
        if (!is.null(self$`language`)) {
          sprintf(
          '"language":
          %s
          ',
          jsonlite::toJSON(self$`language`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`definition`)) {
          sprintf(
          '"definition":
            "%s"
                    ',
          self$`definition`
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
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            "%s"
                    ',
          self$`status`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UpdateWorkflowVersionRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateWorkflowVersionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateWorkflowVersionRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`version` <- this_object$`version`
      self$`description` <- this_object$`description`
      self$`language` <- WorkflowLanguage$new()$fromJSON(jsonlite::toJSON(this_object$`language`, auto_unbox = TRUE, digits = NA))
      self$`definition` <- this_object$`definition`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self$`status` <- this_object$`status`
      self
    },
    #' Validate JSON input with respect to UpdateWorkflowVersionRequest
    #'
    #' @description
    #' Validate JSON input with respect to UpdateWorkflowVersionRequest and throw an exception if invalid
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
    #' @return String representation of UpdateWorkflowVersionRequest
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
      if (nchar(self$`description`) > 256) {
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
      if (nchar(self$`description`) > 256) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 256."
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
# UpdateWorkflowVersionRequest$unlock()
#
## Below is an example to define the print function
# UpdateWorkflowVersionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateWorkflowVersionRequest$lock()

