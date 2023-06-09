#' Create a new CreateVolumeResponse
#'
#' @description
#' CreateVolumeResponse Class
#'
#' @docType class
#' @title CreateVolumeResponse
#' @description CreateVolumeResponse Class
#' @format An \code{R6Class} generator object
#' @field id A unique identifier for this Volume character [optional]
#' @field name The name of this Volume character [optional]
#' @field tenantId The unique identifier for this Volume's Tenant character [optional]
#' @field subTenantId The unique identifier for this Volume's Sub Tenant character [optional]
#' @field urn The Universal Resource Name, unique to this Volume character [optional]
#' @field rootFolderId The unique identifier for the root Folder of this Volume character [optional]
#' @field rootKeyPrefix The base bucket location for Volumes associated with custom VolumeConfigurations otherwise this field is not set. character [optional]
#' @field volumeConfigurationName Unique name of the Volume configuration for this Volume.  This field will only be set if a custom Volume configuration is associated. character [optional]
#' @field inheritedAcl The inherited list of Id(s) that have access to this Volume list(character) [optional]
#' @field timeCreated The date & time this Volume was created, in GDS character [optional]
#' @field createdBy The creator of this Volume character [optional]
#' @field timeModified The date & time this Volume was updated, in GDS character [optional]
#' @field modifiedBy The updator of this Volume character [optional]
#' @field jobStatus This enum was originally created to store the type of job on a folder or file entity.   The Job entity is now used to track this information for copy operations, with the Illumina.Gds.Api.Models.Enums.JobOperationType   and Illumina.Gds.Api.Models.Enums.JobProgressStatus used to record the type and progress status of the job.  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK character [optional]
#' @field metadata Metadata about this Volume object [optional]
#' @field lifeCycle  \link{VolumeLifeCycleSettings} [optional]
#' @field migrationStatus Status of the root folder migration status from v1 to v2 character [optional]
#' @field importSessionId Unique identifier of the import Session for this Volume. This only applies to Volumes created from custom  Volume configurations. character [optional]
#' @field objectStoreAccess  \link{ObjectStoreAccess} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateVolumeResponse <- R6::R6Class(
  "CreateVolumeResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `tenantId` = NULL,
    `subTenantId` = NULL,
    `urn` = NULL,
    `rootFolderId` = NULL,
    `rootKeyPrefix` = NULL,
    `volumeConfigurationName` = NULL,
    `inheritedAcl` = NULL,
    `timeCreated` = NULL,
    `createdBy` = NULL,
    `timeModified` = NULL,
    `modifiedBy` = NULL,
    `jobStatus` = NULL,
    `metadata` = NULL,
    `lifeCycle` = NULL,
    `migrationStatus` = NULL,
    `importSessionId` = NULL,
    `objectStoreAccess` = NULL,
    #' Initialize a new CreateVolumeResponse class.
    #'
    #' @description
    #' Initialize a new CreateVolumeResponse class.
    #'
    #' @param id A unique identifier for this Volume
    #' @param name The name of this Volume
    #' @param tenantId The unique identifier for this Volume's Tenant
    #' @param subTenantId The unique identifier for this Volume's Sub Tenant
    #' @param urn The Universal Resource Name, unique to this Volume
    #' @param rootFolderId The unique identifier for the root Folder of this Volume
    #' @param rootKeyPrefix The base bucket location for Volumes associated with custom VolumeConfigurations otherwise this field is not set.
    #' @param volumeConfigurationName Unique name of the Volume configuration for this Volume.  This field will only be set if a custom Volume configuration is associated.
    #' @param inheritedAcl The inherited list of Id(s) that have access to this Volume
    #' @param timeCreated The date & time this Volume was created, in GDS
    #' @param createdBy The creator of this Volume
    #' @param timeModified The date & time this Volume was updated, in GDS
    #' @param modifiedBy The updator of this Volume
    #' @param jobStatus This enum was originally created to store the type of job on a folder or file entity.   The Job entity is now used to track this information for copy operations, with the Illumina.Gds.Api.Models.Enums.JobOperationType   and Illumina.Gds.Api.Models.Enums.JobProgressStatus used to record the type and progress status of the job.  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK
    #' @param metadata Metadata about this Volume
    #' @param lifeCycle lifeCycle
    #' @param migrationStatus Status of the root folder migration status from v1 to v2
    #' @param importSessionId Unique identifier of the import Session for this Volume. This only applies to Volumes created from custom  Volume configurations.
    #' @param objectStoreAccess objectStoreAccess
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `name` = NULL, `tenantId` = NULL, `subTenantId` = NULL, `urn` = NULL, `rootFolderId` = NULL, `rootKeyPrefix` = NULL, `volumeConfigurationName` = NULL, `inheritedAcl` = NULL, `timeCreated` = NULL, `createdBy` = NULL, `timeModified` = NULL, `modifiedBy` = NULL, `jobStatus` = NULL, `metadata` = NULL, `lifeCycle` = NULL, `migrationStatus` = NULL, `importSessionId` = NULL, `objectStoreAccess` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`urn`)) {
        if (!(is.character(`urn`) && length(`urn`) == 1)) {
          stop(paste("Error! Invalid data for `urn`. Must be a string:", `urn`))
        }
        self$`urn` <- `urn`
      }
      if (!is.null(`rootFolderId`)) {
        if (!(is.character(`rootFolderId`) && length(`rootFolderId`) == 1)) {
          stop(paste("Error! Invalid data for `rootFolderId`. Must be a string:", `rootFolderId`))
        }
        self$`rootFolderId` <- `rootFolderId`
      }
      if (!is.null(`rootKeyPrefix`)) {
        if (!(is.character(`rootKeyPrefix`) && length(`rootKeyPrefix`) == 1)) {
          stop(paste("Error! Invalid data for `rootKeyPrefix`. Must be a string:", `rootKeyPrefix`))
        }
        self$`rootKeyPrefix` <- `rootKeyPrefix`
      }
      if (!is.null(`volumeConfigurationName`)) {
        if (!(is.character(`volumeConfigurationName`) && length(`volumeConfigurationName`) == 1)) {
          stop(paste("Error! Invalid data for `volumeConfigurationName`. Must be a string:", `volumeConfigurationName`))
        }
        self$`volumeConfigurationName` <- `volumeConfigurationName`
      }
      if (!is.null(`inheritedAcl`)) {
        stopifnot(is.vector(`inheritedAcl`), length(`inheritedAcl`) != 0)
        sapply(`inheritedAcl`, function(x) stopifnot(is.character(x)))
        self$`inheritedAcl` <- `inheritedAcl`
      }
      if (!is.null(`timeCreated`)) {
        if (!is.character(`timeCreated`)) {
          stop(paste("Error! Invalid data for `timeCreated`. Must be a string:", `timeCreated`))
        }
        self$`timeCreated` <- `timeCreated`
      }
      if (!is.null(`createdBy`)) {
        if (!(is.character(`createdBy`) && length(`createdBy`) == 1)) {
          stop(paste("Error! Invalid data for `createdBy`. Must be a string:", `createdBy`))
        }
        self$`createdBy` <- `createdBy`
      }
      if (!is.null(`timeModified`)) {
        if (!is.character(`timeModified`)) {
          stop(paste("Error! Invalid data for `timeModified`. Must be a string:", `timeModified`))
        }
        self$`timeModified` <- `timeModified`
      }
      if (!is.null(`modifiedBy`)) {
        if (!(is.character(`modifiedBy`) && length(`modifiedBy`) == 1)) {
          stop(paste("Error! Invalid data for `modifiedBy`. Must be a string:", `modifiedBy`))
        }
        self$`modifiedBy` <- `modifiedBy`
      }
      if (!is.null(`jobStatus`)) {
        if (!(is.character(`jobStatus`) && length(`jobStatus`) == 1)) {
          stop(paste("Error! Invalid data for `jobStatus`. Must be a string:", `jobStatus`))
        }
        self$`jobStatus` <- `jobStatus`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
      if (!is.null(`lifeCycle`)) {
        stopifnot(R6::is.R6(`lifeCycle`))
        self$`lifeCycle` <- `lifeCycle`
      }
      if (!is.null(`migrationStatus`)) {
        if (!(is.character(`migrationStatus`) && length(`migrationStatus`) == 1)) {
          stop(paste("Error! Invalid data for `migrationStatus`. Must be a string:", `migrationStatus`))
        }
        self$`migrationStatus` <- `migrationStatus`
      }
      if (!is.null(`importSessionId`)) {
        if (!(is.character(`importSessionId`) && length(`importSessionId`) == 1)) {
          stop(paste("Error! Invalid data for `importSessionId`. Must be a string:", `importSessionId`))
        }
        self$`importSessionId` <- `importSessionId`
      }
      if (!is.null(`objectStoreAccess`)) {
        stopifnot(R6::is.R6(`objectStoreAccess`))
        self$`objectStoreAccess` <- `objectStoreAccess`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateVolumeResponse in JSON format
    #' @export
    toJSON = function() {
      CreateVolumeResponseObject <- list()
      if (!is.null(self$`id`)) {
        CreateVolumeResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CreateVolumeResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`tenantId`)) {
        CreateVolumeResponseObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`subTenantId`)) {
        CreateVolumeResponseObject[["subTenantId"]] <-
          self$`subTenantId`
      }
      if (!is.null(self$`urn`)) {
        CreateVolumeResponseObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`rootFolderId`)) {
        CreateVolumeResponseObject[["rootFolderId"]] <-
          self$`rootFolderId`
      }
      if (!is.null(self$`rootKeyPrefix`)) {
        CreateVolumeResponseObject[["rootKeyPrefix"]] <-
          self$`rootKeyPrefix`
      }
      if (!is.null(self$`volumeConfigurationName`)) {
        CreateVolumeResponseObject[["volumeConfigurationName"]] <-
          self$`volumeConfigurationName`
      }
      if (!is.null(self$`inheritedAcl`)) {
        CreateVolumeResponseObject[["inheritedAcl"]] <-
          self$`inheritedAcl`
      }
      if (!is.null(self$`timeCreated`)) {
        CreateVolumeResponseObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`createdBy`)) {
        CreateVolumeResponseObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`timeModified`)) {
        CreateVolumeResponseObject[["timeModified"]] <-
          self$`timeModified`
      }
      if (!is.null(self$`modifiedBy`)) {
        CreateVolumeResponseObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`jobStatus`)) {
        CreateVolumeResponseObject[["jobStatus"]] <-
          self$`jobStatus`
      }
      if (!is.null(self$`metadata`)) {
        CreateVolumeResponseObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`lifeCycle`)) {
        CreateVolumeResponseObject[["lifeCycle"]] <-
          self$`lifeCycle`$toJSON()
      }
      if (!is.null(self$`migrationStatus`)) {
        CreateVolumeResponseObject[["migrationStatus"]] <-
          self$`migrationStatus`
      }
      if (!is.null(self$`importSessionId`)) {
        CreateVolumeResponseObject[["importSessionId"]] <-
          self$`importSessionId`
      }
      if (!is.null(self$`objectStoreAccess`)) {
        CreateVolumeResponseObject[["objectStoreAccess"]] <-
          self$`objectStoreAccess`$toJSON()
      }
      CreateVolumeResponseObject
    },
    #' Deserialize JSON string into an instance of CreateVolumeResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateVolumeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateVolumeResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`subTenantId`)) {
        self$`subTenantId` <- this_object$`subTenantId`
      }
      if (!is.null(this_object$`urn`)) {
        self$`urn` <- this_object$`urn`
      }
      if (!is.null(this_object$`rootFolderId`)) {
        self$`rootFolderId` <- this_object$`rootFolderId`
      }
      if (!is.null(this_object$`rootKeyPrefix`)) {
        self$`rootKeyPrefix` <- this_object$`rootKeyPrefix`
      }
      if (!is.null(this_object$`volumeConfigurationName`)) {
        self$`volumeConfigurationName` <- this_object$`volumeConfigurationName`
      }
      if (!is.null(this_object$`inheritedAcl`)) {
        self$`inheritedAcl` <- ApiClient$new()$deserializeObj(this_object$`inheritedAcl`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`timeCreated`)) {
        self$`timeCreated` <- this_object$`timeCreated`
      }
      if (!is.null(this_object$`createdBy`)) {
        self$`createdBy` <- this_object$`createdBy`
      }
      if (!is.null(this_object$`timeModified`)) {
        self$`timeModified` <- this_object$`timeModified`
      }
      if (!is.null(this_object$`modifiedBy`)) {
        self$`modifiedBy` <- this_object$`modifiedBy`
      }
      if (!is.null(this_object$`jobStatus`)) {
        self$`jobStatus` <- this_object$`jobStatus`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`lifeCycle`)) {
        `lifecycle_object` <- VolumeLifeCycleSettings$new()
        `lifecycle_object`$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
        self$`lifeCycle` <- `lifecycle_object`
      }
      if (!is.null(this_object$`migrationStatus`)) {
        self$`migrationStatus` <- this_object$`migrationStatus`
      }
      if (!is.null(this_object$`importSessionId`)) {
        self$`importSessionId` <- this_object$`importSessionId`
      }
      if (!is.null(this_object$`objectStoreAccess`)) {
        `objectstoreaccess_object` <- ObjectStoreAccess$new()
        `objectstoreaccess_object`$fromJSON(jsonlite::toJSON(this_object$`objectStoreAccess`, auto_unbox = TRUE, digits = NA))
        self$`objectStoreAccess` <- `objectstoreaccess_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CreateVolumeResponse in JSON format
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
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
        if (!is.null(self$`urn`)) {
          sprintf(
          '"urn":
            "%s"
                    ',
          self$`urn`
          )
        },
        if (!is.null(self$`rootFolderId`)) {
          sprintf(
          '"rootFolderId":
            "%s"
                    ',
          self$`rootFolderId`
          )
        },
        if (!is.null(self$`rootKeyPrefix`)) {
          sprintf(
          '"rootKeyPrefix":
            "%s"
                    ',
          self$`rootKeyPrefix`
          )
        },
        if (!is.null(self$`volumeConfigurationName`)) {
          sprintf(
          '"volumeConfigurationName":
            "%s"
                    ',
          self$`volumeConfigurationName`
          )
        },
        if (!is.null(self$`inheritedAcl`)) {
          sprintf(
          '"inheritedAcl":
             [%s]
          ',
          paste(unlist(lapply(self$`inheritedAcl`, function(x) paste0('"', x, '"'))), collapse = ",")
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
        if (!is.null(self$`createdBy`)) {
          sprintf(
          '"createdBy":
            "%s"
                    ',
          self$`createdBy`
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
        if (!is.null(self$`modifiedBy`)) {
          sprintf(
          '"modifiedBy":
            "%s"
                    ',
          self$`modifiedBy`
          )
        },
        if (!is.null(self$`jobStatus`)) {
          sprintf(
          '"jobStatus":
            "%s"
                    ',
          self$`jobStatus`
          )
        },
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
            "%s"
                    ',
          self$`metadata`
          )
        },
        if (!is.null(self$`lifeCycle`)) {
          sprintf(
          '"lifeCycle":
          %s
          ',
          jsonlite::toJSON(self$`lifeCycle`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`migrationStatus`)) {
          sprintf(
          '"migrationStatus":
            "%s"
                    ',
          self$`migrationStatus`
          )
        },
        if (!is.null(self$`importSessionId`)) {
          sprintf(
          '"importSessionId":
            "%s"
                    ',
          self$`importSessionId`
          )
        },
        if (!is.null(self$`objectStoreAccess`)) {
          sprintf(
          '"objectStoreAccess":
          %s
          ',
          jsonlite::toJSON(self$`objectStoreAccess`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CreateVolumeResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateVolumeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateVolumeResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`tenantId` <- this_object$`tenantId`
      self$`subTenantId` <- this_object$`subTenantId`
      self$`urn` <- this_object$`urn`
      self$`rootFolderId` <- this_object$`rootFolderId`
      self$`rootKeyPrefix` <- this_object$`rootKeyPrefix`
      self$`volumeConfigurationName` <- this_object$`volumeConfigurationName`
      self$`inheritedAcl` <- ApiClient$new()$deserializeObj(this_object$`inheritedAcl`, "array[character]", loadNamespace("icar1"))
      self$`timeCreated` <- this_object$`timeCreated`
      self$`createdBy` <- this_object$`createdBy`
      self$`timeModified` <- this_object$`timeModified`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`jobStatus` <- this_object$`jobStatus`
      self$`metadata` <- this_object$`metadata`
      self$`lifeCycle` <- VolumeLifeCycleSettings$new()$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
      self$`migrationStatus` <- this_object$`migrationStatus`
      self$`importSessionId` <- this_object$`importSessionId`
      self$`objectStoreAccess` <- ObjectStoreAccess$new()$fromJSON(jsonlite::toJSON(this_object$`objectStoreAccess`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to CreateVolumeResponse
    #'
    #' @description
    #' Validate JSON input with respect to CreateVolumeResponse and throw an exception if invalid
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
    #' @return String representation of CreateVolumeResponse
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
# CreateVolumeResponse$unlock()
#
## Below is an example to define the print function
# CreateVolumeResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateVolumeResponse$lock()

