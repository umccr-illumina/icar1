#' Create a new TaskVersion
#'
#' @description
#' TaskVersion Class
#'
#' @docType class
#' @title TaskVersion
#' @description TaskVersion Class
#' @format An \code{R6Class} generator object
#' @field id Global identifier for object character [optional]
#' @field href Href of the object character [optional]
#' @field urn URN of the resource character [optional]
#' @field version  character [optional]
#' @field description  character [optional]
#' @field execution  \link{Execution} [optional]
#' @field acl Access Control List list(character) [optional]
#' @field tenantId  character [optional]
#' @field subTenantId  character [optional]
#' @field createdBy User who created the object character [optional]
#' @field timeCreated Date and Time (in UTC) when object was created in TES character [optional]
#' @field modifiedBy User who updated the object character [optional]
#' @field timeModified Date and Time (in UTC) when object was modified in TES character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TaskVersion <- R6::R6Class(
  "TaskVersion",
  public = list(
    `id` = NULL,
    `href` = NULL,
    `urn` = NULL,
    `version` = NULL,
    `description` = NULL,
    `execution` = NULL,
    `acl` = NULL,
    `tenantId` = NULL,
    `subTenantId` = NULL,
    `createdBy` = NULL,
    `timeCreated` = NULL,
    `modifiedBy` = NULL,
    `timeModified` = NULL,
    #' Initialize a new TaskVersion class.
    #'
    #' @description
    #' Initialize a new TaskVersion class.
    #'
    #' @param id Global identifier for object
    #' @param href Href of the object
    #' @param urn URN of the resource
    #' @param version version
    #' @param description description
    #' @param execution execution
    #' @param acl Access Control List
    #' @param tenantId tenantId
    #' @param subTenantId subTenantId
    #' @param createdBy User who created the object
    #' @param timeCreated Date and Time (in UTC) when object was created in TES
    #' @param modifiedBy User who updated the object
    #' @param timeModified Date and Time (in UTC) when object was modified in TES
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `href` = NULL, `urn` = NULL, `version` = NULL, `description` = NULL, `execution` = NULL, `acl` = NULL, `tenantId` = NULL, `subTenantId` = NULL, `createdBy` = NULL, `timeCreated` = NULL, `modifiedBy` = NULL, `timeModified` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`href`)) {
        if (!(is.character(`href`) && length(`href`) == 1)) {
          stop(paste("Error! Invalid data for `href`. Must be a string:", `href`))
        }
        self$`href` <- `href`
      }
      if (!is.null(`urn`)) {
        if (!(is.character(`urn`) && length(`urn`) == 1)) {
          stop(paste("Error! Invalid data for `urn`. Must be a string:", `urn`))
        }
        self$`urn` <- `urn`
      }
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
      if (!is.null(`execution`)) {
        stopifnot(R6::is.R6(`execution`))
        self$`execution` <- `execution`
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
      if (!is.null(`subTenantId`)) {
        if (!(is.character(`subTenantId`) && length(`subTenantId`) == 1)) {
          stop(paste("Error! Invalid data for `subTenantId`. Must be a string:", `subTenantId`))
        }
        self$`subTenantId` <- `subTenantId`
      }
      if (!is.null(`createdBy`)) {
        if (!(is.character(`createdBy`) && length(`createdBy`) == 1)) {
          stop(paste("Error! Invalid data for `createdBy`. Must be a string:", `createdBy`))
        }
        self$`createdBy` <- `createdBy`
      }
      if (!is.null(`timeCreated`)) {
        if (!is.character(`timeCreated`)) {
          stop(paste("Error! Invalid data for `timeCreated`. Must be a string:", `timeCreated`))
        }
        self$`timeCreated` <- `timeCreated`
      }
      if (!is.null(`modifiedBy`)) {
        if (!(is.character(`modifiedBy`) && length(`modifiedBy`) == 1)) {
          stop(paste("Error! Invalid data for `modifiedBy`. Must be a string:", `modifiedBy`))
        }
        self$`modifiedBy` <- `modifiedBy`
      }
      if (!is.null(`timeModified`)) {
        if (!is.character(`timeModified`)) {
          stop(paste("Error! Invalid data for `timeModified`. Must be a string:", `timeModified`))
        }
        self$`timeModified` <- `timeModified`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TaskVersion in JSON format
    #' @export
    toJSON = function() {
      TaskVersionObject <- list()
      if (!is.null(self$`id`)) {
        TaskVersionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`href`)) {
        TaskVersionObject[["href"]] <-
          self$`href`
      }
      if (!is.null(self$`urn`)) {
        TaskVersionObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`version`)) {
        TaskVersionObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`description`)) {
        TaskVersionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`execution`)) {
        TaskVersionObject[["execution"]] <-
          self$`execution`$toJSON()
      }
      if (!is.null(self$`acl`)) {
        TaskVersionObject[["acl"]] <-
          self$`acl`
      }
      if (!is.null(self$`tenantId`)) {
        TaskVersionObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`subTenantId`)) {
        TaskVersionObject[["subTenantId"]] <-
          self$`subTenantId`
      }
      if (!is.null(self$`createdBy`)) {
        TaskVersionObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`timeCreated`)) {
        TaskVersionObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`modifiedBy`)) {
        TaskVersionObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`timeModified`)) {
        TaskVersionObject[["timeModified"]] <-
          self$`timeModified`
      }
      TaskVersionObject
    },
    #' Deserialize JSON string into an instance of TaskVersion
    #'
    #' @description
    #' Deserialize JSON string into an instance of TaskVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaskVersion
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`href`)) {
        self$`href` <- this_object$`href`
      }
      if (!is.null(this_object$`urn`)) {
        self$`urn` <- this_object$`urn`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`execution`)) {
        `execution_object` <- Execution$new()
        `execution_object`$fromJSON(jsonlite::toJSON(this_object$`execution`, auto_unbox = TRUE, digits = NA))
        self$`execution` <- `execution_object`
      }
      if (!is.null(this_object$`acl`)) {
        self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`subTenantId`)) {
        self$`subTenantId` <- this_object$`subTenantId`
      }
      if (!is.null(this_object$`createdBy`)) {
        self$`createdBy` <- this_object$`createdBy`
      }
      if (!is.null(this_object$`timeCreated`)) {
        self$`timeCreated` <- this_object$`timeCreated`
      }
      if (!is.null(this_object$`modifiedBy`)) {
        self$`modifiedBy` <- this_object$`modifiedBy`
      }
      if (!is.null(this_object$`timeModified`)) {
        self$`timeModified` <- this_object$`timeModified`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TaskVersion in JSON format
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
        if (!is.null(self$`href`)) {
          sprintf(
          '"href":
            "%s"
                    ',
          self$`href`
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
        if (!is.null(self$`execution`)) {
          sprintf(
          '"execution":
          %s
          ',
          jsonlite::toJSON(self$`execution`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`subTenantId`)) {
          sprintf(
          '"subTenantId":
            "%s"
                    ',
          self$`subTenantId`
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
        if (!is.null(self$`timeCreated`)) {
          sprintf(
          '"timeCreated":
            "%s"
                    ',
          self$`timeCreated`
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
        if (!is.null(self$`timeModified`)) {
          sprintf(
          '"timeModified":
            "%s"
                    ',
          self$`timeModified`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TaskVersion
    #'
    #' @description
    #' Deserialize JSON string into an instance of TaskVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaskVersion
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`href` <- this_object$`href`
      self$`urn` <- this_object$`urn`
      self$`version` <- this_object$`version`
      self$`description` <- this_object$`description`
      self$`execution` <- Execution$new()$fromJSON(jsonlite::toJSON(this_object$`execution`, auto_unbox = TRUE, digits = NA))
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self$`tenantId` <- this_object$`tenantId`
      self$`subTenantId` <- this_object$`subTenantId`
      self$`createdBy` <- this_object$`createdBy`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`timeModified` <- this_object$`timeModified`
      self
    },
    #' Validate JSON input with respect to TaskVersion
    #'
    #' @description
    #' Validate JSON input with respect to TaskVersion and throw an exception if invalid
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
    #' @return String representation of TaskVersion
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
      if (nchar(self$`version`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`version`) < 0) {
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
      if (nchar(self$`version`) > 255) {
        invalid_fields["version"] <- "Invalid length for `version`, must be smaller than or equal to 255."
      }
      if (nchar(self$`version`) < 0) {
        invalid_fields["version"] <- "Invalid length for `version`, must be bigger than or equal to 0."
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
# TaskVersion$unlock()
#
## Below is an example to define the print function
# TaskVersion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TaskVersion$lock()

