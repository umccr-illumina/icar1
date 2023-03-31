#' Create a new CreateSessionResponse
#'
#' @description
#' CreateSessionResponse Class
#'
#' @docType class
#' @title CreateSessionResponse
#' @description CreateSessionResponse Class
#' @format An \code{R6Class} generator object
#' @field objectStoreAccess  \link{ObjectStoreAccess} [optional]
#' @field id A unique identifier for this Session character [optional]
#' @field folderUrn The Universal Resource Name of the Folder associated with the Session character [optional]
#' @field status  \link{SessionStatus} [optional]
#' @field timeCreated The date & time this Session was created, in GDS character [optional]
#' @field timeCredentialsExpire The date & time this upload session expires character [optional]
#' @field timeClosed The date & time this Session was closed, in GDS character [optional]
#' @field timeCompleted The date & time this Session was completed, in GDS character [optional]
#' @field metadata  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateSessionResponse <- R6::R6Class(
  "CreateSessionResponse",
  public = list(
    `objectStoreAccess` = NULL,
    `id` = NULL,
    `folderUrn` = NULL,
    `status` = NULL,
    `timeCreated` = NULL,
    `timeCredentialsExpire` = NULL,
    `timeClosed` = NULL,
    `timeCompleted` = NULL,
    `metadata` = NULL,
    #' Initialize a new CreateSessionResponse class.
    #'
    #' @description
    #' Initialize a new CreateSessionResponse class.
    #'
    #' @param objectStoreAccess objectStoreAccess
    #' @param id A unique identifier for this Session
    #' @param folderUrn The Universal Resource Name of the Folder associated with the Session
    #' @param status status
    #' @param timeCreated The date & time this Session was created, in GDS
    #' @param timeCredentialsExpire The date & time this upload session expires
    #' @param timeClosed The date & time this Session was closed, in GDS
    #' @param timeCompleted The date & time this Session was completed, in GDS
    #' @param metadata metadata
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`objectStoreAccess` = NULL, `id` = NULL, `folderUrn` = NULL, `status` = NULL, `timeCreated` = NULL, `timeCredentialsExpire` = NULL, `timeClosed` = NULL, `timeCompleted` = NULL, `metadata` = NULL, ...) {
      if (!is.null(`objectStoreAccess`)) {
        stopifnot(R6::is.R6(`objectStoreAccess`))
        self$`objectStoreAccess` <- `objectStoreAccess`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`folderUrn`)) {
        if (!(is.character(`folderUrn`) && length(`folderUrn`) == 1)) {
          stop(paste("Error! Invalid data for `folderUrn`. Must be a string:", `folderUrn`))
        }
        self$`folderUrn` <- `folderUrn`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`timeCreated`)) {
        if (!is.character(`timeCreated`)) {
          stop(paste("Error! Invalid data for `timeCreated`. Must be a string:", `timeCreated`))
        }
        self$`timeCreated` <- `timeCreated`
      }
      if (!is.null(`timeCredentialsExpire`)) {
        if (!is.character(`timeCredentialsExpire`)) {
          stop(paste("Error! Invalid data for `timeCredentialsExpire`. Must be a string:", `timeCredentialsExpire`))
        }
        self$`timeCredentialsExpire` <- `timeCredentialsExpire`
      }
      if (!is.null(`timeClosed`)) {
        if (!is.character(`timeClosed`)) {
          stop(paste("Error! Invalid data for `timeClosed`. Must be a string:", `timeClosed`))
        }
        self$`timeClosed` <- `timeClosed`
      }
      if (!is.null(`timeCompleted`)) {
        if (!is.character(`timeCompleted`)) {
          stop(paste("Error! Invalid data for `timeCompleted`. Must be a string:", `timeCompleted`))
        }
        self$`timeCompleted` <- `timeCompleted`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateSessionResponse in JSON format
    #' @export
    toJSON = function() {
      CreateSessionResponseObject <- list()
      if (!is.null(self$`objectStoreAccess`)) {
        CreateSessionResponseObject[["objectStoreAccess"]] <-
          self$`objectStoreAccess`$toJSON()
      }
      if (!is.null(self$`id`)) {
        CreateSessionResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`folderUrn`)) {
        CreateSessionResponseObject[["folderUrn"]] <-
          self$`folderUrn`
      }
      if (!is.null(self$`status`)) {
        CreateSessionResponseObject[["status"]] <-
          self$`status`$toJSON()
      }
      if (!is.null(self$`timeCreated`)) {
        CreateSessionResponseObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`timeCredentialsExpire`)) {
        CreateSessionResponseObject[["timeCredentialsExpire"]] <-
          self$`timeCredentialsExpire`
      }
      if (!is.null(self$`timeClosed`)) {
        CreateSessionResponseObject[["timeClosed"]] <-
          self$`timeClosed`
      }
      if (!is.null(self$`timeCompleted`)) {
        CreateSessionResponseObject[["timeCompleted"]] <-
          self$`timeCompleted`
      }
      if (!is.null(self$`metadata`)) {
        CreateSessionResponseObject[["metadata"]] <-
          self$`metadata`
      }
      CreateSessionResponseObject
    },
    #' Deserialize JSON string into an instance of CreateSessionResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateSessionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateSessionResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`objectStoreAccess`)) {
        `objectstoreaccess_object` <- ObjectStoreAccess$new()
        `objectstoreaccess_object`$fromJSON(jsonlite::toJSON(this_object$`objectStoreAccess`, auto_unbox = TRUE, digits = NA))
        self$`objectStoreAccess` <- `objectstoreaccess_object`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`folderUrn`)) {
        self$`folderUrn` <- this_object$`folderUrn`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- SessionStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`timeCreated`)) {
        self$`timeCreated` <- this_object$`timeCreated`
      }
      if (!is.null(this_object$`timeCredentialsExpire`)) {
        self$`timeCredentialsExpire` <- this_object$`timeCredentialsExpire`
      }
      if (!is.null(this_object$`timeClosed`)) {
        self$`timeClosed` <- this_object$`timeClosed`
      }
      if (!is.null(this_object$`timeCompleted`)) {
        self$`timeCompleted` <- this_object$`timeCompleted`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateSessionResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`objectStoreAccess`)) {
          sprintf(
          '"objectStoreAccess":
          %s
          ',
          jsonlite::toJSON(self$`objectStoreAccess`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`folderUrn`)) {
          sprintf(
          '"folderUrn":
            "%s"
                    ',
          self$`folderUrn`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
          %s
          ',
          jsonlite::toJSON(self$`status`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`timeCreated`)) {
          sprintf(
          '"timeCreated":
            "%s"
                    ',
          self$`timeCreated`
          )
        },
        if (!is.null(self$`timeCredentialsExpire`)) {
          sprintf(
          '"timeCredentialsExpire":
            "%s"
                    ',
          self$`timeCredentialsExpire`
          )
        },
        if (!is.null(self$`timeClosed`)) {
          sprintf(
          '"timeClosed":
            "%s"
                    ',
          self$`timeClosed`
          )
        },
        if (!is.null(self$`timeCompleted`)) {
          sprintf(
          '"timeCompleted":
            "%s"
                    ',
          self$`timeCompleted`
          )
        },
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
            "%s"
                    ',
          self$`metadata`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateSessionResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateSessionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateSessionResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`objectStoreAccess` <- ObjectStoreAccess$new()$fromJSON(jsonlite::toJSON(this_object$`objectStoreAccess`, auto_unbox = TRUE, digits = NA))
      self$`id` <- this_object$`id`
      self$`folderUrn` <- this_object$`folderUrn`
      self$`status` <- SessionStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`timeCreated` <- this_object$`timeCreated`
      self$`timeCredentialsExpire` <- this_object$`timeCredentialsExpire`
      self$`timeClosed` <- this_object$`timeClosed`
      self$`timeCompleted` <- this_object$`timeCompleted`
      self$`metadata` <- this_object$`metadata`
      self
    },
    #' Validate JSON input with respect to CreateSessionResponse
    #'
    #' @description
    #' Validate JSON input with respect to CreateSessionResponse and throw an exception if invalid
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
    #' @return String representation of CreateSessionResponse
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
# CreateSessionResponse$unlock()
#
## Below is an example to define the print function
# CreateSessionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateSessionResponse$lock()

