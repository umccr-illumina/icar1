# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test WorkflowSignalCompact")

model_instance <- WorkflowSignalCompact$new()

test_that("id", {
  # tests for the property `id` (character)
  # Unique resource ID

  # uncomment below to test the property
  #expect_equal(model.instance$`id`, "EXPECTED_RESULT")
})

test_that("urn", {
  # tests for the property `urn` (character)
  # URN of the resource

  # uncomment below to test the property
  #expect_equal(model.instance$`urn`, "EXPECTED_RESULT")
})

test_that("href", {
  # tests for the property `href` (character)
  # HREF to the resource

  # uncomment below to test the property
  #expect_equal(model.instance$`href`, "EXPECTED_RESULT")
})

test_that("sendHeartbeatHref", {
  # tests for the property `sendHeartbeatHref` (character)
  # HREF to send a heartbeat to a workflow signal

  # uncomment below to test the property
  #expect_equal(model.instance$`sendHeartbeatHref`, "EXPECTED_RESULT")
})

test_that("sendSuccessResponseHref", {
  # tests for the property `sendSuccessResponseHref` (character)
  # HREF to succeed a workflow signal

  # uncomment below to test the property
  #expect_equal(model.instance$`sendSuccessResponseHref`, "EXPECTED_RESULT")
})

test_that("sendFailureResponseHref", {
  # tests for the property `sendFailureResponseHref` (character)
  # HREF to fail a workflow signal

  # uncomment below to test the property
  #expect_equal(model.instance$`sendFailureResponseHref`, "EXPECTED_RESULT")
})

test_that("name", {
  # tests for the property `name` (character)
  # Unique name of the signal

  # uncomment below to test the property
  #expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("status", {
  # tests for the property `status` (character)
  # Current status of the signal

  # uncomment below to test the property
  #expect_equal(model.instance$`status`, "EXPECTED_RESULT")
})

test_that("type", {
  # tests for the property `type` (character)
  # User-defined type associated with the signal

  # uncomment below to test the property
  #expect_equal(model.instance$`type`, "EXPECTED_RESULT")
})

test_that("description", {
  # tests for the property `description` (character)
  # Description of the signal

  # uncomment below to test the property
  #expect_equal(model.instance$`description`, "EXPECTED_RESULT")
})

test_that("inputs", {
  # tests for the property `inputs` (object)
  # Inputs defined by the originating WaitForSignal state, in JSON.

  # uncomment below to test the property
  #expect_equal(model.instance$`inputs`, "EXPECTED_RESULT")
})

test_that("workflowRun", {
  # tests for the property `workflowRun` (WorkflowRunCompact)

  # uncomment below to test the property
  #expect_equal(model.instance$`workflowRun`, "EXPECTED_RESULT")
})

test_that("timeoutSeconds", {
  # tests for the property `timeoutSeconds` (integer)
  # Signal timeout in seconds. The Signal will timeout if a heartbeat, succeed or fail is not received in this time interval.

  # uncomment below to test the property
  #expect_equal(model.instance$`timeoutSeconds`, "EXPECTED_RESULT")
})

test_that("result", {
  # tests for the property `result` (object)
  # The result of a successful signalling action in JSON.

  # uncomment below to test the property
  #expect_equal(model.instance$`result`, "EXPECTED_RESULT")
})

test_that("error", {
  # tests for the property `error` (character)
  # The error of a failed signal.

  # uncomment below to test the property
  #expect_equal(model.instance$`error`, "EXPECTED_RESULT")
})

test_that("errorCause", {
  # tests for the property `errorCause` (character)
  # The error cause of a failed signal.

  # uncomment below to test the property
  #expect_equal(model.instance$`errorCause`, "EXPECTED_RESULT")
})

test_that("createdByClientId", {
  # tests for the property `createdByClientId` (character)
  # Client ID of the Origin Request

  # uncomment below to test the property
  #expect_equal(model.instance$`createdByClientId`, "EXPECTED_RESULT")
})

test_that("timeCreated", {
  # tests for the property `timeCreated` (character)
  # Time (in UTC) the resource was created

  # uncomment below to test the property
  #expect_equal(model.instance$`timeCreated`, "EXPECTED_RESULT")
})

test_that("timeModified", {
  # tests for the property `timeModified` (character)
  # Time (in UTC) the resource was modified

  # uncomment below to test the property
  #expect_equal(model.instance$`timeModified`, "EXPECTED_RESULT")
})

test_that("createdBy", {
  # tests for the property `createdBy` (character)
  # User that created the resource

  # uncomment below to test the property
  #expect_equal(model.instance$`createdBy`, "EXPECTED_RESULT")
})

test_that("modifiedBy", {
  # tests for the property `modifiedBy` (character)
  # User that modified the resource

  # uncomment below to test the property
  #expect_equal(model.instance$`modifiedBy`, "EXPECTED_RESULT")
})

test_that("tenantId", {
  # tests for the property `tenantId` (character)
  # Tenant ID the resource belongs to

  # uncomment below to test the property
  #expect_equal(model.instance$`tenantId`, "EXPECTED_RESULT")
})

test_that("acl", {
  # tests for the property `acl` (array[character])
  # Access control list of the resource

  # uncomment below to test the property
  #expect_equal(model.instance$`acl`, "EXPECTED_RESULT")
})
