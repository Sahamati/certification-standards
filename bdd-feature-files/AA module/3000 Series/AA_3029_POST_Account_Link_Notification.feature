Feature: On calling POST Account Link Notification API, Verify that on sending
  account link notification request as alternate FIP with account details of regular FIP,
  error response is received.

  Scenario: 3029_1 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customerId and ask the user to register the generated customerId. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customerId
  in mock FIP. Ask the user to de-register the customerId and confirm and finally send a valid account link
  notification request. Use the valid account link notification request generated for regular FIP, and send the request
  as alternate FIP and expect response code 400.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3029_2 On calling POST Account Link Notification API, set the account link response with AuthenticatorType as DIRECT
  in mock FIP. Generate a random customerId and ask the user to register the generated customerId. Link a specific
  account from mock FIP and confirm. Check that the account link request is received for the same account and customerId
  in mock FIP. Ask the user to de-register the customerId and confirm and finally send a valid account link
  notification request. Use the valid account link notification request generated for regular FIP, and change the
  Notifier.id to alternate FIP id. Send the request as alternate FIP and expect response code 400.
    Given Calling "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
