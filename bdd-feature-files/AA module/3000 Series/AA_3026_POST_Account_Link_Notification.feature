Feature: On calling POST Account Link Notification API, verify that on sending account link notification request with
  invalid accRefNumber, the error response is received.

  Scenario: 3026_1 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customerId and ask the user to register the generated customerId. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customerId
  in mock FIP. Finally send a valid account link notification request and use the valid accRefNumber and add an extra
  character at the end and Verify that the error response is received.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3026_2 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customerId and ask the user to register the generated customerId. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customerId
  in mock FIP. Finally send a valid account link notification request and use the valid accRefNumber and remove the
  last character and Verify that the error response is received.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3026_3 On calling POST Account Link Notification API, set the account link response with AuthenticatorType
  as DIRECT in mock FIP. Generate a random customerId and ask the user to register the generated customerId. Link a
  specific account from mock FIP and confirm. Check that the account link request is received for the same account and
  customerId in mock FIP. Finally send a valid account link notification request and generate a random string of same
  length and try as accRefNumber and Verify that the error response is received.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
