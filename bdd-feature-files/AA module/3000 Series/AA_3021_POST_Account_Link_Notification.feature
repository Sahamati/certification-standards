Feature: On calling POST Account Link Notification API, verify that on sending account
  link notification request with basic invalid values for each required field, the error
  response is received.

  Scenario: 3021_1 OOn calling POST Account Link Notification API, set the account link response with AuthenticatorType
  as DIRECT in mock FIP. Generate a random customerId and ask the user to register the generated customerId. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customerId
  in mock FIP. Finally send a valid account link notification request with each time one required field set to null.
    Given Calling the "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    Then  Verify that the reponse code 400 is received
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3021_2 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customerId and ask the user to register the generated customerId. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customerId
  in mock FIP. Finally send a valid account link notification request with each time one required field set to
  empty string.
    Given Calling the "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    Then  Verify that the reponse code 400 is received
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3021_3 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customerId and ask the user to register the generated customerId. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and  customerId
  in mock FIP. Finally send a valid account link notification request with each time one enum field set to non enum
  value. Add an extra character at the end of last enum and remove the last character at the end of first enum.
    Given Calling the "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    Then  Verify that the reponse code 400 is received
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
