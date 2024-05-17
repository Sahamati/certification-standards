Feature: On calling POST Account Link Notification API, verify that on sending account link notification request when
  the account is de-registered, the error response is received.

  Scenario: 3028_1 On calling POST Account Link Notification API,Set the account link response
  with AuthenticatorType as DIRECT in mock FIP, generate a random  customerId, ask the user to
  register the generated customerId and link a specific account from mock FIP & confirm,
  check if account link request is received for the same account and customerId in mock FIP,
  ask the user to deregister the customerId & confirm and finally send a valid account link
  notification request and Verify that the error response is received.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
