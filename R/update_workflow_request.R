#' Create a new UpdateWorkflowRequest
#'
#' @description
#' Update an existing workflow
#'
#' @docType class
#' @title UpdateWorkflowRequest
#' @description UpdateWorkflowRequest Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field description  character [optional]
#' @field organization  character [optional]
#' @field acl  list(character) [optional]
#' @field categories  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateWorkflowRequest <- R6::R6Class(
  "UpdateWorkflowRequest",
  public = list(
    `name` = NULL,
    `description` = NULL,
    `organization` = NULL,
    `acl` = NULL,
    `categories` = NULL,
    #' Initialize a new UpdateWorkflowRequest class.
    #'
    #' @description
    #' Initialize a new UpdateWorkflowRequest class.
    #'
    #' @param name name
    #' @param description description
    #' @param organization organization
    #' @param acl acl
    #' @param categories categories
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `description` = NULL, `organization` = NULL, `acl` = NULL, `categories` = NULL, ...) {
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
      if (!is.null(`organization`)) {
        if (!(is.character(`organization`) && length(`organization`) == 1)) {
          stop(paste("Error! Invalid data for `organization`. Must be a string:", `organization`))
        }
        self$`organization` <- `organization`
      }
      if (!is.null(`acl`)) {
        stopifnot(is.vector(`acl`), length(`acl`) != 0)
        sapply(`acl`, function(x) stopifnot(is.character(x)))
        self$`acl` <- `acl`
      }
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(is.character(x)))
        self$`categories` <- `categories`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateWorkflowRequest in JSON format
    #' @export
    toJSON = function() {
      UpdateWorkflowRequestObject <- list()
      if (!is.null(self$`name`)) {
        UpdateWorkflowRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        UpdateWorkflowRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`organization`)) {
        UpdateWorkflowRequestObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`acl`)) {
        UpdateWorkflowRequestObject[["acl"]] <-
          self$`acl`
      }
      if (!is.null(self$`categories`)) {
        UpdateWorkflowRequestObject[["categories"]] <-
          self$`categories`
      }
      UpdateWorkflowRequestObject
    },
    #' Deserialize JSON string into an instance of UpdateWorkflowRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateWorkflowRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateWorkflowRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`organization`)) {
        self$`organization` <- this_object$`organization`
      }
      if (!is.null(this_object$`acl`)) {
        self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[character]", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UpdateWorkflowRequest in JSON format
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
        if (!is.null(self$`organization`)) {
          sprintf(
          '"organization":
            "%s"
                    ',
          self$`organization`
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
        if (!is.null(self$`categories`)) {
          sprintf(
          '"categories":
             [%s]
          ',
          paste(unlist(lapply(self$`categories`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UpdateWorkflowRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UpdateWorkflowRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateWorkflowRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`organization` <- this_object$`organization`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[character]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to UpdateWorkflowRequest
    #'
    #' @description
    #' Validate JSON input with respect to UpdateWorkflowRequest and throw an exception if invalid
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
    #' @return String representation of UpdateWorkflowRequest
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

      if (nchar(self$`organization`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`organization`) < 0) {
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

      if (nchar(self$`organization`) > 255) {
        invalid_fields["organization"] <- "Invalid length for `organization`, must be smaller than or equal to 255."
      }
      if (nchar(self$`organization`) < 0) {
        invalid_fields["organization"] <- "Invalid length for `organization`, must be bigger than or equal to 0."
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
# UpdateWorkflowRequest$unlock()
#
## Below is an example to define the print function
# UpdateWorkflowRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateWorkflowRequest$lock()

