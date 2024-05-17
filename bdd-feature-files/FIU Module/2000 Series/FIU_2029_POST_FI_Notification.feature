Feature: On calling POST FI notification request API, verify that on sending FI Notification request with Alternate
  AA API key, the error response is received.

  Scenario: 2029_1 Set Post FI request response on Mock server. Ask the user to do POST FI request for Pre
  Generated Consent to mock AA. Check that the FI request is received at Mock AA. Set the FI Fetch response
  on Mock server. Send the FI notification with status as ACTIVE with Alternate AA API key.Verify that the
  error response HTTP 400 is received.
    Given Calling the POST "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest/SignatureDoesNotMatch
    And   Verify that the version is supported version
