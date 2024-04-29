Feature: On calling POST Account Link Notification API, Verify that on sending
  a valid account link notification request with alternate FIP key header ,
  error response is received.

  Scenario: 3038_1 On calling POST Account Link Notification API,Set the account
  link response with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId
  Ask the user to register the generated customerId and link a specific account
  from mock FIP & confirm. Check if account link request is received for the same
  account and customerId in mock FIP. Send a valid account link notification request
  with alternate FIP key header and Verify that the error response is received.
    Given Calling the "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is SignatureDoesNotMatch
    And   Verify that the version is supported version
