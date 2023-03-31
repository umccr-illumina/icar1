#' Create a new WorkflowRunCompact
#'
#' @description
#' Compact details of a workflow run
#'
#' @docType class
#' @title WorkflowRunCompact
#' @description WorkflowRunCompact Class
#' @format An \code{R6Class} generator object
#' @field id Unique resource ID character [optional]
#' @field urn URN of the resource character [optional]
#' @field href HREF to the resource character [optional]
#' @field name Name of the workflow run character [optional]
#' @field timeStarted The time (in UTC) the workflow run started character [optional]
#' @field timeStopped The time (in UTC) the Workflow Run stopped character [optional]
#' @field status Workflow run status character [optional]
#' @field idempotencyKey  character [optional]
#' @field statusSummary Workflow run status summary character [optional]
#' @field error Error for a failed workflow run character [optional]
#' @field errorCause Error cause for a failed workflow run character [optional]
#' @field workflowVersion  \link{WorkflowVersionCompact} [optional]
#' @field createdByClientId Client ID of the Origin Request character [optional]
#' @field engineParameters Workflow Engine Parameters character [optional]
#' @field timeCreated Time (in UTC) the resource was created character [optional]
#' @field timeModified Time (in UTC) the resource was modified character [optional]
#' @field createdBy User that created the resource character [optional]
#' @field modifiedBy User that modified the resource character [optional]
#' @field tenantId Tenant ID the resource belongs to character [optional]
#' @field acl Access control list of the resource list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkflowRunCompact <- R6::R6Class(
  "WorkflowRunCompact",
  public = list(
    `id` = NULL,
    `urn` = NULL,
    `href` = NULL,
    `name` = NULL,
    `timeStarted` = NULL,
    `timeStopped` = NULL,
    `status` = NULL,
    `idempotencyKey` = NULL,
    `statusSummary` = NULL,
    `error` = NULL,
    `errorCause` = NULL,
    `workflowVersion` = NULL,
    `createdByClientId` = NULL,
    `engineParameters` = NULL,
    `timeCreated` = NULL,
    `timeModified` = NULL,
    `createdBy` = NULL,
    `modifiedBy` = NULL,
    `tenantId` = NULL,
    `acl` = NULL,
    #' Initialize a new WorkflowRunCompact class.
    #'
    #' @description
    #' Initialize a new WorkflowRunCompact class.
    #'
    #' @param id Unique resource ID
    #' @param urn URN of the resource
    #' @param href HREF to the resource
    #' @param name Name of the workflow run
    #' @param timeStarted The time (in UTC) the workflow run started
    #' @param timeStopped The time (in UTC) the Workflow Run stopped
    #' @param status Workflow run status
    #' @param idempotencyKey idempotencyKey
    #' @param statusSummary Workflow run status summary
    #' @param error Error for a failed workflow run
    #' @param errorCause Error cause for a failed workflow run
    #' @param workflowVersion workflowVersion
    #' @param createdByClientId Client ID of the Origin Request
    #' @param engineParameters Workflow Engine Parameters
    #' @param timeCreated Time (in UTC) the resource was created
    #' @param timeModified Time (in UTC) the resource was modified
    #' @param createdBy User that created the resource
    #' @param modifiedBy User that modified the resource
    #' @param tenantId Tenant ID the resource belongs to
    #' @param acl Access control list of the resource
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `urn` = NULL, `href` = NULL, `name` = NULL, `timeStarted` = NULL, `timeStopped` = NULL, `status` = NULL, `idempotencyKey` = NULL, `statusSummary` = NULL, `error` = NULL, `errorCause` = NULL, `workflowVersion` = NULL, `createdByClientId` = NULL, `engineParameters` = NULL, `timeCreated` = NULL, `timeModified` = NULL, `createdBy` = NULL, `modifiedBy` = NULL, `tenantId` = NULL, `acl` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`urn`)) {
        if (!(is.character(`urn`) && length(`urn`) == 1)) {
          stop(paste("Error! Invalid data for `urn`. Must be a string:", `urn`))
        }
        self$`urn` <- `urn`
      }
      if (!is.null(`href`)) {
        if (!(is.character(`href`) && length(`href`) == 1)) {
          stop(paste("Error! Invalid data for `href`. Must be a string:", `href`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`href`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `href`. Must be a URL:", `href`))
        }
        self$`href` <- `href`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`timeStarted`)) {
        if (!is.character(`timeStarted`)) {
          stop(paste("Error! Invalid data for `timeStarted`. Must be a string:", `timeStarted`))
        }
        self$`timeStarted` <- `timeStarted`
      }
      if (!is.null(`timeStopped`)) {
        if (!is.character(`timeStopped`)) {
          stop(paste("Error! Invalid data for `timeStopped`. Must be a string:", `timeStopped`))
        }
        self$`timeStopped` <- `timeStopped`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`idempotencyKey`)) {
        if (!(is.character(`idempotencyKey`) && length(`idempotencyKey`) == 1)) {
          stop(paste("Error! Invalid data for `idempotencyKey`. Must be a string:", `idempotencyKey`))
        }
        self$`idempotencyKey` <- `idempotencyKey`
      }
      if (!is.null(`statusSummary`)) {
        if (!(is.character(`statusSummary`) && length(`statusSummary`) == 1)) {
          stop(paste("Error! Invalid data for `statusSummary`. Must be a string:", `statusSummary`))
        }
        self$`statusSummary` <- `statusSummary`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`errorCause`)) {
        if (!(is.character(`errorCause`) && length(`errorCause`) == 1)) {
          stop(paste("Error! Invalid data for `errorCause`. Must be a string:", `errorCause`))
        }
        self$`errorCause` <- `errorCause`
      }
      if (!is.null(`workflowVersion`)) {
        stopifnot(R6::is.R6(`workflowVersion`))
        self$`workflowVersion` <- `workflowVersion`
      }
      if (!is.null(`createdByClientId`)) {
        if (!(is.character(`createdByClientId`) && length(`createdByClientId`) == 1)) {
          stop(paste("Error! Invalid data for `createdByClientId`. Must be a string:", `createdByClientId`))
        }
        self$`createdByClientId` <- `createdByClientId`
      }
      if (!is.null(`engineParameters`)) {
        if (!(is.character(`engineParameters`) && length(`engineParameters`) == 1)) {
          stop(paste("Error! Invalid data for `engineParameters`. Must be a string:", `engineParameters`))
        }
        self$`engineParameters` <- `engineParameters`
      }
      if (!is.null(`timeCreated`)) {
        if (!is.character(`timeCreated`)) {
          stop(paste("Error! Invalid data for `timeCreated`. Must be a string:", `timeCreated`))
        }
        self$`timeCreated` <- `timeCreated`
      }
      if (!is.null(`timeModified`)) {
        if (!is.character(`timeModified`)) {
          stop(paste("Error! Invalid data for `timeModified`. Must be a string:", `timeModified`))
        }
        self$`timeModified` <- `timeModified`
      }
      if (!is.null(`createdBy`)) {
        if (!(is.character(`createdBy`) && length(`createdBy`) == 1)) {
          stop(paste("Error! Invalid data for `createdBy`. Must be a string:", `createdBy`))
        }
        self$`createdBy` <- `createdBy`
      }
      if (!is.null(`modifiedBy`)) {
        if (!(is.character(`modifiedBy`) && length(`modifiedBy`) == 1)) {
          stop(paste("Error! Invalid data for `modifiedBy`. Must be a string:", `modifiedBy`))
        }
        self$`modifiedBy` <- `modifiedBy`
      }
      if (!is.null(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
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
    #' @return WorkflowRunCompact in JSON format
    #' @export
    toJSON = function() {
      WorkflowRunCompactObject <- list()
      if (!is.null(self$`id`)) {
        WorkflowRunCompactObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`urn`)) {
        WorkflowRunCompactObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`href`)) {
        WorkflowRunCompactObject[["href"]] <-
          self$`href`
      }
      if (!is.null(self$`name`)) {
        WorkflowRunCompactObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`timeStarted`)) {
        WorkflowRunCompactObject[["timeStarted"]] <-
          self$`timeStarted`
      }
      if (!is.null(self$`timeStopped`)) {
        WorkflowRunCompactObject[["timeStopped"]] <-
          self$`timeStopped`
      }
      if (!is.null(self$`status`)) {
        WorkflowRunCompactObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`idempotencyKey`)) {
        WorkflowRunCompactObject[["idempotencyKey"]] <-
          self$`idempotencyKey`
      }
      if (!is.null(self$`statusSummary`)) {
        WorkflowRunCompactObject[["statusSummary"]] <-
          self$`statusSummary`
      }
      if (!is.null(self$`error`)) {
        WorkflowRunCompactObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`errorCause`)) {
        WorkflowRunCompactObject[["errorCause"]] <-
          self$`errorCause`
      }
      if (!is.null(self$`workflowVersion`)) {
        WorkflowRunCompactObject[["workflowVersion"]] <-
          self$`workflowVersion`$toJSON()
      }
      if (!is.null(self$`createdByClientId`)) {
        WorkflowRunCompactObject[["createdByClientId"]] <-
          self$`createdByClientId`
      }
      if (!is.null(self$`engineParameters`)) {
        WorkflowRunCompactObject[["engineParameters"]] <-
          self$`engineParameters`
      }
      if (!is.null(self$`timeCreated`)) {
        WorkflowRunCompactObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`timeModified`)) {
        WorkflowRunCompactObject[["timeModified"]] <-
          self$`timeModified`
      }
      if (!is.null(self$`createdBy`)) {
        WorkflowRunCompactObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`modifiedBy`)) {
        WorkflowRunCompactObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`tenantId`)) {
        WorkflowRunCompactObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`acl`)) {
        WorkflowRunCompactObject[["acl"]] <-
          self$`acl`
      }
      WorkflowRunCompactObject
    },
    #' Deserialize JSON string into an instance of WorkflowRunCompact
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowRunCompact
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowRunCompact
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`urn`)) {
        self$`urn` <- this_object$`urn`
      }
      if (!is.null(this_object$`href`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`href`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `href`. Must be a URL:", this_object$`href`))
        }
        self$`href` <- this_object$`href`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`timeStarted`)) {
        self$`timeStarted` <- this_object$`timeStarted`
      }
      if (!is.null(this_object$`timeStopped`)) {
        self$`timeStopped` <- this_object$`timeStopped`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`idempotencyKey`)) {
        self$`idempotencyKey` <- this_object$`idempotencyKey`
      }
      if (!is.null(this_object$`statusSummary`)) {
        self$`statusSummary` <- this_object$`statusSummary`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`errorCause`)) {
        self$`errorCause` <- this_object$`errorCause`
      }
      if (!is.null(this_object$`workflowVersion`)) {
        `workflowversion_object` <- WorkflowVersionCompact$new()
        `workflowversion_object`$fromJSON(jsonlite::toJSON(this_object$`workflowVersion`, auto_unbox = TRUE, digits = NA))
        self$`workflowVersion` <- `workflowversion_object`
      }
      if (!is.null(this_object$`createdByClientId`)) {
        self$`createdByClientId` <- this_object$`createdByClientId`
      }
      if (!is.null(this_object$`engineParameters`)) {
        self$`engineParameters` <- this_object$`engineParameters`
      }
      if (!is.null(this_object$`timeCreated`)) {
        self$`timeCreated` <- this_object$`timeCreated`
      }
      if (!is.null(this_object$`timeModified`)) {
        self$`timeModified` <- this_object$`timeModified`
      }
      if (!is.null(this_object$`createdBy`)) {
        self$`createdBy` <- this_object$`createdBy`
      }
      if (!is.null(this_object$`modifiedBy`)) {
        self$`modifiedBy` <- this_object$`modifiedBy`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
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
    #' @return WorkflowRunCompact in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`urn`)) {
          sprintf(
          '"urn":
            "%s"
                    ',
          self$`urn`
          )
        },
        if (!is.null(self$`href`)) {
          sprintf(
          '"href":
            "%s"
                    ',
          self$`href`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`timeStarted`)) {
          sprintf(
          '"timeStarted":
            "%s"
                    ',
          self$`timeStarted`
          )
        },
        if (!is.null(self$`timeStopped`)) {
          sprintf(
          '"timeStopped":
            "%s"
                    ',
          self$`timeStopped`
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
        if (!is.null(self$`idempotencyKey`)) {
          sprintf(
          '"idempotencyKey":
            "%s"
                    ',
          self$`idempotencyKey`
          )
        },
        if (!is.null(self$`statusSummary`)) {
          sprintf(
          '"statusSummary":
            "%s"
                    ',
          self$`statusSummary`
          )
        },
        if (!is.null(self$`error`)) {
          sprintf(
          '"error":
            "%s"
                    ',
          self$`error`
          )
        },
        if (!is.null(self$`errorCause`)) {
          sprintf(
          '"errorCause":
            "%s"
                    ',
          self$`errorCause`
          )
        },
        if (!is.null(self$`workflowVersion`)) {
          sprintf(
          '"workflowVersion":
          %s
          ',
          jsonlite::toJSON(self$`workflowVersion`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`createdByClientId`)) {
          sprintf(
          '"createdByClientId":
            "%s"
                    ',
          self$`createdByClientId`
          )
        },
        if (!is.null(self$`engineParameters`)) {
          sprintf(
          '"engineParameters":
            "%s"
                    ',
          self$`engineParameters`
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
        if (!is.null(self$`timeModified`)) {
          sprintf(
          '"timeModified":
            "%s"
                    ',
          self$`timeModified`
          )
        },
        if (!is.null(self$`createdBy`)) {
          sprintf(
          '"createdBy":
            "%s"
                    ',
          self$`createdBy`
          )
        },
        if (!is.null(self$`modifiedBy`)) {
          sprintf(
          '"modifiedBy":
            "%s"
                    ',
          self$`modifiedBy`
          )
        },
        if (!is.null(self$`tenantId`)) {
          sprintf(
          '"tenantId":
            "%s"
                    ',
          self$`tenantId`
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
    #' Deserialize JSON string into an instance of WorkflowRunCompact
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowRunCompact
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowRunCompact
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`urn` <- this_object$`urn`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`href`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `href`. Must be a URL:", this_object$`href`))
      }
      self$`href` <- this_object$`href`
      self$`name` <- this_object$`name`
      self$`timeStarted` <- this_object$`timeStarted`
      self$`timeStopped` <- this_object$`timeStopped`
      self$`status` <- this_object$`status`
      self$`idempotencyKey` <- this_object$`idempotencyKey`
      self$`statusSummary` <- this_object$`statusSummary`
      self$`error` <- this_object$`error`
      self$`errorCause` <- this_object$`errorCause`
      self$`workflowVersion` <- WorkflowVersionCompact$new()$fromJSON(jsonlite::toJSON(this_object$`workflowVersion`, auto_unbox = TRUE, digits = NA))
      self$`createdByClientId` <- this_object$`createdByClientId`
      self$`engineParameters` <- this_object$`engineParameters`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`timeModified` <- this_object$`timeModified`
      self$`createdBy` <- this_object$`createdBy`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`tenantId` <- this_object$`tenantId`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to WorkflowRunCompact
    #'
    #' @description
    #' Validate JSON input with respect to WorkflowRunCompact and throw an exception if invalid
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
    #' @return String representation of WorkflowRunCompact
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

      if (nchar(self$`tenantId`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`tenantId`) < 0) {
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

      if (nchar(self$`tenantId`) > 255) {
        invalid_fields["tenantId"] <- "Invalid length for `tenantId`, must be smaller than or equal to 255."
      }
      if (nchar(self$`tenantId`) < 0) {
        invalid_fields["tenantId"] <- "Invalid length for `tenantId`, must be bigger than or equal to 0."
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
# WorkflowRunCompact$unlock()
#
## Below is an example to define the print function
# WorkflowRunCompact$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkflowRunCompact$lock()

