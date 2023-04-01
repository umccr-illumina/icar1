#' Create a new FileResponse
#'
#' @description
#' FileResponse Class
#'
#' @docType class
#' @title FileResponse
#' @description FileResponse Class
#' @format An \code{R6Class} generator object
#' @field volumeMetadata Metadata about this file's volume object [optional]
#' @field copyJobId Job that copied the file character [optional]
#' @field id A unique identifier for this File character [optional]
#' @field name The name of this File character [optional]
#' @field volumeId The unique identifier of the volume where the file resides character [optional]
#' @field parentFolderId The unique identifier of the folder where the file resides character [optional]
#' @field volumeName The name of the volume where the file resides character [optional]
#' @field volumeConfigurationName The name of the volume configuration (BYOB only) character [optional]
#' @field type The type of the File character [optional]
#' @field tenantId The unique identifier for this File's Tenant character [optional]
#' @field subTenantId The unique identifier for this File's Sub Tenant character [optional]
#' @field path The (GDS) path to this File character [optional]
#' @field timeCreated The date & time this File was created, in GDS character [optional]
#' @field createdBy The creator of this File character [optional]
#' @field timeModified The date & time this File was updated, in GDS character [optional]
#' @field modifiedBy The updator of this File character [optional]
#' @field inheritedAcl The inherited list of Id(s) that have access to this File list(character) [optional]
#' @field urn The Universal Resource Name, unique to this File character [optional]
#' @field sizeInBytes The File's Size in bytes integer [optional]
#' @field metadata Metadata about this File object [optional]
#' @field isUploaded The current upload state of the File character [optional]
#' @field archiveStatus  \link{ArchiveStatuses} [optional]
#' @field timeArchived The date & time this File was archived character [optional]
#' @field storageTier  \link{StorageTier} [optional]
#' @field eTag The File's ETag character [optional]
#' @field format The File's Format character [optional]
#' @field formatEdam  character [optional]
#' @field status  \link{FileStatus} [optional]
#' @field lifeCycle  \link{FileLifeCycleSettings} [optional]
#' @field versionId Id of the latest version of the object in the object container character [optional]
#' @field presignedUrl The presigned Url allowing access to this File character [optional]
#' @field objectStoreAccess  \link{ObjectStoreAccess} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileResponse <- R6::R6Class(
  "FileResponse",
  public = list(
    `volumeMetadata` = NULL,
    `copyJobId` = NULL,
    `id` = NULL,
    `name` = NULL,
    `volumeId` = NULL,
    `parentFolderId` = NULL,
    `volumeName` = NULL,
    `volumeConfigurationName` = NULL,
    `type` = NULL,
    `tenantId` = NULL,
    `subTenantId` = NULL,
    `path` = NULL,
    `timeCreated` = NULL,
    `createdBy` = NULL,
    `timeModified` = NULL,
    `modifiedBy` = NULL,
    `inheritedAcl` = NULL,
    `urn` = NULL,
    `sizeInBytes` = NULL,
    `metadata` = NULL,
    `isUploaded` = NULL,
    `archiveStatus` = NULL,
    `timeArchived` = NULL,
    `storageTier` = NULL,
    `eTag` = NULL,
    `format` = NULL,
    `formatEdam` = NULL,
    `status` = NULL,
    `lifeCycle` = NULL,
    `versionId` = NULL,
    `presignedUrl` = NULL,
    `objectStoreAccess` = NULL,
    #' Initialize a new FileResponse class.
    #'
    #' @description
    #' Initialize a new FileResponse class.
    #'
    #' @param volumeMetadata Metadata about this file's volume
    #' @param copyJobId Job that copied the file
    #' @param id A unique identifier for this File
    #' @param name The name of this File
    #' @param volumeId The unique identifier of the volume where the file resides
    #' @param parentFolderId The unique identifier of the folder where the file resides
    #' @param volumeName The name of the volume where the file resides
    #' @param volumeConfigurationName The name of the volume configuration (BYOB only)
    #' @param type The type of the File
    #' @param tenantId The unique identifier for this File's Tenant
    #' @param subTenantId The unique identifier for this File's Sub Tenant
    #' @param path The (GDS) path to this File
    #' @param timeCreated The date & time this File was created, in GDS
    #' @param createdBy The creator of this File
    #' @param timeModified The date & time this File was updated, in GDS
    #' @param modifiedBy The updator of this File
    #' @param inheritedAcl The inherited list of Id(s) that have access to this File
    #' @param urn The Universal Resource Name, unique to this File
    #' @param sizeInBytes The File's Size in bytes
    #' @param metadata Metadata about this File
    #' @param isUploaded The current upload state of the File
    #' @param archiveStatus archiveStatus
    #' @param timeArchived The date & time this File was archived
    #' @param storageTier storageTier
    #' @param eTag The File's ETag
    #' @param format The File's Format
    #' @param formatEdam formatEdam
    #' @param status status
    #' @param lifeCycle lifeCycle
    #' @param versionId Id of the latest version of the object in the object container
    #' @param presignedUrl The presigned Url allowing access to this File
    #' @param objectStoreAccess objectStoreAccess
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`volumeMetadata` = NULL, `copyJobId` = NULL, `id` = NULL, `name` = NULL, `volumeId` = NULL, `parentFolderId` = NULL, `volumeName` = NULL, `volumeConfigurationName` = NULL, `type` = NULL, `tenantId` = NULL, `subTenantId` = NULL, `path` = NULL, `timeCreated` = NULL, `createdBy` = NULL, `timeModified` = NULL, `modifiedBy` = NULL, `inheritedAcl` = NULL, `urn` = NULL, `sizeInBytes` = NULL, `metadata` = NULL, `isUploaded` = NULL, `archiveStatus` = NULL, `timeArchived` = NULL, `storageTier` = NULL, `eTag` = NULL, `format` = NULL, `formatEdam` = NULL, `status` = NULL, `lifeCycle` = NULL, `versionId` = NULL, `presignedUrl` = NULL, `objectStoreAccess` = NULL, ...) {
      if (!is.null(`volumeMetadata`)) {
        self$`volumeMetadata` <- `volumeMetadata`
      }
      if (!is.null(`copyJobId`)) {
        if (!(is.character(`copyJobId`) && length(`copyJobId`) == 1)) {
          stop(paste("Error! Invalid data for `copyJobId`. Must be a string:", `copyJobId`))
        }
        self$`copyJobId` <- `copyJobId`
      }
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
      if (!is.null(`volumeId`)) {
        if (!(is.character(`volumeId`) && length(`volumeId`) == 1)) {
          stop(paste("Error! Invalid data for `volumeId`. Must be a string:", `volumeId`))
        }
        self$`volumeId` <- `volumeId`
      }
      if (!is.null(`parentFolderId`)) {
        if (!(is.character(`parentFolderId`) && length(`parentFolderId`) == 1)) {
          stop(paste("Error! Invalid data for `parentFolderId`. Must be a string:", `parentFolderId`))
        }
        self$`parentFolderId` <- `parentFolderId`
      }
      if (!is.null(`volumeName`)) {
        if (!(is.character(`volumeName`) && length(`volumeName`) == 1)) {
          stop(paste("Error! Invalid data for `volumeName`. Must be a string:", `volumeName`))
        }
        self$`volumeName` <- `volumeName`
      }
      if (!is.null(`volumeConfigurationName`)) {
        if (!(is.character(`volumeConfigurationName`) && length(`volumeConfigurationName`) == 1)) {
          stop(paste("Error! Invalid data for `volumeConfigurationName`. Must be a string:", `volumeConfigurationName`))
        }
        self$`volumeConfigurationName` <- `volumeConfigurationName`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
      if (!is.null(`path`)) {
        if (!(is.character(`path`) && length(`path`) == 1)) {
          stop(paste("Error! Invalid data for `path`. Must be a string:", `path`))
        }
        self$`path` <- `path`
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
      if (!is.null(`inheritedAcl`)) {
        stopifnot(is.vector(`inheritedAcl`), length(`inheritedAcl`) != 0)
        sapply(`inheritedAcl`, function(x) stopifnot(is.character(x)))
        self$`inheritedAcl` <- `inheritedAcl`
      }
      if (!is.null(`urn`)) {
        if (!(is.character(`urn`) && length(`urn`) == 1)) {
          stop(paste("Error! Invalid data for `urn`. Must be a string:", `urn`))
        }
        self$`urn` <- `urn`
      }
      if (!is.null(`sizeInBytes`)) {
        if (!(is.numeric(`sizeInBytes`) && length(`sizeInBytes`) == 1)) {
          stop(paste("Error! Invalid data for `sizeInBytes`. Must be an integer:", `sizeInBytes`))
        }
        self$`sizeInBytes` <- `sizeInBytes`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
      if (!is.null(`isUploaded`)) {
        if (!(is.logical(`isUploaded`) && length(`isUploaded`) == 1)) {
          stop(paste("Error! Invalid data for `isUploaded`. Must be a boolean:", `isUploaded`))
        }
        self$`isUploaded` <- `isUploaded`
      }
      if (!is.null(`archiveStatus`)) {
        if (!(`archiveStatus` %in% c())) {
          stop(paste("Error! \"", `archiveStatus`, "\" cannot be assigned to `archiveStatus`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`archiveStatus`))
        self$`archiveStatus` <- `archiveStatus`
      }
      if (!is.null(`timeArchived`)) {
        if (!is.character(`timeArchived`)) {
          stop(paste("Error! Invalid data for `timeArchived`. Must be a string:", `timeArchived`))
        }
        self$`timeArchived` <- `timeArchived`
      }
      if (!is.null(`storageTier`)) {
        if (!(`storageTier` %in% c())) {
          stop(paste("Error! \"", `storageTier`, "\" cannot be assigned to `storageTier`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`storageTier`))
        self$`storageTier` <- `storageTier`
      }
      if (!is.null(`eTag`)) {
        if (!(is.character(`eTag`) && length(`eTag`) == 1)) {
          stop(paste("Error! Invalid data for `eTag`. Must be a string:", `eTag`))
        }
        self$`eTag` <- `eTag`
      }
      if (!is.null(`format`)) {
        if (!(is.character(`format`) && length(`format`) == 1)) {
          stop(paste("Error! Invalid data for `format`. Must be a string:", `format`))
        }
        self$`format` <- `format`
      }
      if (!is.null(`formatEdam`)) {
        if (!(is.character(`formatEdam`) && length(`formatEdam`) == 1)) {
          stop(paste("Error! Invalid data for `formatEdam`. Must be a string:", `formatEdam`))
        }
        self$`formatEdam` <- `formatEdam`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`lifeCycle`)) {
        stopifnot(R6::is.R6(`lifeCycle`))
        self$`lifeCycle` <- `lifeCycle`
      }
      if (!is.null(`versionId`)) {
        if (!(is.character(`versionId`) && length(`versionId`) == 1)) {
          stop(paste("Error! Invalid data for `versionId`. Must be a string:", `versionId`))
        }
        self$`versionId` <- `versionId`
      }
      if (!is.null(`presignedUrl`)) {
        if (!(is.character(`presignedUrl`) && length(`presignedUrl`) == 1)) {
          stop(paste("Error! Invalid data for `presignedUrl`. Must be a string:", `presignedUrl`))
        }
        self$`presignedUrl` <- `presignedUrl`
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
    #' @return FileResponse in JSON format
    #' @export
    toJSON = function() {
      FileResponseObject <- list()
      if (!is.null(self$`volumeMetadata`)) {
        FileResponseObject[["volumeMetadata"]] <-
          self$`volumeMetadata`
      }
      if (!is.null(self$`copyJobId`)) {
        FileResponseObject[["copyJobId"]] <-
          self$`copyJobId`
      }
      if (!is.null(self$`id`)) {
        FileResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        FileResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`volumeId`)) {
        FileResponseObject[["volumeId"]] <-
          self$`volumeId`
      }
      if (!is.null(self$`parentFolderId`)) {
        FileResponseObject[["parentFolderId"]] <-
          self$`parentFolderId`
      }
      if (!is.null(self$`volumeName`)) {
        FileResponseObject[["volumeName"]] <-
          self$`volumeName`
      }
      if (!is.null(self$`volumeConfigurationName`)) {
        FileResponseObject[["volumeConfigurationName"]] <-
          self$`volumeConfigurationName`
      }
      if (!is.null(self$`type`)) {
        FileResponseObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`tenantId`)) {
        FileResponseObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`subTenantId`)) {
        FileResponseObject[["subTenantId"]] <-
          self$`subTenantId`
      }
      if (!is.null(self$`path`)) {
        FileResponseObject[["path"]] <-
          self$`path`
      }
      if (!is.null(self$`timeCreated`)) {
        FileResponseObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`createdBy`)) {
        FileResponseObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`timeModified`)) {
        FileResponseObject[["timeModified"]] <-
          self$`timeModified`
      }
      if (!is.null(self$`modifiedBy`)) {
        FileResponseObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`inheritedAcl`)) {
        FileResponseObject[["inheritedAcl"]] <-
          self$`inheritedAcl`
      }
      if (!is.null(self$`urn`)) {
        FileResponseObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`sizeInBytes`)) {
        FileResponseObject[["sizeInBytes"]] <-
          self$`sizeInBytes`
      }
      if (!is.null(self$`metadata`)) {
        FileResponseObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`isUploaded`)) {
        FileResponseObject[["isUploaded"]] <-
          self$`isUploaded`
      }
      if (!is.null(self$`archiveStatus`)) {
        FileResponseObject[["archiveStatus"]] <-
          self$`archiveStatus`$toJSON()
      }
      if (!is.null(self$`timeArchived`)) {
        FileResponseObject[["timeArchived"]] <-
          self$`timeArchived`
      }
      if (!is.null(self$`storageTier`)) {
        FileResponseObject[["storageTier"]] <-
          self$`storageTier`$toJSON()
      }
      if (!is.null(self$`eTag`)) {
        FileResponseObject[["eTag"]] <-
          self$`eTag`
      }
      if (!is.null(self$`format`)) {
        FileResponseObject[["format"]] <-
          self$`format`
      }
      if (!is.null(self$`formatEdam`)) {
        FileResponseObject[["formatEdam"]] <-
          self$`formatEdam`
      }
      if (!is.null(self$`status`)) {
        FileResponseObject[["status"]] <-
          self$`status`$toJSON()
      }
      if (!is.null(self$`lifeCycle`)) {
        FileResponseObject[["lifeCycle"]] <-
          self$`lifeCycle`$toJSON()
      }
      if (!is.null(self$`versionId`)) {
        FileResponseObject[["versionId"]] <-
          self$`versionId`
      }
      if (!is.null(self$`presignedUrl`)) {
        FileResponseObject[["presignedUrl"]] <-
          self$`presignedUrl`
      }
      if (!is.null(self$`objectStoreAccess`)) {
        FileResponseObject[["objectStoreAccess"]] <-
          self$`objectStoreAccess`$toJSON()
      }
      FileResponseObject
    },
    #' Deserialize JSON string into an instance of FileResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`volumeMetadata`)) {
        self$`volumeMetadata` <- this_object$`volumeMetadata`
      }
      if (!is.null(this_object$`copyJobId`)) {
        self$`copyJobId` <- this_object$`copyJobId`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`volumeId`)) {
        self$`volumeId` <- this_object$`volumeId`
      }
      if (!is.null(this_object$`parentFolderId`)) {
        self$`parentFolderId` <- this_object$`parentFolderId`
      }
      if (!is.null(this_object$`volumeName`)) {
        self$`volumeName` <- this_object$`volumeName`
      }
      if (!is.null(this_object$`volumeConfigurationName`)) {
        self$`volumeConfigurationName` <- this_object$`volumeConfigurationName`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`subTenantId`)) {
        self$`subTenantId` <- this_object$`subTenantId`
      }
      if (!is.null(this_object$`path`)) {
        self$`path` <- this_object$`path`
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
      if (!is.null(this_object$`inheritedAcl`)) {
        self$`inheritedAcl` <- ApiClient$new()$deserializeObj(this_object$`inheritedAcl`, "array[character]", loadNamespace("icar1"))
      }
      if (!is.null(this_object$`urn`)) {
        self$`urn` <- this_object$`urn`
      }
      if (!is.null(this_object$`sizeInBytes`)) {
        self$`sizeInBytes` <- this_object$`sizeInBytes`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`isUploaded`)) {
        self$`isUploaded` <- this_object$`isUploaded`
      }
      #if (!is.null(this_object$`archiveStatus`)) {
      #  `archivestatus_object` <- ArchiveStatuses$new()
      #  `archivestatus_object`$fromJSON(jsonlite::toJSON(this_object$`archiveStatus`, auto_unbox = TRUE, digits = NA))
      #  self$`archiveStatus` <- `archivestatus_object`
      #}
      if (!is.null(this_object$`timeArchived`)) {
        self$`timeArchived` <- this_object$`timeArchived`
      }
      #if (!is.null(this_object$`storageTier`)) {
      #  `storagetier_object` <- StorageTier$new()
      #  `storagetier_object`$fromJSON(jsonlite::toJSON(this_object$`storageTier`, auto_unbox = TRUE, digits = NA))
      #  self$`storageTier` <- `storagetier_object`
      #}
      if (!is.null(this_object$`eTag`)) {
        self$`eTag` <- this_object$`eTag`
      }
      if (!is.null(this_object$`format`)) {
        self$`format` <- this_object$`format`
      }
      if (!is.null(this_object$`formatEdam`)) {
        self$`formatEdam` <- this_object$`formatEdam`
      }
      #if (!is.null(this_object$`status`)) {
      #  `status_object` <- FileStatus$new()
      #  `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      #  self$`status` <- `status_object`
      #}
      #if (!is.null(this_object$`lifeCycle`)) {
      #  `lifecycle_object` <- FileLifeCycleSettings$new()
      #  `lifecycle_object`$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
      #  self$`lifeCycle` <- `lifecycle_object`
      #}
      if (!is.null(this_object$`versionId`)) {
        self$`versionId` <- this_object$`versionId`
      }
      if (!is.null(this_object$`presignedUrl`)) {
        self$`presignedUrl` <- this_object$`presignedUrl`
      }
      #if (!is.null(this_object$`objectStoreAccess`)) {
      #  `objectstoreaccess_object` <- ObjectStoreAccess$new()
      #  `objectstoreaccess_object`$fromJSON(jsonlite::toJSON(this_object$`objectStoreAccess`, auto_unbox = TRUE, digits = NA))
      #  self$`objectStoreAccess` <- `objectstoreaccess_object`
      #}
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FileResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`volumeMetadata`)) {
          sprintf(
          '"volumeMetadata":
            "%s"
                    ',
          self$`volumeMetadata`
          )
        },
        if (!is.null(self$`copyJobId`)) {
          sprintf(
          '"copyJobId":
            "%s"
                    ',
          self$`copyJobId`
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`volumeId`)) {
          sprintf(
          '"volumeId":
            "%s"
                    ',
          self$`volumeId`
          )
        },
        if (!is.null(self$`parentFolderId`)) {
          sprintf(
          '"parentFolderId":
            "%s"
                    ',
          self$`parentFolderId`
          )
        },
        if (!is.null(self$`volumeName`)) {
          sprintf(
          '"volumeName":
            "%s"
                    ',
          self$`volumeName`
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
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
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
        if (!is.null(self$`path`)) {
          sprintf(
          '"path":
            "%s"
                    ',
          self$`path`
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
        if (!is.null(self$`inheritedAcl`)) {
          sprintf(
          '"inheritedAcl":
             [%s]
          ',
          paste(unlist(lapply(self$`inheritedAcl`, function(x) paste0('"', x, '"'))), collapse = ",")
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
        if (!is.null(self$`sizeInBytes`)) {
          sprintf(
          '"sizeInBytes":
            %d
                    ',
          self$`sizeInBytes`
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
        if (!is.null(self$`isUploaded`)) {
          sprintf(
          '"isUploaded":
            %s
                    ',
          tolower(self$`isUploaded`)
          )
        },
        if (!is.null(self$`archiveStatus`)) {
          sprintf(
          '"archiveStatus":
          %s
          ',
          jsonlite::toJSON(self$`archiveStatus`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`timeArchived`)) {
          sprintf(
          '"timeArchived":
            "%s"
                    ',
          self$`timeArchived`
          )
        },
        if (!is.null(self$`storageTier`)) {
          sprintf(
          '"storageTier":
          %s
          ',
          jsonlite::toJSON(self$`storageTier`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`eTag`)) {
          sprintf(
          '"eTag":
            "%s"
                    ',
          self$`eTag`
          )
        },
        if (!is.null(self$`format`)) {
          sprintf(
          '"format":
            "%s"
                    ',
          self$`format`
          )
        },
        if (!is.null(self$`formatEdam`)) {
          sprintf(
          '"formatEdam":
            "%s"
                    ',
          self$`formatEdam`
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
        if (!is.null(self$`lifeCycle`)) {
          sprintf(
          '"lifeCycle":
          %s
          ',
          jsonlite::toJSON(self$`lifeCycle`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`versionId`)) {
          sprintf(
          '"versionId":
            "%s"
                    ',
          self$`versionId`
          )
        },
        if (!is.null(self$`presignedUrl`)) {
          sprintf(
          '"presignedUrl":
            "%s"
                    ',
          self$`presignedUrl`
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
    #' Deserialize JSON string into an instance of FileResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of FileResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FileResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`volumeMetadata` <- this_object$`volumeMetadata`
      self$`copyJobId` <- this_object$`copyJobId`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`volumeId` <- this_object$`volumeId`
      self$`parentFolderId` <- this_object$`parentFolderId`
      self$`volumeName` <- this_object$`volumeName`
      self$`volumeConfigurationName` <- this_object$`volumeConfigurationName`
      self$`type` <- this_object$`type`
      self$`tenantId` <- this_object$`tenantId`
      self$`subTenantId` <- this_object$`subTenantId`
      self$`path` <- this_object$`path`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`createdBy` <- this_object$`createdBy`
      self$`timeModified` <- this_object$`timeModified`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`inheritedAcl` <- ApiClient$new()$deserializeObj(this_object$`inheritedAcl`, "array[character]", loadNamespace("icar1"))
      self$`urn` <- this_object$`urn`
      self$`sizeInBytes` <- this_object$`sizeInBytes`
      self$`metadata` <- this_object$`metadata`
      self$`isUploaded` <- this_object$`isUploaded`
      #self$`archiveStatus` <- ArchiveStatuses$new()$fromJSON(jsonlite::toJSON(this_object$`archiveStatus`, auto_unbox = TRUE, digits = NA))
      self$`timeArchived` <- this_object$`timeArchived`
      self$`storageTier` <- StorageTier$new()$fromJSON(jsonlite::toJSON(this_object$`storageTier`, auto_unbox = TRUE, digits = NA))
      self$`eTag` <- this_object$`eTag`
      self$`format` <- this_object$`format`
      self$`formatEdam` <- this_object$`formatEdam`
      self$`status` <- FileStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`lifeCycle` <- FileLifeCycleSettings$new()$fromJSON(jsonlite::toJSON(this_object$`lifeCycle`, auto_unbox = TRUE, digits = NA))
      self$`versionId` <- this_object$`versionId`
      self$`presignedUrl` <- this_object$`presignedUrl`
      self$`objectStoreAccess` <- ObjectStoreAccess$new()$fromJSON(jsonlite::toJSON(this_object$`objectStoreAccess`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FileResponse
    #'
    #' @description
    #' Validate JSON input with respect to FileResponse and throw an exception if invalid
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
    #' @return String representation of FileResponse
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
# FileResponse$unlock()
#
## Below is an example to define the print function
# FileResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FileResponse$lock()

