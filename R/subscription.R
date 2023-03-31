#' Create a new Subscription
#'
#' @description
#' Details for an Event Notification Service subscription
#'
#' @docType class
#' @title Subscription
#' @description Subscription Class
#' @format An \code{R6Class} generator object
#' @field id Unique id of the subscription character [optional]
#' @field urn URN of the subscription character [optional]
#' @field type Type of event the subscription matches character [optional]
#' @field actions Types of actions the subscription matches for the event type list(character) [optional]
#' @field filterExpression JSON-structured filter expression for events matching the subscription character [optional]
#' @field name Name of the subscription character [optional]
#' @field description Optional description for the subscription character [optional]
#' @field deliveryTarget  \link{DeliveryTarget} [optional]
#' @field matchIdentities ACL Identities for events the subscription matches list(character) [optional]
#' @field acl The list of identities that have access to this subscription list(character) [optional]
#' @field tenantId Tenant id of the subscription owner character [optional]
#' @field createdByUserId User id for the creator of the subscription character [optional]
#' @field timeCreated Timestamp when the subscription was created character [optional]
#' @field deletedByUserId Id of the user who deleted the subscription, if applicable character [optional]
#' @field timeDeleted Timestamp when the subscription was deleted, if applicable character [optional]
#' @field isDeleted Whether or not the subscription has been deleted character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Subscription <- R6::R6Class(
  "Subscription",
  public = list(
    `id` = NULL,
    `urn` = NULL,
    `type` = NULL,
    `actions` = NULL,
    `filterExpression` = NULL,
    `name` = NULL,
    `description` = NULL,
    `deliveryTarget` = NULL,
    `matchIdentities` = NULL,
    `acl` = NULL,
    `tenantId` = NULL,
    `createdByUserId` = NULL,
    `timeCreated` = NULL,
    `deletedByUserId` = NULL,
    `timeDeleted` = NULL,
    `isDeleted` = NULL,
    #' Initialize a new Subscription class.
    #'
    #' @description
    #' Initialize a new Subscription class.
    #'
    #' @param id Unique id of the subscription
    #' @param urn URN of the subscription
    #' @param type Type of event the subscription matches
    #' @param actions Types of actions the subscription matches for the event type
    #' @param filterExpression JSON-structured filter expression for events matching the subscription
    #' @param name Name of the subscription
    #' @param description Optional description for the subscription
    #' @param deliveryTarget deliveryTarget
    #' @param matchIdentities ACL Identities for events the subscription matches
    #' @param acl The list of identities that have access to this subscription
    #' @param tenantId Tenant id of the subscription owner
    #' @param createdByUserId User id for the creator of the subscription
    #' @param timeCreated Timestamp when the subscription was created
    #' @param deletedByUserId Id of the user who deleted the subscription, if applicable
    #' @param timeDeleted Timestamp when the subscription was deleted, if applicable
    #' @param isDeleted Whether or not the subscription has been deleted
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `urn` = NULL, `type` = NULL, `actions` = NULL, `filterExpression` = NULL, `name` = NULL, `description` = NULL, `deliveryTarget` = NULL, `matchIdentities` = NULL, `acl` = NULL, `tenantId` = NULL, `createdByUserId` = NULL, `timeCreated` = NULL, `deletedByUserId` = NULL, `timeDeleted` = NULL, `isDeleted` = NULL, ...) {
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
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`actions`)) {
        stopifnot(is.vector(`actions`), length(`actions`) != 0)
        sapply(`actions`, function(x) stopifnot(is.character(x)))
        self$`actions` <- `actions`
      }
      if (!is.null(`filterExpression`)) {
        if (!(is.character(`filterExpression`) && length(`filterExpression`) == 1)) {
          stop(paste("Error! Invalid data for `filterExpression`. Must be a string:", `filterExpression`))
        }
        self$`filterExpression` <- `filterExpression`
      }
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
      if (!is.null(`deliveryTarget`)) {
        stopifnot(R6::is.R6(`deliveryTarget`))
        self$`deliveryTarget` <- `deliveryTarget`
      }
      if (!is.null(`matchIdentities`)) {
        stopifnot(is.vector(`matchIdentities`), length(`matchIdentities`) != 0)
        sapply(`matchIdentities`, function(x) stopifnot(is.character(x)))
        self$`matchIdentities` <- `matchIdentities`
      }
      if (!is.null(`acl`)) {
        stopifnot(is.vector(`acl`), length(`acl`) != 0)
        sapply(`acl`, function(x) stopifnot(is.character(x)))
        self$`acl` <- `acl`
      }
      if (!is.null(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!is.null(`createdByUserId`)) {
        if (!(is.character(`createdByUserId`) && length(`createdByUserId`) == 1)) {
          stop(paste("Error! Invalid data for `createdByUserId`. Must be a string:", `createdByUserId`))
        }
        self$`createdByUserId` <- `createdByUserId`
      }
      if (!is.null(`timeCreated`)) {
        if (!is.character(`timeCreated`)) {
          stop(paste("Error! Invalid data for `timeCreated`. Must be a string:", `timeCreated`))
        }
        self$`timeCreated` <- `timeCreated`
      }
      if (!is.null(`deletedByUserId`)) {
        if (!(is.character(`deletedByUserId`) && length(`deletedByUserId`) == 1)) {
          stop(paste("Error! Invalid data for `deletedByUserId`. Must be a string:", `deletedByUserId`))
        }
        self$`deletedByUserId` <- `deletedByUserId`
      }
      if (!is.null(`timeDeleted`)) {
        if (!is.character(`timeDeleted`)) {
          stop(paste("Error! Invalid data for `timeDeleted`. Must be a string:", `timeDeleted`))
        }
        self$`timeDeleted` <- `timeDeleted`
      }
      if (!is.null(`isDeleted`)) {
        if (!(is.logical(`isDeleted`) && length(`isDeleted`) == 1)) {
          stop(paste("Error! Invalid data for `isDeleted`. Must be a boolean:", `isDeleted`))
        }
        self$`isDeleted` <- `isDeleted`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Subscription in JSON format
    #' @export
    toJSON = function() {
      SubscriptionObject <- list()
      if (!is.null(self$`id`)) {
        SubscriptionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`urn`)) {
        SubscriptionObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`type`)) {
        SubscriptionObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`actions`)) {
        SubscriptionObject[["actions"]] <-
          self$`actions`
      }
      if (!is.null(self$`filterExpression`)) {
        SubscriptionObject[["filterExpression"]] <-
          self$`filterExpression`
      }
      if (!is.null(self$`name`)) {
        SubscriptionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        SubscriptionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`deliveryTarget`)) {
        SubscriptionObject[["deliveryTarget"]] <-
          self$`deliveryTarget`$toJSON()
      }
      if (!is.null(self$`matchIdentities`)) {
        SubscriptionObject[["matchIdentities"]] <-
          self$`matchIdentities`
      }
      if (!is.null(self$`acl`)) {
        SubscriptionObject[["acl"]] <-
          self$`acl`
      }
      if (!is.null(self$`tenantId`)) {
        SubscriptionObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`createdByUserId`)) {
        SubscriptionObject[["createdByUserId"]] <-
          self$`createdByUserId`
      }
      if (!is.null(self$`timeCreated`)) {
        SubscriptionObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`deletedByUserId`)) {
        SubscriptionObject[["deletedByUserId"]] <-
          self$`deletedByUserId`
      }
      if (!is.null(self$`timeDeleted`)) {
        SubscriptionObject[["timeDeleted"]] <-
          self$`timeDeleted`
      }
      if (!is.null(self$`isDeleted`)) {
        SubscriptionObject[["isDeleted"]] <-
          self$`isDeleted`
      }
      SubscriptionObject
    },
    #' Deserialize JSON string into an instance of Subscription
    #'
    #' @description
    #' Deserialize JSON string into an instance of Subscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of Subscription
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`urn`)) {
        self$`urn` <- this_object$`urn`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`actions`)) {
        self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`filterExpression`)) {
        self$`filterExpression` <- this_object$`filterExpression`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`deliveryTarget`)) {
        `deliverytarget_object` <- DeliveryTarget$new()
        `deliverytarget_object`$fromJSON(jsonlite::toJSON(this_object$`deliveryTarget`, auto_unbox = TRUE, digits = NA))
        self$`deliveryTarget` <- `deliverytarget_object`
      }
      if (!is.null(this_object$`matchIdentities`)) {
        self$`matchIdentities` <- ApiClient$new()$deserializeObj(this_object$`matchIdentities`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`acl`)) {
        self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`createdByUserId`)) {
        self$`createdByUserId` <- this_object$`createdByUserId`
      }
      if (!is.null(this_object$`timeCreated`)) {
        self$`timeCreated` <- this_object$`timeCreated`
      }
      if (!is.null(this_object$`deletedByUserId`)) {
        self$`deletedByUserId` <- this_object$`deletedByUserId`
      }
      if (!is.null(this_object$`timeDeleted`)) {
        self$`timeDeleted` <- this_object$`timeDeleted`
      }
      if (!is.null(this_object$`isDeleted`)) {
        self$`isDeleted` <- this_object$`isDeleted`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Subscription in JSON format
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
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`actions`)) {
          sprintf(
          '"actions":
             [%s]
          ',
          paste(unlist(lapply(self$`actions`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`filterExpression`)) {
          sprintf(
          '"filterExpression":
            "%s"
                    ',
          self$`filterExpression`
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`deliveryTarget`)) {
          sprintf(
          '"deliveryTarget":
          %s
          ',
          jsonlite::toJSON(self$`deliveryTarget`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`matchIdentities`)) {
          sprintf(
          '"matchIdentities":
             [%s]
          ',
          paste(unlist(lapply(self$`matchIdentities`, function(x) paste0('"', x, '"'))), collapse = ",")
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
        if (!is.null(self$`tenantId`)) {
          sprintf(
          '"tenantId":
            "%s"
                    ',
          self$`tenantId`
          )
        },
        if (!is.null(self$`createdByUserId`)) {
          sprintf(
          '"createdByUserId":
            "%s"
                    ',
          self$`createdByUserId`
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
        if (!is.null(self$`deletedByUserId`)) {
          sprintf(
          '"deletedByUserId":
            "%s"
                    ',
          self$`deletedByUserId`
          )
        },
        if (!is.null(self$`timeDeleted`)) {
          sprintf(
          '"timeDeleted":
            "%s"
                    ',
          self$`timeDeleted`
          )
        },
        if (!is.null(self$`isDeleted`)) {
          sprintf(
          '"isDeleted":
            %s
                    ',
          tolower(self$`isDeleted`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Subscription
    #'
    #' @description
    #' Deserialize JSON string into an instance of Subscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of Subscription
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`urn` <- this_object$`urn`
      self$`type` <- this_object$`type`
      self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[character]", loadNamespace("icar1"))
      self$`filterExpression` <- this_object$`filterExpression`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`deliveryTarget` <- DeliveryTarget$new()$fromJSON(jsonlite::toJSON(this_object$`deliveryTarget`, auto_unbox = TRUE, digits = NA))
      self$`matchIdentities` <- ApiClient$new()$deserializeObj(this_object$`matchIdentities`, "array[character]", loadNamespace("icar1"))
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self$`tenantId` <- this_object$`tenantId`
      self$`createdByUserId` <- this_object$`createdByUserId`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`deletedByUserId` <- this_object$`deletedByUserId`
      self$`timeDeleted` <- this_object$`timeDeleted`
      self$`isDeleted` <- this_object$`isDeleted`
      self
    },
    #' Validate JSON input with respect to Subscription
    #'
    #' @description
    #' Validate JSON input with respect to Subscription and throw an exception if invalid
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
    #' @return String representation of Subscription
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
# Subscription$unlock()
#
## Below is an example to define the print function
# Subscription$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Subscription$lock()

