Feature: On calling POST FI notification request API, verify that on sending valid FI Notification with invalid
  notifier type, the error response is received.

  Scenario: 2012_1 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA. Send the FI Notification with Notifier type as FIP. Verify that the
  error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2012_2 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA. Send the FI Notification with Notifier type as FIU. Verify that the
  error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
