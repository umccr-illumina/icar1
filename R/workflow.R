#' Create a new Workflow
#'
#' @description
#' Details of a workflow
#'
#' @docType class
#' @title Workflow
#' @description Workflow Class
#' @format An \code{R6Class} generator object
#' @field id Unique resource ID character [optional]
#' @field urn URN of the resource character [optional]
#' @field href HREF to the resource character [optional]
#' @field name Name of the workflow character [optional]
#' @field organization Organization associated with the workflow character [optional]
#' @field description Description of the workflow character [optional]
#' @field toolClass Workflow type character [optional]
#' @field categories Categories of the workflow (Limit Max Size : 10) list(character) [optional]
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
Workflow <- R6::R6Class(
  "Workflow",
  public = list(
    `id` = NULL,
    `urn` = NULL,
    `href` = NULL,
    `name` = NULL,
    `organization` = NULL,
    `description` = NULL,
    `toolClass` = NULL,
    `categories` = NULL,
    `createdByClientId` = NULL,
    `timeCreated` = NULL,
    `timeModified` = NULL,
    `createdBy` = NULL,
    `modifiedBy` = NULL,
    `tenantId` = NULL,
    `acl` = NULL,
    #' Initialize a new Workflow class.
    #'
    #' @description
    #' Initialize a new Workflow class.
    #'
    #' @param id Unique resource ID
    #' @param urn URN of the resource
    #' @param href HREF to the resource
    #' @param name Name of the workflow
    #' @param organization Organization associated with the workflow
    #' @param description Description of the workflow
    #' @param toolClass Workflow type
    #' @param categories Categories of the workflow (Limit Max Size : 10)
    #' @param createdByClientId Client ID of the Origin Request
    #' @param timeCreated Time (in UTC) the resource was created
    #' @param timeModified Time (in UTC) the resource was modified
    #' @param createdBy User that created the resource
    #' @param modifiedBy User that modified the resource
    #' @param tenantId Tenant ID the resource belongs to
    #' @param acl Access control list of the resource
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `urn` = NULL, `href` = NULL, `name` = NULL, `organization` = NULL, `description` = NULL, `toolClass` = NULL, `categories` = NULL, `createdByClientId` = NULL, `timeCreated` = NULL, `timeModified` = NULL, `createdBy` = NULL, `modifiedBy` = NULL, `tenantId` = NULL, `acl` = NULL, ...) {
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
      if (!is.null(`organization`)) {
        if (!(is.character(`organization`) && length(`organization`) == 1)) {
          stop(paste("Error! Invalid data for `organization`. Must be a string:", `organization`))
        }
        self$`organization` <- `organization`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`toolClass`)) {
        if (!(is.character(`toolClass`) && length(`toolClass`) == 1)) {
          stop(paste("Error! Invalid data for `toolClass`. Must be a string:", `toolClass`))
        }
        self$`toolClass` <- `toolClass`
      }
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(is.character(x)))
        self$`categories` <- `categories`
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
    #' @return Workflow in JSON format
    #' @export
    toJSON = function() {
      WorkflowObject <- list()
      if (!is.null(self$`id`)) {
        WorkflowObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`urn`)) {
        WorkflowObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`href`)) {
        WorkflowObject[["href"]] <-
          self$`href`
      }
      if (!is.null(self$`name`)) {
        WorkflowObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`organization`)) {
        WorkflowObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`description`)) {
        WorkflowObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`toolClass`)) {
        WorkflowObject[["toolClass"]] <-
          self$`toolClass`
      }
      if (!is.null(self$`categories`)) {
        WorkflowObject[["categories"]] <-
          self$`categories`
      }
      if (!is.null(self$`createdByClientId`)) {
        WorkflowObject[["createdByClientId"]] <-
          self$`createdByClientId`
      }
      if (!is.null(self$`timeCreated`)) {
        WorkflowObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`timeModified`)) {
        WorkflowObject[["timeModified"]] <-
          self$`timeModified`
      }
      if (!is.null(self$`createdBy`)) {
        WorkflowObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`modifiedBy`)) {
        WorkflowObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`tenantId`)) {
        WorkflowObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`acl`)) {
        WorkflowObject[["acl"]] <-
          self$`acl`
      }
      WorkflowObject
    },
    #' Deserialize JSON string into an instance of Workflow
    #'
    #' @description
    #' Deserialize JSON string into an instance of Workflow
    #'
    #' @param input_json the JSON input
    #' @return the instance of Workflow
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
      if (!is.null(this_object$`organization`)) {
        self$`organization` <- this_object$`organization`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`toolClass`)) {
        self$`toolClass` <- this_object$`toolClass`
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[character]", loadNamespace("icar1"))
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
    #' @return Workflow in JSON format
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
        if (!is.null(self$`organization`)) {
          sprintf(
          '"organization":
            "%s"
                    ',
          self$`organization`
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
        if (!is.null(self$`toolClass`)) {
          sprintf(
          '"toolClass":
            "%s"
                    ',
          self$`toolClass`
          )
        },
        if (!is.null(self$`categories`)) {
          sprintf(
          '"categories":
             [%s]
          ',
          paste(unlist(lapply(self$`categories`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of Workflow
    #'
    #' @description
    #' Deserialize JSON string into an instance of Workflow
    #'
    #' @param input_json the JSON input
    #' @return the instance of Workflow
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
      self$`organization` <- this_object$`organization`
      self$`description` <- this_object$`description`
      self$`toolClass` <- this_object$`toolClass`
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[character]", loadNamespace("icar1"))
      self$`createdByClientId` <- this_object$`createdByClientId`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`timeModified` <- this_object$`timeModified`
      self$`createdBy` <- this_object$`createdBy`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`tenantId` <- this_object$`tenantId`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to Workflow
    #'
    #' @description
    #' Validate JSON input with respect to Workflow and throw an exception if invalid
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
    #' @return String representation of Workflow
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

      if (nchar(self$`organization`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`organization`) < 0) {
        return(FALSE)
      }

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
      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }
      if (nchar(self$`name`) < 0) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 0."
      }

      if (nchar(self$`organization`) > 255) {
        invalid_fields["organization"] <- "Invalid length for `organization`, must be smaller than or equal to 255."
      }
      if (nchar(self$`organization`) < 0) {
        invalid_fields["organization"] <- "Invalid length for `organization`, must be bigger than or equal to 0."
      }

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
# Workflow$unlock()
#
## Below is an example to define the print function
# Workflow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Workflow$lock()

