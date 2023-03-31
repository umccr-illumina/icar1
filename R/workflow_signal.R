#' Create a new WorkflowSignal
#'
#' @description
#' WorkflowSignal Class
#'
#' @docType class
#' @title WorkflowSignal
#' @description WorkflowSignal Class
#' @format An \code{R6Class} generator object
#' @field id Unique resource ID character [optional]
#' @field urn URN of the resource character [optional]
#' @field href HREF to the resource character [optional]
#' @field sendHeartbeatHref HREF to send a heartbeat to a workflow signal character [optional]
#' @field sendSuccessResponseHref HREF to succeed a workflow signal character [optional]
#' @field sendFailureResponseHref HREF to fail a workflow signal character [optional]
#' @field name Unique name of the signal character [optional]
#' @field status Current status of the signal character [optional]
#' @field type User-defined type associated with the signal character [optional]
#' @field description Description of the signal character [optional]
#' @field inputs Inputs defined by the originating WaitForSignal state, in JSON. object [optional]
#' @field workflowRun  \link{WorkflowRunCompact} [optional]
#' @field timeoutSeconds Signal timeout in seconds. The Signal will timeout if a heartbeat, succeed or fail is not received in this time interval. integer [optional]
#' @field result The result of a successful signalling action in JSON. object [optional]
#' @field error The error of a failed signal. character [optional]
#' @field errorCause The error cause of a failed signal. character [optional]
#' @field createdByClientId Client ID of the Origin Request character [optional]
#' @field timeCreated Time (in UTC) the resource was created character [optional]
#' @field timeModified Time (in UTC) the resource was modified character [optional]
#' @field createdBy User that created the resource character [optional]
#' @field modifiedBy User that modified the resource character [optional]
#' @field tenantId Tenant ID the resource belongs to character [optional]
#' @field acl Access control list of the resource list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkflowSignal <- R6::R6Class(
  "WorkflowSignal",
  public = list(
    `id` = NULL,
    `urn` = NULL,
    `href` = NULL,
    `sendHeartbeatHref` = NULL,
    `sendSuccessResponseHref` = NULL,
    `sendFailureResponseHref` = NULL,
    `name` = NULL,
    `status` = NULL,
    `type` = NULL,
    `description` = NULL,
    `inputs` = NULL,
    `workflowRun` = NULL,
    `timeoutSeconds` = NULL,
    `result` = NULL,
    `error` = NULL,
    `errorCause` = NULL,
    `createdByClientId` = NULL,
    `timeCreated` = NULL,
    `timeModified` = NULL,
    `createdBy` = NULL,
    `modifiedBy` = NULL,
    `tenantId` = NULL,
    `acl` = NULL,
    #' Initialize a new WorkflowSignal class.
    #'
    #' @description
    #' Initialize a new WorkflowSignal class.
    #'
    #' @param id Unique resource ID
    #' @param urn URN of the resource
    #' @param href HREF to the resource
    #' @param sendHeartbeatHref HREF to send a heartbeat to a workflow signal
    #' @param sendSuccessResponseHref HREF to succeed a workflow signal
    #' @param sendFailureResponseHref HREF to fail a workflow signal
    #' @param name Unique name of the signal
    #' @param status Current status of the signal
    #' @param type User-defined type associated with the signal
    #' @param description Description of the signal
    #' @param inputs Inputs defined by the originating WaitForSignal state, in JSON.
    #' @param workflowRun workflowRun
    #' @param timeoutSeconds Signal timeout in seconds. The Signal will timeout if a heartbeat, succeed or fail is not received in this time interval.
    #' @param result The result of a successful signalling action in JSON.
    #' @param error The error of a failed signal.
    #' @param errorCause The error cause of a failed signal.
    #' @param createdByClientId Client ID of the Origin Request
    #' @param timeCreated Time (in UTC) the resource was created
    #' @param timeModified Time (in UTC) the resource was modified
    #' @param createdBy User that created the resource
    #' @param modifiedBy User that modified the resource
    #' @param tenantId Tenant ID the resource belongs to
    #' @param acl Access control list of the resource
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `urn` = NULL, `href` = NULL, `sendHeartbeatHref` = NULL, `sendSuccessResponseHref` = NULL, `sendFailureResponseHref` = NULL, `name` = NULL, `status` = NULL, `type` = NULL, `description` = NULL, `inputs` = NULL, `workflowRun` = NULL, `timeoutSeconds` = NULL, `result` = NULL, `error` = NULL, `errorCause` = NULL, `createdByClientId` = NULL, `timeCreated` = NULL, `timeModified` = NULL, `createdBy` = NULL, `modifiedBy` = NULL, `tenantId` = NULL, `acl` = NULL, ...) {
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
      if (!is.null(`sendHeartbeatHref`)) {
        if (!(is.character(`sendHeartbeatHref`) && length(`sendHeartbeatHref`) == 1)) {
          stop(paste("Error! Invalid data for `sendHeartbeatHref`. Must be a string:", `sendHeartbeatHref`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`sendHeartbeatHref`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `sendHeartbeatHref`. Must be a URL:", `sendHeartbeatHref`))
        }
        self$`sendHeartbeatHref` <- `sendHeartbeatHref`
      }
      if (!is.null(`sendSuccessResponseHref`)) {
        if (!(is.character(`sendSuccessResponseHref`) && length(`sendSuccessResponseHref`) == 1)) {
          stop(paste("Error! Invalid data for `sendSuccessResponseHref`. Must be a string:", `sendSuccessResponseHref`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`sendSuccessResponseHref`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `sendSuccessResponseHref`. Must be a URL:", `sendSuccessResponseHref`))
        }
        self$`sendSuccessResponseHref` <- `sendSuccessResponseHref`
      }
      if (!is.null(`sendFailureResponseHref`)) {
        if (!(is.character(`sendFailureResponseHref`) && length(`sendFailureResponseHref`) == 1)) {
          stop(paste("Error! Invalid data for `sendFailureResponseHref`. Must be a string:", `sendFailureResponseHref`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`sendFailureResponseHref`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `sendFailureResponseHref`. Must be a URL:", `sendFailureResponseHref`))
        }
        self$`sendFailureResponseHref` <- `sendFailureResponseHref`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`inputs`)) {
        self$`inputs` <- `inputs`
      }
      if (!is.null(`workflowRun`)) {
        stopifnot(R6::is.R6(`workflowRun`))
        self$`workflowRun` <- `workflowRun`
      }
      if (!is.null(`timeoutSeconds`)) {
        if (!(is.numeric(`timeoutSeconds`) && length(`timeoutSeconds`) == 1)) {
          stop(paste("Error! Invalid data for `timeoutSeconds`. Must be an integer:", `timeoutSeconds`))
        }
        self$`timeoutSeconds` <- `timeoutSeconds`
      }
      if (!is.null(`result`)) {
        self$`result` <- `result`
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
      if (!is.null(`createdByClientId`)) {
        if (!(is.character(`createdByClientId`) && length(`createdByClientId`) == 1)) {
          stop(paste("Error! Invalid data for `createdByClientId`. Must be a string:", `createdByClientId`))
        }
        self$`createdByClientId` <- `createdByClientId`
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
    #' @return WorkflowSignal in JSON format
    #' @export
    toJSON = function() {
      WorkflowSignalObject <- list()
      if (!is.null(self$`id`)) {
        WorkflowSignalObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`urn`)) {
        WorkflowSignalObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`href`)) {
        WorkflowSignalObject[["href"]] <-
          self$`href`
      }
      if (!is.null(self$`sendHeartbeatHref`)) {
        WorkflowSignalObject[["sendHeartbeatHref"]] <-
          self$`sendHeartbeatHref`
      }
      if (!is.null(self$`sendSuccessResponseHref`)) {
        WorkflowSignalObject[["sendSuccessResponseHref"]] <-
          self$`sendSuccessResponseHref`
      }
      if (!is.null(self$`sendFailureResponseHref`)) {
        WorkflowSignalObject[["sendFailureResponseHref"]] <-
          self$`sendFailureResponseHref`
      }
      if (!is.null(self$`name`)) {
        WorkflowSignalObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`status`)) {
        WorkflowSignalObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`type`)) {
        WorkflowSignalObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`description`)) {
        WorkflowSignalObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`inputs`)) {
        WorkflowSignalObject[["inputs"]] <-
          self$`inputs`
      }
      if (!is.null(self$`workflowRun`)) {
        WorkflowSignalObject[["workflowRun"]] <-
          self$`workflowRun`$toJSON()
      }
      if (!is.null(self$`timeoutSeconds`)) {
        WorkflowSignalObject[["timeoutSeconds"]] <-
          self$`timeoutSeconds`
      }
      if (!is.null(self$`result`)) {
        WorkflowSignalObject[["result"]] <-
          self$`result`
      }
      if (!is.null(self$`error`)) {
        WorkflowSignalObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`errorCause`)) {
        WorkflowSignalObject[["errorCause"]] <-
          self$`errorCause`
      }
      if (!is.null(self$`createdByClientId`)) {
        WorkflowSignalObject[["createdByClientId"]] <-
          self$`createdByClientId`
      }
      if (!is.null(self$`timeCreated`)) {
        WorkflowSignalObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`timeModified`)) {
        WorkflowSignalObject[["timeModified"]] <-
          self$`timeModified`
      }
      if (!is.null(self$`createdBy`)) {
        WorkflowSignalObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`modifiedBy`)) {
        WorkflowSignalObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`tenantId`)) {
        WorkflowSignalObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`acl`)) {
        WorkflowSignalObject[["acl"]] <-
          self$`acl`
      }
      WorkflowSignalObject
    },
    #' Deserialize JSON string into an instance of WorkflowSignal
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowSignal
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowSignal
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
      if (!is.null(this_object$`sendHeartbeatHref`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`sendHeartbeatHref`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `sendHeartbeatHref`. Must be a URL:", this_object$`sendHeartbeatHref`))
        }
        self$`sendHeartbeatHref` <- this_object$`sendHeartbeatHref`
      }
      if (!is.null(this_object$`sendSuccessResponseHref`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`sendSuccessResponseHref`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `sendSuccessResponseHref`. Must be a URL:", this_object$`sendSuccessResponseHref`))
        }
        self$`sendSuccessResponseHref` <- this_object$`sendSuccessResponseHref`
      }
      if (!is.null(this_object$`sendFailureResponseHref`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`sendFailureResponseHref`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `sendFailureResponseHref`. Must be a URL:", this_object$`sendFailureResponseHref`))
        }
        self$`sendFailureResponseHref` <- this_object$`sendFailureResponseHref`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`inputs`)) {
        self$`inputs` <- this_object$`inputs`
      }
      if (!is.null(this_object$`workflowRun`)) {
        `workflowrun_object` <- WorkflowRunCompact$new()
        `workflowrun_object`$fromJSON(jsonlite::toJSON(this_object$`workflowRun`, auto_unbox = TRUE, digits = NA))
        self$`workflowRun` <- `workflowrun_object`
      }
      if (!is.null(this_object$`timeoutSeconds`)) {
        self$`timeoutSeconds` <- this_object$`timeoutSeconds`
      }
      if (!is.null(this_object$`result`)) {
        self$`result` <- this_object$`result`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`errorCause`)) {
        self$`errorCause` <- this_object$`errorCause`
      }
      if (!is.null(this_object$`createdByClientId`)) {
        self$`createdByClientId` <- this_object$`createdByClientId`
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
    #' @return WorkflowSignal in JSON format
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
        if (!is.null(self$`sendHeartbeatHref`)) {
          sprintf(
          '"sendHeartbeatHref":
            "%s"
                    ',
          self$`sendHeartbeatHref`
          )
        },
        if (!is.null(self$`sendSuccessResponseHref`)) {
          sprintf(
          '"sendSuccessResponseHref":
            "%s"
                    ',
          self$`sendSuccessResponseHref`
          )
        },
        if (!is.null(self$`sendFailureResponseHref`)) {
          sprintf(
          '"sendFailureResponseHref":
            "%s"
                    ',
          self$`sendFailureResponseHref`
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`inputs`)) {
          sprintf(
          '"inputs":
            "%s"
                    ',
          self$`inputs`
          )
        },
        if (!is.null(self$`workflowRun`)) {
          sprintf(
          '"workflowRun":
          %s
          ',
          jsonlite::toJSON(self$`workflowRun`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`timeoutSeconds`)) {
          sprintf(
          '"timeoutSeconds":
            %d
                    ',
          self$`timeoutSeconds`
          )
        },
        if (!is.null(self$`result`)) {
          sprintf(
          '"result":
            "%s"
                    ',
          self$`result`
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
        if (!is.null(self$`createdByClientId`)) {
          sprintf(
          '"createdByClientId":
            "%s"
                    ',
          self$`createdByClientId`
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
    #' Deserialize JSON string into an instance of WorkflowSignal
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowSignal
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowSignal
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
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`sendHeartbeatHref`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `sendHeartbeatHref`. Must be a URL:", this_object$`sendHeartbeatHref`))
      }
      self$`sendHeartbeatHref` <- this_object$`sendHeartbeatHref`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`sendSuccessResponseHref`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `sendSuccessResponseHref`. Must be a URL:", this_object$`sendSuccessResponseHref`))
      }
      self$`sendSuccessResponseHref` <- this_object$`sendSuccessResponseHref`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`sendFailureResponseHref`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `sendFailureResponseHref`. Must be a URL:", this_object$`sendFailureResponseHref`))
      }
      self$`sendFailureResponseHref` <- this_object$`sendFailureResponseHref`
      self$`name` <- this_object$`name`
      self$`status` <- this_object$`status`
      self$`type` <- this_object$`type`
      self$`description` <- this_object$`description`
      self$`inputs` <- this_object$`inputs`
      self$`workflowRun` <- WorkflowRunCompact$new()$fromJSON(jsonlite::toJSON(this_object$`workflowRun`, auto_unbox = TRUE, digits = NA))
      self$`timeoutSeconds` <- this_object$`timeoutSeconds`
      self$`result` <- this_object$`result`
      self$`error` <- this_object$`error`
      self$`errorCause` <- this_object$`errorCause`
      self$`createdByClientId` <- this_object$`createdByClientId`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`timeModified` <- this_object$`timeModified`
      self$`createdBy` <- this_object$`createdBy`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`tenantId` <- this_object$`tenantId`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to WorkflowSignal
    #'
    #' @description
    #' Validate JSON input with respect to WorkflowSignal and throw an exception if invalid
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
    #' @return String representation of WorkflowSignal
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
      if (nchar(self$`description`) > 256) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 256."
      }
      if (nchar(self$`description`) < 0) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 0."
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
# WorkflowSignal$unlock()
#
## Below is an example to define the print function
# WorkflowSignal$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkflowSignal$lock()

