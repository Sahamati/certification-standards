Feature: On calling POST Account Link Notification API, verify that on sending account
  link notification request with invalid timestamp, the error response is received.

  Scenario: 3023_1 On calling POST Account Link Notification API, set the account link response
  with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId and ask the user
  to register the generated customerId. Link a specific account from mock FIP and confirm.
  Check that the account link request is received for the same account and customerId in mock
  FIP. Finally send a valid account link notification request and set the 2 to 3 standard
  timestamp formats that are not followed in the specification and Verify that the error
  response is received.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3023_2 On calling POST Account Link Notification API, set the account link response
  with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId and ask the user
  to register the generated customerId. Link a specific account from mock FIP and confirm.
  Check that the account link request is received for the same account and customerId in mock
  FIP. Finally send a valid account link notification request and add an extra character at the
  end of proper timestamp and Verify that the error response is received.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3023_3 On calling POST Account Link Notification API, set the account link response
  with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId and ask the user
  to register the generated customerId. Link a specific account from mock FIP and confirm.
  Check that the account link request is received for the same account and customerId in mock
  FIP. Finally send a valid account link notification request and set the valid timestamp with
  +16 minutes from current time and Verify that the error response is received.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3023_4 On calling POST Account Link Notification API, set the account link response
  with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId and ask the user
  to register the generated customerId. Link a specific account from mock FIP and confirm.
  Check that the account link request is received for the same account and customerId in mock
  FIP. Finally send a valid account link notification request and set the valid timestamp with
  -16 minutes from current time and Verify that the error response is received.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
