Feature: On calling POST FI notification request API, verify that on sending valid FI Notification with invalid session id, the
  error response is received.

  Scenario: 2004_1 Ask the user to send the valid FI request to Mock AA for pre generated consent.
  Check that the FI request is received at Mock AA and send the FI notification request with
  random session Id. Verify that the error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2004_2 Ask the user to send the valid FI request to Mock AA for pre generated consent.
  Check that the FI request is received at Mock AA and send the FI notification request by removing
  the last character from the session id. Verify that the error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2004_3 Ask the user to send the valid FI request to Mock AA for pre generated consent.
  Check that the FI request is received at Mock AA and send the FI notification request by using the
  session id of another FI request. Verify that the error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
