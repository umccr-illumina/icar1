# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test LaunchTaskRequest")

model_instance <- LaunchTaskRequest$new()

test_that("name", {
  # tests for the property `name` (character)
  # User-defined name for the task run, if not specified version string of task version will be used

  # uncomment below to test the property
  #expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("description", {
  # tests for the property `description` (character)
  # User-defined description for the task run, if not specified task version description will be used

  # uncomment below to test the property
  #expect_equal(model.instance$`description`, "EXPECTED_RESULT")
})

test_that("arguments", {
  # tests for the property `arguments` (map(character))
  # Arguments to launch a task run

  # uncomment below to test the property
  #expect_equal(model.instance$`arguments`, "EXPECTED_RESULT")
})

test_that("acl", {
  # tests for the property `acl` (array[character])
  # Access Control List

  # uncomment below to test the property
  #expect_equal(model.instance$`acl`, "EXPECTED_RESULT")
})
