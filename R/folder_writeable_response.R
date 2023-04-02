#' Create a new FolderWriteableResponse
#'
#' @description
#' FolderWriteableResponse Class
#'
#' @docType class
#' @title FolderWriteableResponse
#' @description FolderWriteableResponse Class
#' @format An \code{R6Class} generator object
#' @field id A unique identifier for this Folder character [optional]
#' @field name The name of this Folder character [optional]
#' @field volumeId The unique identifier for this Folder's Volume character [optional]
#' @field parentFolderId The unique identifier for this folder's parent folder character [optional]
#' @field volumeName The name of this Folder's Volume character [optional]
#' @field tenantId The unique identifier for this Folders's Tenant character [optional]
#' @field subTenantId The unique identifier for this Folder's Sub Tenant character [optional]
#' @field urn The Universal Resource Name, unique to this Folder character [optional]
#' @field path The (GDS) folder path to this Folder character [optional]
#' @field acl The list of directly specified Id(s) that have access to this Folder list(character) [optional]
#' @field inheritedAcl The inherited list of Id(s) that have access to this Folder list(character) [optional]
#' @field timeCreated The date & time this Folder was created, in GDS character [optional]
#' @field createdBy The creator of this Folder character [optional]
#' @field timeModified The date & time this Folder was updated, in GDS character [optional]
#' @field modifiedBy The updator of this Folder character [optional]
#' @field metadata Metadata about this folder object [optional]
#' @field volumeMetadata Metadata about this folder's volume object [optional]
#' @field jobStatus This enum was originally created to store the type of job on a folder or file entity.   The Job entity is now used to track this information for copy operations, with the Illumina.Gds.Api.Models.Enums.JobOperationType   and Illumina.Gds.Api.Models.Enums.JobProgressStatus used to record the type and progress status of the job.  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK character [optional]
#' @field jobId The job identifier for the current folder operation. Currently only being used for the delete folder operation. character [optional]
#' @field archiveJobStorageTier StorageTier character [optional]
#' @field migrationStatus Status of the root folder migration status from v1 to v2 character [optional]
#' @field activeJobIds List of Jobs in Pending and In Progress status list(character) [optional]
#' @field objectStoreAccess  \link{ObjectStoreAccess} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FolderWriteableResponse <- R6::R6Class(
  "FolderWriteableResponse",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `volumeId` = NULL,
    `parentFolderId` = NULL,
    `volumeName` = NULL,
    `tenantId` = NULL,
    `subTenantId` = NULL,
    `urn` = NULL,
    `path` = NULL,
    `acl` = NULL,
    `inheritedAcl` = NULL,
    `timeCreated` = NULL,
    `createdBy` = NULL,
    `timeModified` = NULL,
    `modifiedBy` = NULL,
    `metadata` = NULL,
    `volumeMetadata` = NULL,
    `jobStatus` = NULL,
    `jobId` = NULL,
    `archiveJobStorageTier` = NULL,
    `migrationStatus` = NULL,
    `activeJobIds` = NULL,
    `objectStoreAccess` = NULL,
    #' Initialize a new FolderWriteableResponse class.
    #'
    #' @description
    #' Initialize a new FolderWriteableResponse class.
    #'
    #' @param id A unique identifier for this Folder
    #' @param name The name of this Folder
    #' @param volumeId The unique identifier for this Folder's Volume
    #' @param parentFolderId The unique identifier for this folder's parent folder
    #' @param volumeName The name of this Folder's Volume
    #' @param tenantId The unique identifier for this Folders's Tenant
    #' @param subTenantId The unique identifier for this Folder's Sub Tenant
    #' @param urn The Universal Resource Name, unique to this Folder
    #' @param path The (GDS) folder path to this Folder
    #' @param acl The list of directly specified Id(s) that have access to this Folder
    #' @param inheritedAcl The inherited list of Id(s) that have access to this Folder
    #' @param timeCreated The date & time this Folder was created, in GDS
    #' @param createdBy The creator of this Folder
    #' @param timeModified The date & time this Folder was updated, in GDS
    #' @param modifiedBy The updator of this Folder
    #' @param metadata Metadata about this folder
    #' @param volumeMetadata Metadata about this folder's volume
    #' @param jobStatus This enum was originally created to store the type of job on a folder or file entity.   The Job entity is now used to track this information for copy operations, with the Illumina.Gds.Api.Models.Enums.JobOperationType   and Illumina.Gds.Api.Models.Enums.JobProgressStatus used to record the type and progress status of the job.  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK
    #' @param jobId The job identifier for the current folder operation. Currently only being used for the delete folder operation.
    #' @param archiveJobStorageTier StorageTier
    #' @param migrationStatus Status of the root folder migration status from v1 to v2
    #' @param activeJobIds List of Jobs in Pending and In Progress status
    #' @param objectStoreAccess objectStoreAccess
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `name` = NULL, `volumeId` = NULL, `parentFolderId` = NULL, `volumeName` = NULL, `tenantId` = NULL, `subTenantId` = NULL, `urn` = NULL, `path` = NULL, `acl` = NULL, `inheritedAcl` = NULL, `timeCreated` = NULL, `createdBy` = NULL, `timeModified` = NULL, `modifiedBy` = NULL, `metadata` = NULL, `volumeMetadata` = NULL, `jobStatus` = NULL, `jobId` = NULL, `archiveJobStorageTier` = NULL, `migrationStatus` = NULL, `activeJobIds` = NULL, `objectStoreAccess` = NULL, ...) {
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
      if (!is.null(`path`)) {
        if (!(is.character(`path`) && length(`path`) == 1)) {
          stop(paste("Error! Invalid data for `path`. Must be a string:", `path`))
        }
        self$`path` <- `path`
      }
      if (!is.null(`acl`)) {
        stopifnot(is.vector(`acl`), length(`acl`) != 0)
        sapply(`acl`, function(x) stopifnot(is.character(x)))
        self$`acl` <- `acl`
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
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
      if (!is.null(`volumeMetadata`)) {
        self$`volumeMetadata` <- `volumeMetadata`
      }
      if (!is.null(`jobStatus`)) {
        if (!(is.character(`jobStatus`) && length(`jobStatus`) == 1)) {
          stop(paste("Error! Invalid data for `jobStatus`. Must be a string:", `jobStatus`))
        }
        self$`jobStatus` <- `jobStatus`
      }
      if (!is.null(`jobId`)) {
        if (!(is.character(`jobId`) && length(`jobId`) == 1)) {
          stop(paste("Error! Invalid data for `jobId`. Must be a string:", `jobId`))
        }
        self$`jobId` <- `jobId`
      }
      if (!is.null(`archiveJobStorageTier`)) {
        if (!(is.character(`archiveJobStorageTier`) && length(`archiveJobStorageTier`) == 1)) {
          stop(paste("Error! Invalid data for `archiveJobStorageTier`. Must be a string:", `archiveJobStorageTier`))
        }
        self$`archiveJobStorageTier` <- `archiveJobStorageTier`
      }
      if (!is.null(`migrationStatus`)) {
        if (!(is.character(`migrationStatus`) && length(`migrationStatus`) == 1)) {
          stop(paste("Error! Invalid data for `migrationStatus`. Must be a string:", `migrationStatus`))
        }
        self$`migrationStatus` <- `migrationStatus`
      }
      if (!is.null(`activeJobIds`)) {
        stopifnot(is.vector(`activeJobIds`), length(`activeJobIds`) != 0)
        sapply(`activeJobIds`, function(x) stopifnot(is.character(x)))
        self$`activeJobIds` <- `activeJobIds`
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
    #' @return FolderWriteableResponse in JSON format
    #' @export
    toJSON = function() {
      FolderWriteableResponseObject <- list()
      if (!is.null(self$`id`)) {
        FolderWriteableResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        FolderWriteableResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`volumeId`)) {
        FolderWriteableResponseObject[["volumeId"]] <-
          self$`volumeId`
      }
      if (!is.null(self$`parentFolderId`)) {
        FolderWriteableResponseObject[["parentFolderId"]] <-
          self$`parentFolderId`
      }
      if (!is.null(self$`volumeName`)) {
        FolderWriteableResponseObject[["volumeName"]] <-
          self$`volumeName`
      }
      if (!is.null(self$`tenantId`)) {
        FolderWriteableResponseObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`subTenantId`)) {
        FolderWriteableResponseObject[["subTenantId"]] <-
          self$`subTenantId`
      }
      if (!is.null(self$`urn`)) {
        FolderWriteableResponseObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`path`)) {
        FolderWriteableResponseObject[["path"]] <-
          self$`path`
      }
      if (!is.null(self$`acl`)) {
        FolderWriteableResponseObject[["acl"]] <-
          self$`acl`
      }
      if (!is.null(self$`inheritedAcl`)) {
        FolderWriteableResponseObject[["inheritedAcl"]] <-
          self$`inheritedAcl`
      }
      if (!is.null(self$`timeCreated`)) {
        FolderWriteableResponseObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`createdBy`)) {
        FolderWriteableResponseObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`timeModified`)) {
        FolderWriteableResponseObject[["timeModified"]] <-
          self$`timeModified`
      }
      if (!is.null(self$`modifiedBy`)) {
        FolderWriteableResponseObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`metadata`)) {
        FolderWriteableResponseObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`volumeMetadata`)) {
        FolderWriteableResponseObject[["volumeMetadata"]] <-
          self$`volumeMetadata`
      }
      if (!is.null(self$`jobStatus`)) {
        FolderWriteableResponseObject[["jobStatus"]] <-
          self$`jobStatus`
      }
      if (!is.null(self$`jobId`)) {
        FolderWriteableResponseObject[["jobId"]] <-
          self$`jobId`
      }
      if (!is.null(self$`archiveJobStorageTier`)) {
        FolderWriteableResponseObject[["archiveJobStorageTier"]] <-
          self$`archiveJobStorageTier`
      }
      if (!is.null(self$`migrationStatus`)) {
        FolderWriteableResponseObject[["migrationStatus"]] <-
          self$`migrationStatus`
      }
      if (!is.null(self$`activeJobIds`)) {
        FolderWriteableResponseObject[["activeJobIds"]] <-
          self$`activeJobIds`
      }
      if (!is.null(self$`objectStoreAccess`)) {
        FolderWriteableResponseObject[["objectStoreAccess"]] <-
          self$`objectStoreAccess`$toJSON()
      }
      FolderWriteableResponseObject
    },
    #' Deserialize JSON string into an instance of FolderWriteableResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderWriteableResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderWriteableResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`subTenantId`)) {
        self$`subTenantId` <- this_object$`subTenantId`
      }
      if (!is.null(this_object$`urn`)) {
        self$`urn` <- this_object$`urn`
      }
      if (!is.null(this_object$`path`)) {
        self$`path` <- this_object$`path`
      }
      if (!is.null(this_object$`acl`)) {
        self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
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
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`volumeMetadata`)) {
        self$`volumeMetadata` <- this_object$`volumeMetadata`
      }
      if (!is.null(this_object$`jobStatus`)) {
        self$`jobStatus` <- this_object$`jobStatus`
      }
      if (!is.null(this_object$`jobId`)) {
        self$`jobId` <- this_object$`jobId`
      }
      if (!is.null(this_object$`archiveJobStorageTier`)) {
        self$`archiveJobStorageTier` <- this_object$`archiveJobStorageTier`
      }
      if (!is.null(this_object$`migrationStatus`)) {
        self$`migrationStatus` <- this_object$`migrationStatus`
      }
      if (!is.null(this_object$`activeJobIds`)) {
        self$`activeJobIds` <- ApiClient$new()$deserializeObj(this_object$`activeJobIds`, "array[character]", loadNamespace("icar1"))
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
    #' @return FolderWriteableResponse in JSON format
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
        if (!is.null(self$`path`)) {
          sprintf(
          '"path":
            "%s"
                    ',
          self$`path`
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
        if (!is.null(self$`metadata`)) {
          sprintf(
          '"metadata":
            "%s"
                    ',
          self$`metadata`
          )
        },
        if (!is.null(self$`volumeMetadata`)) {
          sprintf(
          '"volumeMetadata":
            "%s"
                    ',
          self$`volumeMetadata`
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
        if (!is.null(self$`jobId`)) {
          sprintf(
          '"jobId":
            "%s"
                    ',
          self$`jobId`
          )
        },
        if (!is.null(self$`archiveJobStorageTier`)) {
          sprintf(
          '"archiveJobStorageTier":
            "%s"
                    ',
          self$`archiveJobStorageTier`
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
        if (!is.null(self$`activeJobIds`)) {
          sprintf(
          '"activeJobIds":
             [%s]
          ',
          paste(unlist(lapply(self$`activeJobIds`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of FolderWriteableResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of FolderWriteableResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of FolderWriteableResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`volumeId` <- this_object$`volumeId`
      self$`parentFolderId` <- this_object$`parentFolderId`
      self$`volumeName` <- this_object$`volumeName`
      self$`tenantId` <- this_object$`tenantId`
      self$`subTenantId` <- this_object$`subTenantId`
      self$`urn` <- this_object$`urn`
      self$`path` <- this_object$`path`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self$`inheritedAcl` <- ApiClient$new()$deserializeObj(this_object$`inheritedAcl`, "array[character]", loadNamespace("icar1"))
      self$`timeCreated` <- this_object$`timeCreated`
      self$`createdBy` <- this_object$`createdBy`
      self$`timeModified` <- this_object$`timeModified`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`metadata` <- this_object$`metadata`
      self$`volumeMetadata` <- this_object$`volumeMetadata`
      self$`jobStatus` <- this_object$`jobStatus`
      self$`jobId` <- this_object$`jobId`
      self$`archiveJobStorageTier` <- this_object$`archiveJobStorageTier`
      self$`migrationStatus` <- this_object$`migrationStatus`
      self$`activeJobIds` <- ApiClient$new()$deserializeObj(this_object$`activeJobIds`, "array[character]", loadNamespace("icar1"))
      self$`objectStoreAccess` <- ObjectStoreAccess$new()$fromJSON(jsonlite::toJSON(this_object$`objectStoreAccess`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FolderWriteableResponse
    #'
    #' @description
    #' Validate JSON input with respect to FolderWriteableResponse and throw an exception if invalid
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
    #' @return String representation of FolderWriteableResponse
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
# FolderWriteableResponse$unlock()
#
## Below is an example to define the print function
# FolderWriteableResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FolderWriteableResponse$lock()

