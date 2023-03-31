#' Create a new WorkflowVersion
#'
#' @description
#' Details of a Workflow version definition
#'
#' @docType class
#' @title WorkflowVersion
#' @description WorkflowVersion Class
#' @format An \code{R6Class} generator object
#' @field id Unique resource ID character [optional]
#' @field urn URN of the resource character [optional]
#' @field href HREF to the resource character [optional]
#' @field version Name of the workflow version character [optional]
#' @field category Category of the workflow version character [optional]
#' @field description Description of the workflow version character [optional]
#' @field language  \link{WorkflowLanguage} [optional]
#' @field status Published Status of the workflow version character [optional]
#' @field createdByClientId Client ID of the Origin Request character [optional]
#' @field definition Definition of the workflow version character [optional]
#' @field timeCreated Time (in UTC) the resource was created character [optional]
#' @field timeModified Time (in UTC) the resource was modified character [optional]
#' @field createdBy User that created the resource character [optional]
#' @field modifiedBy User that modified the resource character [optional]
#' @field tenantId Tenant ID the resource belongs to character [optional]
#' @field acl Access control list of the resource list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkflowVersion <- R6::R6Class(
  "WorkflowVersion",
  public = list(
    `id` = NULL,
    `urn` = NULL,
    `href` = NULL,
    `version` = NULL,
    `category` = NULL,
    `description` = NULL,
    `language` = NULL,
    `status` = NULL,
    `createdByClientId` = NULL,
    `definition` = NULL,
    `timeCreated` = NULL,
    `timeModified` = NULL,
    `createdBy` = NULL,
    `modifiedBy` = NULL,
    `tenantId` = NULL,
    `acl` = NULL,
    #' Initialize a new WorkflowVersion class.
    #'
    #' @description
    #' Initialize a new WorkflowVersion class.
    #'
    #' @param id Unique resource ID
    #' @param urn URN of the resource
    #' @param href HREF to the resource
    #' @param version Name of the workflow version
    #' @param category Category of the workflow version
    #' @param description Description of the workflow version
    #' @param language language
    #' @param status Published Status of the workflow version
    #' @param createdByClientId Client ID of the Origin Request
    #' @param definition Definition of the workflow version
    #' @param timeCreated Time (in UTC) the resource was created
    #' @param timeModified Time (in UTC) the resource was modified
    #' @param createdBy User that created the resource
    #' @param modifiedBy User that modified the resource
    #' @param tenantId Tenant ID the resource belongs to
    #' @param acl Access control list of the resource
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `urn` = NULL, `href` = NULL, `version` = NULL, `category` = NULL, `description` = NULL, `language` = NULL, `status` = NULL, `createdByClientId` = NULL, `definition` = NULL, `timeCreated` = NULL, `timeModified` = NULL, `createdBy` = NULL, `modifiedBy` = NULL, `tenantId` = NULL, `acl` = NULL, ...) {
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
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`category`)) {
        if (!(is.character(`category`) && length(`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", `category`))
        }
        self$`category` <- `category`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`language`)) {
        stopifnot(R6::is.R6(`language`))
        self$`language` <- `language`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`createdByClientId`)) {
        if (!(is.character(`createdByClientId`) && length(`createdByClientId`) == 1)) {
          stop(paste("Error! Invalid data for `createdByClientId`. Must be a string:", `createdByClientId`))
        }
        self$`createdByClientId` <- `createdByClientId`
      }
      if (!is.null(`definition`)) {
        if (!(is.character(`definition`) && length(`definition`) == 1)) {
          stop(paste("Error! Invalid data for `definition`. Must be a string:", `definition`))
        }
        self$`definition` <- `definition`
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
    #' @return WorkflowVersion in JSON format
    #' @export
    toJSON = function() {
      WorkflowVersionObject <- list()
      if (!is.null(self$`id`)) {
        WorkflowVersionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`urn`)) {
        WorkflowVersionObject[["urn"]] <-
          self$`urn`
      }
      if (!is.null(self$`href`)) {
        WorkflowVersionObject[["href"]] <-
          self$`href`
      }
      if (!is.null(self$`version`)) {
        WorkflowVersionObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`category`)) {
        WorkflowVersionObject[["category"]] <-
          self$`category`
      }
      if (!is.null(self$`description`)) {
        WorkflowVersionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`language`)) {
        WorkflowVersionObject[["language"]] <-
          self$`language`$toJSON()
      }
      if (!is.null(self$`status`)) {
        WorkflowVersionObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`createdByClientId`)) {
        WorkflowVersionObject[["createdByClientId"]] <-
          self$`createdByClientId`
      }
      if (!is.null(self$`definition`)) {
        WorkflowVersionObject[["definition"]] <-
          self$`definition`
      }
      if (!is.null(self$`timeCreated`)) {
        WorkflowVersionObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`timeModified`)) {
        WorkflowVersionObject[["timeModified"]] <-
          self$`timeModified`
      }
      if (!is.null(self$`createdBy`)) {
        WorkflowVersionObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`modifiedBy`)) {
        WorkflowVersionObject[["modifiedBy"]] <-
          self$`modifiedBy`
      }
      if (!is.null(self$`tenantId`)) {
        WorkflowVersionObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`acl`)) {
        WorkflowVersionObject[["acl"]] <-
          self$`acl`
      }
      WorkflowVersionObject
    },
    #' Deserialize JSON string into an instance of WorkflowVersion
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowVersion
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
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`category`)) {
        self$`category` <- this_object$`category`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`language`)) {
        `language_object` <- WorkflowLanguage$new()
        `language_object`$fromJSON(jsonlite::toJSON(this_object$`language`, auto_unbox = TRUE, digits = NA))
        self$`language` <- `language_object`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`createdByClientId`)) {
        self$`createdByClientId` <- this_object$`createdByClientId`
      }
      if (!is.null(this_object$`definition`)) {
        self$`definition` <- this_object$`definition`
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
    #' @return WorkflowVersion in JSON format
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
        if (!is.null(self$`version`)) {
          sprintf(
          '"version":
            "%s"
                    ',
          self$`version`
          )
        },
        if (!is.null(self$`category`)) {
          sprintf(
          '"category":
            "%s"
                    ',
          self$`category`
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
        if (!is.null(self$`language`)) {
          sprintf(
          '"language":
          %s
          ',
          jsonlite::toJSON(self$`language`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`createdByClientId`)) {
          sprintf(
          '"createdByClientId":
            "%s"
                    ',
          self$`createdByClientId`
          )
        },
        if (!is.null(self$`definition`)) {
          sprintf(
          '"definition":
            "%s"
                    ',
          self$`definition`
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
    #' Deserialize JSON string into an instance of WorkflowVersion
    #'
    #' @description
    #' Deserialize JSON string into an instance of WorkflowVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowVersion
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
      self$`version` <- this_object$`version`
      self$`category` <- this_object$`category`
      self$`description` <- this_object$`description`
      self$`language` <- WorkflowLanguage$new()$fromJSON(jsonlite::toJSON(this_object$`language`, auto_unbox = TRUE, digits = NA))
      self$`status` <- this_object$`status`
      self$`createdByClientId` <- this_object$`createdByClientId`
      self$`definition` <- this_object$`definition`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`timeModified` <- this_object$`timeModified`
      self$`createdBy` <- this_object$`createdBy`
      self$`modifiedBy` <- this_object$`modifiedBy`
      self$`tenantId` <- this_object$`tenantId`
      self$`acl` <- ApiClient$new()$deserializeObj(this_object$`acl`, "array[character]", loadNamespace("icar1"))
      self
    },
    #' Validate JSON input with respect to WorkflowVersion
    #'
    #' @description
    #' Validate JSON input with respect to WorkflowVersion and throw an exception if invalid
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
    #' @return String representation of WorkflowVersion
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
      if (nchar(self$`version`) > 40) {
        return(FALSE)
      }
      if (nchar(self$`version`) < 0) {
        return(FALSE)
      }

      if (nchar(self$`category`) > 128) {
        return(FALSE)
      }
      if (nchar(self$`category`) < 0) {
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
      if (nchar(self$`version`) > 40) {
        invalid_fields["version"] <- "Invalid length for `version`, must be smaller than or equal to 40."
      }
      if (nchar(self$`version`) < 0) {
        invalid_fields["version"] <- "Invalid length for `version`, must be bigger than or equal to 0."
      }

      if (nchar(self$`category`) > 128) {
        invalid_fields["category"] <- "Invalid length for `category`, must be smaller than or equal to 128."
      }
      if (nchar(self$`category`) < 0) {
        invalid_fields["category"] <- "Invalid length for `category`, must be bigger than or equal to 0."
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
# WorkflowVersion$unlock()
#
## Below is an example to define the print function
# WorkflowVersion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkflowVersion$lock()

