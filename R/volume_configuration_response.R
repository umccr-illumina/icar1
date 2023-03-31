#' Create a new VolumeConfigurationResponse
#'
#' @description
#' VolumeConfigurationResponse Class
#'
#' @docType class
#' @title VolumeConfigurationResponse
#' @description VolumeConfigurationResponse Class
#' @format An \code{R6Class} generator object
#' @field name Name for the volume configuration character [optional]
#' @field versioningEnabled Versioning Enabled or Suspended for the ObjectContainer character [optional]
#' @field tenantId The unique identifier for this Volume Configuration's Tenant character [optional]
#' @field subTenantId The unique identifier for this Volume Configurations's Sub Tenant character [optional]
#' @field urn The Universal Resource Name, unique to this Volume Configuration character [optional]
#' @field onlineStatus  \link{VolumeConfigurationOnlineStatus} [optional]
#' @field errorCode Error code returned from the object store character [optional]
#' @field errorMessage Error message returned from the object store character [optional]
#' @field timeOfLastError Timestamp of the last observed error. character [optional]
#' @field timeCreated The date & time this Volume was created, in GDS character [optional]
#' @field createdBy The creator of this Volume character [optional]
#' @field timeModified The date & time this Volume was updated, in GDS character [optional]
#' @field modifiedBy The updator of this Volume character [optional]
#' @field objectStoreSettings  \link{ObjectStoreSettings} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VolumeConfigurationResponse <- R6::R6Class(
  "VolumeConfigurationResponse",
  public = list(
    `name` = NULL,
    `versioningEnabled` = NULL,
    `tenantId` = NULL,
    `subTenantId` = NULL,
    `urn` = NULL,
    `onlineStatus` = NULL,
    `errorCode` = NULL,
    `errorMessage` = NULL,
    `timeOfLastError` = NULL,
    `timeCreated` = NULL,
    `createdBy` = NULL,
    `timeModified` = NULL,
    `modifiedBy` = NULL,
    `objectStoreSettings` = NULL,
    #' Initialize a new VolumeConfigurationResponse class.
    #'
    #' @description
    #' Initialize a new VolumeConfigurationResponse class.
    #'
    #' @param name Name for the volume configuration
    #' @param versioningEnabled Versioning Enabled or Suspended for the ObjectContainer
    #' @param tenantId The unique identifier for this Volume Configuration's Tenant
    #' @param subTenantId The unique identifier for this Volume Configurations's Sub Tenant
    #' @param urn The Universal Resource Name, unique to this Volume Configuration
    #' @param onlineStatus onlineStatus
    #' @param errorCode Error code returned from the object store
    #' @param errorMessage Error message returned from the object store
    #' @param timeOfLastError Timestamp of the last observed error.
    #' @param timeCreated The date & time this Volume was created, in GDS
    #' @param createdBy The creator of this Volume
    #' @param timeModified The date & time this Volume was updated, in GDS
    #' @param modifiedBy The updator of this Volume
    #' @param objectStoreSettings objectStoreSettings
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `versioningEnabled` = NULL, `tenantId` = NULL, `subTenantId` = NULL, `urn` = NULL, `onlineStatus` = NULL, `errorCode` = NULL, `errorMessage` = NULL, `timeOfLastError` = NULL, `timeCreated` = NULL, `createdBy` = NULL, `timeModified` = NULL, `modifiedBy` = NULL, `objectStoreSettings` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`versioningEnabled`)) {
        if (!(is.logical(`versioningEnabled`) && length(`versioningEnabled`) == 1)) {
          stop(paste("Error! Invalid data for `versioningEnabled`. Must be a boolean:", `versioningEnabled`))
        }
        self$`versioningEnabled` <- `versioningEnabled`
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
      if (!is.null(`onlineStatus`)) {
        if (!(`onlineStatus` %in% c())) {
          stop(paste("Error! \"", `onlineStatus`, "\" cannot be assigned to `onlineStatus`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`onlineStatus`))
        self$`onlineStatus` <- `onlineStatus`
      }
      if (!is.null(`errorCode`)) {
        if (!(is.character(`errorCode`) && length(`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", `errorCode`))
        }
        self$`errorCode` <- `errorCode`
      }
      if (!is.null(`errorMessage`)) {
        if (!(is.character(`errorMessage`) && length(`errorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessage`. Must be a string:", `errorMessage`))
        }
        self$`errorMessage` <- `errorMessage`
      }
      if (!is.null(`timeOfLastError`)) {
        if (!is.character(`timeOfLastError`)) {
          stop(paste("Error! Invalid data for `timeOfLastError`. Must be a string:", `timeOfLastError`))
        }
        self$`timeOfLastError` <- `timeOfLastError`
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
      if (!is.null(`objectStoreSettings`)) {
        stopifnot(R6::is.R6(`objectStoreSettings`))
        self$`objectStoreSettings` <- `objectStoreSettings`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VolumeConfigurationResponse in JSON format
    #' @export
    toJSON = function() {
      VolumeConfigurationResponseObject <- list()
      if (!is.null(self$`name`)) {
        VolumeConfigurationResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`versioningEnabled`)) {
        VolumeConfigurationResponseObject[["versioningEnabled"]] <-
          self$`versioningEnabled`
      }
      if (!is.null(self$`tenantId`)) {
        VolumeConfigurationResponseObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`subTenantId`)) {
        VolumeConfigurationResponseObject[["subTenantId"]] <-
          self$`subTenantId`
      }
      if (!is.null(self$`urn`)) {
        VolumeConfigurationResponseObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`onlineStatus`)) {
        VolumeConfigurationResponseObject[["onlineStatus"]] <-
          self$`onlineStatus`$toJSON()
      }
      if (!is.null(self$`errorCode`)) {
        VolumeConfigurationResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`errorMessage`)) {
        VolumeConfigurationResponseObject[["errorMessage"]] <-
          self$`errorMessage`
      }
      if (!is.null(self$`timeOfLastError`)) {
        VolumeConfigurationResponseObject[["timeOfLastError"]] <-
          self$`timeOfLastError`
      }
      if (!is.null(self$`timeCreated`)) {
        VolumeConfigurationResponseObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`createdBy`)) {
        VolumeConfigurationResponseObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`timeModified`)) {
        VolumeConfigurationResponseObject[["timeModified"]] <-
          self$`timeModified`
      }
      if (!is.null(self$`modifiedBy`)) {
        VolumeConfigurationResponseObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`objectStoreSettings`)) {
        VolumeConfigurationResponseObject[["objectStoreSettings"]] <-
          self$`objectStoreSettings`$toJSON()
      }
      VolumeConfigurationResponseObject
    },
    #' Deserialize JSON string into an instance of VolumeConfigurationResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeConfigurationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeConfigurationResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`versioningEnabled`)) {
        self$`versioningEnabled` <- this_object$`versioningEnabled`
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
      if (!is.null(this_object$`onlineStatus`)) {
        `onlinestatus_object` <- VolumeConfigurationOnlineStatus$new()
        `onlinestatus_object`$fromJSON(jsonlite::toJSON(this_object$`onlineStatus`, auto_unbox = TRUE, digits = NA))
        self$`onlineStatus` <- `onlinestatus_object`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`errorMessage`)) {
        self$`errorMessage` <- this_object$`errorMessage`
      }
      if (!is.null(this_object$`timeOfLastError`)) {
        self$`timeOfLastError` <- this_object$`timeOfLastError`
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
      if (!is.null(this_object$`objectStoreSettings`)) {
        `objectstoresettings_object` <- ObjectStoreSettings$new()
        `objectstoresettings_object`$fromJSON(jsonlite::toJSON(this_object$`objectStoreSettings`, auto_unbox = TRUE, digits = NA))
        self$`objectStoreSettings` <- `objectstoresettings_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return VolumeConfigurationResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`versioningEnabled`)) {
          sprintf(
          '"versioningEnabled":
            %s
                    ',
          tolower(self$`versioningEnabled`)
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
        if (!is.null(self$`onlineStatus`)) {
          sprintf(
          '"onlineStatus":
          %s
          ',
          jsonlite::toJSON(self$`onlineStatus`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`errorCode`)) {
          sprintf(
          '"errorCode":
            "%s"
                    ',
          self$`errorCode`
          )
        },
        if (!is.null(self$`errorMessage`)) {
          sprintf(
          '"errorMessage":
            "%s"
                    ',
          self$`errorMessage`
          )
        },
        if (!is.null(self$`timeOfLastError`)) {
          sprintf(
          '"timeOfLastError":
            "%s"
                    ',
          self$`timeOfLastError`
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
        if (!is.null(self$`objectStoreSettings`)) {
          sprintf(
          '"objectStoreSettings":
          %s
          ',
          jsonlite::toJSON(self$`objectStoreSettings`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of VolumeConfigurationResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of VolumeConfigurationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VolumeConfigurationResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`versioningEnabled` <- this_object$`versioningEnabled`
      self$`tenantId` <- this_object$`tenantId`
      self$`subTenantId` <- this_object$`subTenantId`
      self$`urn` <- this_object$`urn`
      self$`onlineStatus` <- VolumeConfigurationOnlineStatus$new()$fromJSON(jsonlite::toJSON(this_object$`onlineStatus`, auto_unbox = TRUE, digits = NA))
      self$`errorCode` <- this_object$`errorCode`
      self$`errorMessage` <- this_object$`errorMessage`
      self$`timeOfLastError` <- this_object$`timeOfLastError`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`createdBy` <- this_object$`createdBy`
      self$`timeModified` <- this_object$`timeModified`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`objectStoreSettings` <- ObjectStoreSettings$new()$fromJSON(jsonlite::toJSON(this_object$`objectStoreSettings`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to VolumeConfigurationResponse
    #'
    #' @description
    #' Validate JSON input with respect to VolumeConfigurationResponse and throw an exception if invalid
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
    #' @return String representation of VolumeConfigurationResponse
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
# VolumeConfigurationResponse$unlock()
#
## Below is an example to define the print function
# VolumeConfigurationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VolumeConfigurationResponse$lock()

