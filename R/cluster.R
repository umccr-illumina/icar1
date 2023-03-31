#' Create a new Cluster
#'
#' @description
#' Cluster Class
#'
#' @docType class
#' @title Cluster
#' @description Cluster Class
#' @format An \code{R6Class} generator object
#' @field id Global identifier for object character [optional]
#' @field href Href of the object character [optional]
#' @field urn URN of the resource character [optional]
#' @field name  character [optional]
#' @field svcAcctUId  character [optional]
#' @field status  character [optional]
#' @field type  character [optional]
#' @field taskRuns  list(\link{TaskRun}) [optional]
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
Cluster <- R6::R6Class(
  "Cluster",
  public = list(
    `id` = NULL,
    `href` = NULL,
    `urn` = NULL,
    `name` = NULL,
    `svcAcctUId` = NULL,
    `status` = NULL,
    `type` = NULL,
    `taskRuns` = NULL,
    `acl` = NULL,
    `tenantId` = NULL,
    `subTenantId` = NULL,
    `createdBy` = NULL,
    `timeCreated` = NULL,
    `modifiedBy` = NULL,
    `timeModified` = NULL,
    #' Initialize a new Cluster class.
    #'
    #' @description
    #' Initialize a new Cluster class.
    #'
    #' @param id Global identifier for object
    #' @param href Href of the object
    #' @param urn URN of the resource
    #' @param name name
    #' @param svcAcctUId svcAcctUId
    #' @param status status
    #' @param type type
    #' @param taskRuns taskRuns
    #' @param acl Access Control List
    #' @param tenantId tenantId
    #' @param subTenantId subTenantId
    #' @param createdBy User who created the object
    #' @param timeCreated Date and Time (in UTC) when object was created in TES
    #' @param modifiedBy User who updated the object
    #' @param timeModified Date and Time (in UTC) when object was modified in TES
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `href` = NULL, `urn` = NULL, `name` = NULL, `svcAcctUId` = NULL, `status` = NULL, `type` = NULL, `taskRuns` = NULL, `acl` = NULL, `tenantId` = NULL, `subTenantId` = NULL, `createdBy` = NULL, `timeCreated` = NULL, `modifiedBy` = NULL, `timeModified` = NULL, ...) {
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
      if (!is.null(`name`)) {
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
      if (!is.null(`taskRuns`)) {
        stopifnot(is.vector(`taskRuns`), length(`taskRuns`) != 0)
        sapply(`taskRuns`, function(x) stopifnot(R6::is.R6(x)))
        self$`taskRuns` <- `taskRuns`
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
    #' @return Cluster in JSON format
    #' @export
    toJSON = function() {
      ClusterObject <- list()
      if (!is.null(self$`id`)) {
        ClusterObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`href`)) {
        ClusterObject[["href"]] <-
          self$`href`
      }
      if (!is.null(self$`urn`)) {
        ClusterObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`name`)) {
        ClusterObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`svcAcctUId`)) {
        ClusterObject[["svcAcctUId"]] <-
          self$`svcAcctUId`
      }
      if (!is.null(self$`status`)) {
        ClusterObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`type`)) {
        ClusterObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`taskRuns`)) {
        ClusterObject[["taskRuns"]] <-
          lapply(self$`taskRuns`, function(x) x$toJSON())
      }
      if (!is.null(self$`acl`)) {
        ClusterObject[["acl"]] <-
          self$`acl`
      }
      if (!is.null(self$`tenantId`)) {
        ClusterObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`subTenantId`)) {
        ClusterObject[["subTenantId"]] <-
          self$`subTenantId`
      }
      if (!is.null(self$`createdBy`)) {
        ClusterObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`timeCreated`)) {
        ClusterObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`modifiedBy`)) {
        ClusterObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`timeModified`)) {
        ClusterObject[["timeModified"]] <-
          self$`timeModified`
      }
      ClusterObject
    },
    #' Deserialize JSON string into an instance of Cluster
    #'
    #' @description
    #' Deserialize JSON string into an instance of Cluster
    #'
    #' @param input_json the JSON input
    #' @return the instance of Cluster
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
      if (!is.null(this_object$`taskRuns`)) {
        self$`taskRuns` <- ApiClient$new()$deserializeObj(this_object$`taskRuns`, "array[TaskRun]", loadNamespace("icar1"))
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
    #' @return Cluster in JSON format
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
        if (!is.null(self$`taskRuns`)) {
          sprintf(
          '"taskRuns":
          [%s]
',
          paste(sapply(self$`taskRuns`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of Cluster
    #'
    #' @description
    #' Deserialize JSON string into an instance of Cluster
    #'
    #' @param input_json the JSON input
    #' @return the instance of Cluster
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`href` <- this_object$`href`
      self$`urn` <- this_object$`urn`
      self$`name` <- this_object$`name`
      self$`svcAcctUId` <- this_object$`svcAcctUId`
      self$`status` <- this_object$`status`
      self$`type` <- this_object$`type`
      self$`taskRuns` <- ApiClient$new()$deserializeObj(this_object$`taskRuns`, "array[TaskRun]", loadNamespace("icar1"))
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self$`tenantId` <- this_object$`tenantId`
      self$`subTenantId` <- this_object$`subTenantId`
      self$`createdBy` <- this_object$`createdBy`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`timeModified` <- this_object$`timeModified`
      self
    },
    #' Validate JSON input with respect to Cluster
    #'
    #' @description
    #' Validate JSON input with respect to Cluster and throw an exception if invalid
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
    #' @return String representation of Cluster
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
# Cluster$unlock()
#
## Below is an example to define the print function
# Cluster$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Cluster$lock()

