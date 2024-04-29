Feature: On calling POST Consent Notification API, verify that on responding with ConsentStatus as FAILED for
  consent handle request, error response is received for consent notification request.

  Scenario: 1028_1 Set the post Consent response on mock server. Set the consent handle with ConsentStatus as
  FAILED in mock server. Ask the user to raise consent request for mock AA. Check that the Post consent and
  consentHandle request is received at mock server. Send consent notification request.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidConsentId or InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
