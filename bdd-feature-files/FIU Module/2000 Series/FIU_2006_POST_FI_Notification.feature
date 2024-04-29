Feature: On calling POST FI notification request API, verify that on sending valid FI Notification with
  basic invalid values, the error response is received.

  Scenario: 2006_1 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA and send the FI notification with one required field set to null.
  Verify that the error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then Response code should be HTTP 400
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the error code displayed accoring to the fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2006_2 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA and send the FI notification with one required field set to empty
  string. Verify that the error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then Response code should be HTTP 400
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the error code displayed accoring to the fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2006_3 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA and send the FI notification with one required field set to 0.
  Verify that the error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then Response code should be HTTP 400
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the error code displayed accoring to the fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2006_4 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA and send the FI notification with one enum field set to non enum
  value by adding an extra character at the end of last enum and removing the last character at the end of
  first enum. Verify that the error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then Response code should be HTTP 400
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the error code displayed accoring to the fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2006_5 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA and send the FI notification with one array field set to empty array.
  Verify that the error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then Response code should be HTTP 400
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the error code displayed accoring to the fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2006_6 Ask the user to send valid FI request to Mock AA  for pre generated consent. Check that
  the FI request is received at Mock AA and send the FI notification with one object field set to empty object.
  Verify that the error response is displayed.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then Response code should be HTTP 400
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the error code displayed accoring to the fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
