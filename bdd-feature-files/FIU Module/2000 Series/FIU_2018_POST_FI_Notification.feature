Feature: On calling POST FI notification request API, verify that on responding with + or - 15 min variation in
  timestamp for FI request, the error response is received for FI notification request.

  Scenario: 2018_1 Set Post FI request response on Mock server for Pre Generated Consent details with future
  timestamp(current time + 15 minutes). Ask the user to do POST FI request to mock AA. Check that the FI
  request is received at Mock AA. Send the valid FI notification request. Verify that the error response 400 is
  displayed in FI notification Request.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2018_2 Set Post FI request response on Mock server for Pre Generated Consent details with expired
  timestamp(current time - 15 minutes). Ask the user to do POST FI request to mock AA. Check that the FI
  request is received at Mock AA. Send the valid FI notification request. Verify that the error response 400 is
  displayed in FI notification Request.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
