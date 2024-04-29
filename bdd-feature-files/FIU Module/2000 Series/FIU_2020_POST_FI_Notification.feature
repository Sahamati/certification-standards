Feature: On calling POST FI notification request API, verify that on responding with different consentId for FI
  request, the error response is received for FI notification request.

  Scenario: 2020_1 Set the Post Consent response and consent handle response with ConsentStatus as PENDING
  on mock server. Ask the user to raise consent request for mock AA. Check that the Post consent request
  is received at mock server. Set the consent get response on mock server. Send the Consent notification
  request. Check that the consent get request is received at mock server. Set the Post FI request response
  on Mock server with consentId of another consent request. Ask user to do POST FI request to mock AA.
  Check that the Fi request is received at Mock AA. Send the valid Fi notification request. Verify that
  the error response 400 is displayed in FI notification request.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidSessionId
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
