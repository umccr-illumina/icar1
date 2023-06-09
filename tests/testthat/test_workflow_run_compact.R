# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test WorkflowRunCompact")

model_instance <- WorkflowRunCompact$new()

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

test_that("name", {
  # tests for the property `name` (character)
  # Name of the workflow run

  # uncomment below to test the property
  #expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("timeStarted", {
  # tests for the property `timeStarted` (character)
  # The time (in UTC) the workflow run started

  # uncomment below to test the property
  #expect_equal(model.instance$`timeStarted`, "EXPECTED_RESULT")
})

test_that("timeStopped", {
  # tests for the property `timeStopped` (character)
  # The time (in UTC) the Workflow Run stopped

  # uncomment below to test the property
  #expect_equal(model.instance$`timeStopped`, "EXPECTED_RESULT")
})

test_that("status", {
  # tests for the property `status` (character)
  # Workflow run status

  # uncomment below to test the property
  #expect_equal(model.instance$`status`, "EXPECTED_RESULT")
})

test_that("idempotencyKey", {
  # tests for the property `idempotencyKey` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`idempotencyKey`, "EXPECTED_RESULT")
})

test_that("statusSummary", {
  # tests for the property `statusSummary` (character)
  # Workflow run status summary

  # uncomment below to test the property
  #expect_equal(model.instance$`statusSummary`, "EXPECTED_RESULT")
})

test_that("error", {
  # tests for the property `error` (character)
  # Error for a failed workflow run

  # uncomment below to test the property
  #expect_equal(model.instance$`error`, "EXPECTED_RESULT")
})

test_that("errorCause", {
  # tests for the property `errorCause` (character)
  # Error cause for a failed workflow run

  # uncomment below to test the property
  #expect_equal(model.instance$`errorCause`, "EXPECTED_RESULT")
})

test_that("workflowVersion", {
  # tests for the property `workflowVersion` (WorkflowVersionCompact)

  # uncomment below to test the property
  #expect_equal(model.instance$`workflowVersion`, "EXPECTED_RESULT")
})

test_that("createdByClientId", {
  # tests for the property `createdByClientId` (character)
  # Client ID of the Origin Request

  # uncomment below to test the property
  #expect_equal(model.instance$`createdByClientId`, "EXPECTED_RESULT")
})

test_that("engineParameters", {
  # tests for the property `engineParameters` (character)
  # Workflow Engine Parameters

  # uncomment below to test the property
  #expect_equal(model.instance$`engineParameters`, "EXPECTED_RESULT")
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
