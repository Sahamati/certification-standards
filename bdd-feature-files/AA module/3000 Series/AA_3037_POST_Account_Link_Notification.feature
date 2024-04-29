Feature: On calling POST Account Link Notification API, Verify that on sending a valid account link notification request
  with invalid FIP key, error response is received.

  Scenario: 3037_1 On calling POST Account Link Notification API,Set the account link
  response with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId.
  Ask the user to register the generated customerId and link a specific account from
  mock FIP & confirm. Check if account link request is received for the same account
  and customerId in mock FIP. Send a valid account link notification request with
  following variations on the FIP key header, Send request as regular FIU without
  the FIP key header and Verify that the error response is received.
    Given Calling the "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3037_2 On calling POST Account Link Notification API,Set the account link
  response with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId.
  Ask the user to register the generated customerId and link a specific account from
  mock FIP & confirm. Check if account link request is received for the same account
  and customerId in mock FIP. Send a valid account link notification request with
  following variations on the FIP key header, Send request as regular FIU with FIP
  key as empty string and Verify that the error response is received.
    Given Calling the "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3037_3 On calling POST Account Link Notification API,Set the account link
  response with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId.
  Ask the user to register the generated customerId and link a specific account from
  mock FIP & confirm. Check if account link request is received for the same account
  and customerId in mock FIP. Send a valid account link notification request with
  following variations on the FIP key header,Send request as regular FIU with FIP key as 0
  and Verify that the error response is received.
    Given Calling the "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3037_4 On calling POST Account Link Notification API,Set the account link
  response with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId.
  Ask the user to register the generated customerId and link a specific account from
  mock FIP & confirm. Check if account link request is received for the same account
  and customerId in mock FIP. Send a valid account link notification request with
  following variations on the FIP key header and Verify that the error response is received.
    Given Calling the "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3037_5 On calling POST Account Link Notification API,Set the account link
  response with AuthenticatorType as DIRECT in mock FIP. Generate a random customerId.
  Ask the user to register the generated customerId and link a specific account from
  mock FIP & confirm. Check if account link request is received for the same account
  and customerId in mock FIP. Send a valid account link notification request with
  following variations on the FIP key header, Send the request as regular FIP with one
  char add for that component and Verify that the error response is received.
    Given Calling the "POST /Account/link/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401
