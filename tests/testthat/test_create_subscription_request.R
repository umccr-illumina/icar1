# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test CreateSubscriptionRequest")

model_instance <- CreateSubscriptionRequest$new()

test_that("type", {
  # tests for the property `type` (character)
  # Event type which will be subscribed to

  # uncomment below to test the property
  #expect_equal(model.instance$`type`, "EXPECTED_RESULT")
})

test_that("actions", {
  # tests for the property `actions` (array[character])
  # Actions which will be subscribed to for the event type

  # uncomment below to test the property
  #expect_equal(model.instance$`actions`, "EXPECTED_RESULT")
})

test_that("name", {
  # tests for the property `name` (character)
  # Name of the subscription

  # uncomment below to test the property
  #expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("description", {
  # tests for the property `description` (character)
  # Optional description for the subscription

  # uncomment below to test the property
  #expect_equal(model.instance$`description`, "EXPECTED_RESULT")
})

test_that("filterExpression", {
  # tests for the property `filterExpression` (character)
  # JSON-structured filter expression for events matching the subscription

  # uncomment below to test the property
  #expect_equal(model.instance$`filterExpression`, "EXPECTED_RESULT")
})

test_that("deliveryTarget", {
  # tests for the property `deliveryTarget` (DeliveryTarget)

  # uncomment below to test the property
  #expect_equal(model.instance$`deliveryTarget`, "EXPECTED_RESULT")
})
