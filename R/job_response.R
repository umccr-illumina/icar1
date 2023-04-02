#' Create a new JobResponse
#'
#' @description
#' JobResponse Class
#'
#' @docType class
#' @title JobResponse
#' @description JobResponse Class
#' @format An \code{R6Class} generator object
#' @field id A unique identifier for this Job character [optional]
#' @field parentFolderUrn The Universal Resource Name of the parent folder associated with the Job character [optional]
#' @field operationType The valid job operation type values for resources in GDS  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK character [optional]
#' @field jobType  character [optional]
#' @field operationParameters  \link{JobOperationParameters} [optional]
#' @field results  \link{JobOutput} [optional]
#' @field progressStatus The valid Job Status values for folders in GDS.  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK character [optional]
#' @field timeCreated The date & time this Folder was created, in GDS character [optional]
#' @field createdBy The creator of this Job character [optional]
#' @field timeModified The date & time this Job was updated, in GDS character [optional]
#' @field timeCompleted The date & time this Job was completed, in GDS character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobResponse <- R6::R6Class(
  "JobResponse",
  public = list(
    `id` = NULL,
    `parentFolderUrn` = NULL,
    `operationType` = NULL,
    `jobType` = NULL,
    `operationParameters` = NULL,
    `results` = NULL,
    `progressStatus` = NULL,
    `timeCreated` = NULL,
    `createdBy` = NULL,
    `timeModified` = NULL,
    `timeCompleted` = NULL,
    #' Initialize a new JobResponse class.
    #'
    #' @description
    #' Initialize a new JobResponse class.
    #'
    #' @param id A unique identifier for this Job
    #' @param parentFolderUrn The Universal Resource Name of the parent folder associated with the Job
    #' @param operationType The valid job operation type values for resources in GDS  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK
    #' @param jobType jobType
    #' @param operationParameters operationParameters
    #' @param results results
    #' @param progressStatus The valid Job Status values for folders in GDS.  IMPORTANT - Please consider backward compatibility before adding a new enum value. Adding a new enum value will break the existing client using swagger SDK
    #' @param timeCreated The date & time this Folder was created, in GDS
    #' @param createdBy The creator of this Job
    #' @param timeModified The date & time this Job was updated, in GDS
    #' @param timeCompleted The date & time this Job was completed, in GDS
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `parentFolderUrn` = NULL, `operationType` = NULL, `jobType` = NULL, `operationParameters` = NULL, `results` = NULL, `progressStatus` = NULL, `timeCreated` = NULL, `createdBy` = NULL, `timeModified` = NULL, `timeCompleted` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`parentFolderUrn`)) {
        if (!(is.character(`parentFolderUrn`) && length(`parentFolderUrn`) == 1)) {
          stop(paste("Error! Invalid data for `parentFolderUrn`. Must be a string:", `parentFolderUrn`))
        }
        self$`parentFolderUrn` <- `parentFolderUrn`
      }
      if (!is.null(`operationType`)) {
        if (!(is.character(`operationType`) && length(`operationType`) == 1)) {
          stop(paste("Error! Invalid data for `operationType`. Must be a string:", `operationType`))
        }
        self$`operationType` <- `operationType`
      }
      if (!is.null(`jobType`)) {
        if (!(is.character(`jobType`) && length(`jobType`) == 1)) {
          stop(paste("Error! Invalid data for `jobType`. Must be a string:", `jobType`))
        }
        self$`jobType` <- `jobType`
      }
      if (!is.null(`operationParameters`)) {
        stopifnot(R6::is.R6(`operationParameters`))
        self$`operationParameters` <- `operationParameters`
      }
      if (!is.null(`results`)) {
        stopifnot(R6::is.R6(`results`))
        self$`results` <- `results`
      }
      if (!is.null(`progressStatus`)) {
        if (!(is.character(`progressStatus`) && length(`progressStatus`) == 1)) {
          stop(paste("Error! Invalid data for `progressStatus`. Must be a string:", `progressStatus`))
        }
        self$`progressStatus` <- `progressStatus`
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
      if (!is.null(`timeCompleted`)) {
        if (!is.character(`timeCompleted`)) {
          stop(paste("Error! Invalid data for `timeCompleted`. Must be a string:", `timeCompleted`))
        }
        self$`timeCompleted` <- `timeCompleted`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return JobResponse in JSON format
    #' @export
    toJSON = function() {
      JobResponseObject <- list()
      if (!is.null(self$`id`)) {
        JobResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`parentFolderUrn`)) {
        JobResponseObject[["parentFolderUrn"]] <-
          self$`parentFolderUrn`
      }
      if (!is.null(self$`operationType`)) {
        JobResponseObject[["operationType"]] <-
          self$`operationType`
      }
      if (!is.null(self$`jobType`)) {
        JobResponseObject[["jobType"]] <-
          self$`jobType`
      }
      if (!is.null(self$`operationParameters`)) {
        JobResponseObject[["operationParameters"]] <-
          self$`operationParameters`$toJSON()
      }
      if (!is.null(self$`results`)) {
        JobResponseObject[["results"]] <-
          self$`results`$toJSON()
      }
      if (!is.null(self$`progressStatus`)) {
        JobResponseObject[["progressStatus"]] <-
          self$`progressStatus`
      }
      if (!is.null(self$`timeCreated`)) {
        JobResponseObject[["timeCreated"]] <-
          self$`timeCreated`
      }
      if (!is.null(self$`createdBy`)) {
        JobResponseObject[["createdBy"]] <-
          self$`createdBy`
      }
      if (!is.null(self$`timeModified`)) {
        JobResponseObject[["timeModified"]] <-
          self$`timeModified`
      }
      if (!is.null(self$`timeCompleted`)) {
        JobResponseObject[["timeCompleted"]] <-
          self$`timeCompleted`
      }
      JobResponseObject
    },
    #' Deserialize JSON string into an instance of JobResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`parentFolderUrn`)) {
        self$`parentFolderUrn` <- this_object$`parentFolderUrn`
      }
      if (!is.null(this_object$`operationType`)) {
        self$`operationType` <- this_object$`operationType`
      }
      if (!is.null(this_object$`jobType`)) {
        self$`jobType` <- this_object$`jobType`
      }
      if (!is.null(this_object$`operationParameters`)) {
        `operationparameters_object` <- JobOperationParameters$new()
        `operationparameters_object`$fromJSON(jsonlite::toJSON(this_object$`operationParameters`, auto_unbox = TRUE, digits = NA))
        self$`operationParameters` <- `operationparameters_object`
      }
      if (!is.null(this_object$`results`)) {
        `results_object` <- JobOutput$new()
        `results_object`$fromJSON(jsonlite::toJSON(this_object$`results`, auto_unbox = TRUE, digits = NA))
        self$`results` <- `results_object`
      }
      if (!is.null(this_object$`progressStatus`)) {
        self$`progressStatus` <- this_object$`progressStatus`
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
      if (!is.null(this_object$`timeCompleted`)) {
        self$`timeCompleted` <- this_object$`timeCompleted`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return JobResponse in JSON format
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
        if (!is.null(self$`parentFolderUrn`)) {
          sprintf(
          '"parentFolderUrn":
            "%s"
                    ',
          self$`parentFolderUrn`
          )
        },
        if (!is.null(self$`operationType`)) {
          sprintf(
          '"operationType":
            "%s"
                    ',
          self$`operationType`
          )
        },
        if (!is.null(self$`jobType`)) {
          sprintf(
          '"jobType":
            "%s"
                    ',
          self$`jobType`
          )
        },
        if (!is.null(self$`operationParameters`)) {
          sprintf(
          '"operationParameters":
          %s
          ',
          jsonlite::toJSON(self$`operationParameters`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`results`)) {
          sprintf(
          '"results":
          %s
          ',
          jsonlite::toJSON(self$`results`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`progressStatus`)) {
          sprintf(
          '"progressStatus":
            "%s"
                    ',
          self$`progressStatus`
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
        if (!is.null(self$`timeCompleted`)) {
          sprintf(
          '"timeCompleted":
            "%s"
                    ',
          self$`timeCompleted`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of JobResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of JobResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`parentFolderUrn` <- this_object$`parentFolderUrn`
      self$`operationType` <- this_object$`operationType`
      self$`jobType` <- this_object$`jobType`
      self$`operationParameters` <- JobOperationParameters$new()$fromJSON(jsonlite::toJSON(this_object$`operationParameters`, auto_unbox = TRUE, digits = NA))
      self$`results` <- JobOutput$new()$fromJSON(jsonlite::toJSON(this_object$`results`, auto_unbox = TRUE, digits = NA))
      self$`progressStatus` <- this_object$`progressStatus`
      self$`timeCreated` <- this_object$`timeCreated`
      self$`createdBy` <- this_object$`createdBy`
      self$`timeModified` <- this_object$`timeModified`
      self$`timeCompleted` <- this_object$`timeCompleted`
      self
    },
    #' Validate JSON input with respect to JobResponse
    #'
    #' @description
    #' Validate JSON input with respect to JobResponse and throw an exception if invalid
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
    #' @return String representation of JobResponse
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
# JobResponse$unlock()
#
## Below is an example to define the print function
# JobResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JobResponse$lock()

