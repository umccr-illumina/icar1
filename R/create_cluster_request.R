#' Create a new CreateClusterRequest
#'
#' @description
#' CreateClusterRequest Class
#'
#' @docType class
#' @title CreateClusterRequest
#' @description CreateClusterRequest Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field svcAcctUId  character [optional]
#' @field status  character [optional]
#' @field type  character [optional]
#' @field acl Access Control List list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateClusterRequest <- R6::R6Class(
  "CreateClusterRequest",
  public = list(
    `name` = NULL,
    `svcAcctUId` = NULL,
    `status` = NULL,
    `type` = NULL,
    `acl` = NULL,
    #' Initialize a new CreateClusterRequest class.
    #'
    #' @description
    #' Initialize a new CreateClusterRequest class.
    #'
    #' @param name name
    #' @param svcAcctUId svcAcctUId
    #' @param status status
    #' @param type type
    #' @param acl Access Control List
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name`, `svcAcctUId` = NULL, `status` = NULL, `type` = NULL, `acl` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`svcAcctUId`)) {
        if (!(is.character(`svcAcctUId`) && length(`svcAcctUId`) == 1)) {
          stop(paste("Error! Invalid data for `svcAcctUId`. Must be a string:", `svcAcctUId`))
        }
        self$`svcAcctUId` <- `svcAcctUId`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`acl`)) {
        stopifnot(is.vector(`acl`), length(`acl`) != 0)
        sapply(`acl`, function(x) stopifnot(is.character(x)))
        self$`acl` <- `acl`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateClusterRequest in JSON format
    #' @export
    toJSON = function() {
      CreateClusterRequestObject <- list()
      if (!is.null(self$`name`)) {
        CreateClusterRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`svcAcctUId`)) {
        CreateClusterRequestObject[["svcAcctUId"]] <-
          self$`svcAcctUId`
      }
      if (!is.null(self$`status`)) {
        CreateClusterRequestObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`type`)) {
        CreateClusterRequestObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`acl`)) {
        CreateClusterRequestObject[["acl"]] <-
          self$`acl`
      }
      CreateClusterRequestObject
    },
    #' Deserialize JSON string into an instance of CreateClusterRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateClusterRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateClusterRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`svcAcctUId`)) {
        self$`svcAcctUId` <- this_object$`svcAcctUId`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`acl`)) {
        self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateClusterRequest in JSON format
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
        if (!is.null(self$`svcAcctUId`)) {
          sprintf(
          '"svcAcctUId":
            "%s"
                    ',
          self$`svcAcctUId`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            "%s"
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`acl`)) {
          sprintf(
          '"acl":
             [%s]
          ',
          paste(unlist(lapply(self$`acl`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateClusterRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateClusterRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateClusterRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`svcAcctUId` <- this_object$`svcAcctUId`
      self$`status` <- this_object$`status`
      self$`type` <- this_object$`type`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to CreateClusterRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateClusterRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateClusterRequest: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateClusterRequest
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
# CreateClusterRequest$unlock()
#
## Below is an example to define the print function
# CreateClusterRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateClusterRequest$lock()

