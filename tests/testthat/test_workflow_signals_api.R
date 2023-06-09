# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test WorkflowSignalsApi")

api_instance <- WorkflowSignalsApi$new()

test_that("FailSignal", {
  # tests for FailSignal
  # base path: http://aps2.platform.illumina.com
  # Fail a workflow signal
  # Responds to a pending workflow signal with a failure result.
  # @param signal_id character ID of the workflow signal
  # @param body FailWorkflowSignalRequest  (optional)
  # @return [WorkflowSignal]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetSignal", {
  # tests for GetSignal
  # base path: http://aps2.platform.illumina.com
  # Get the details of a workflow signal
  # Gets the details of a workflow signal with a given ID.
  # @param signal_id character ID of the workflow signal
  # @return [WorkflowSignal]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ListSignals", {
  # tests for ListSignals
  # base path: http://aps2.platform.illumina.com
  # Get a list of workflow signals
  # Gets a list of workflow signals.
  # @param tenant_id character ID of the tenant (optional)
  # @param include array[character] Comma-separated list of properties to include in the response (optional)
  # @param page_size integer Number of items to include in a page. Value must be an integer between 1 and 1000. Only one of pageSize or pageToken can be specified. (optional)
  # @param page_token character Page offset descriptor. Valid page tokens are included in the response. Only one of pageSize or pageToken can be specified. (optional)
  # @param sort character Specifies the order to include list items as \"_{fieldName}_ [asc|desc]\". The second field is optional and specifies the sort direction (\"asc\" for ascending or \"desc\" for descending). (optional)
  # @return [WorkflowSignalList]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("SucceedSignal", {
  # tests for SucceedSignal
  # base path: http://aps2.platform.illumina.com
  # Succeed a workflow signal
  # Responds to a pending workflow signal with a successful result.
  # @param signal_id character ID of the workflow signal
  # @param body SucceedWorkflowSignalRequest  (optional)
  # @return [WorkflowSignal]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})
