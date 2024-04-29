Feature: On calling POST FI notification request API, verify on providing invalid response to FI request, the
  error response is received for FI Notification request.

  Scenario: 2016_1 Set FI Request response on Mock server with one required field set to null. Ask the user to send valid FI request to Mock AA for
  pre generated consent. Check that the FI request is received at Mock AA and send the FI notification
  request with READY status. Verify that the error response 400 is displayed in Fi notification Request.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2016_2 Set FI Request response on Mock server with one required field set to empty string. Ask the
  user to send valid FI request to Mock AA for pre generated consent. Check that the FI request is received at
  Mock AA and send the FI notification request with READY status. Verify that the error response 400 is
  displayed in Fi notification Request.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2016_3 Set FI Request response on Mock server with one required field set to 0. Ask the
  user to send valid FI request to Mock AA for pre generated consent. Check that the FI request is received at
  Mock AA and send the FI notification request with READY status. Verify that the error response 400 is
  displayed in Fi notification Request.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2016_4 Set FI Request response on Mock server with one enum field set to non enum value by adding
  an extra character at the end of last enum and removing the last character at the end of first enum. Ask the
  user to send valid FI request to Mock AA for pre generated consent. Check that the FI request is received at
  Mock AA and send the FI notification request with READY status. Verify that the error response 400 is
  displayed in Fi notification Request.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2016_5 Set FI Request response on Mock server with one array field set to empty array. Ask the
  user to send valid FI request to Mock AA for pre generated consent. Check that the FI request is received at
  Mock AA and send the FI notification request with READY status. Verify that the error response 400 is
  displayed in Fi notification Request.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request


  Scenario: 2016_6 Set FI Request response on Mock server with one object field set to empty object. Ask the
  user to send valid FI request to Mock AA for pre generated consent. Check that the FI request is received at
  Mock AA and send the FI notification request with READY status. Verify that the error response 400 is
  displayed in Fi notification Request.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
